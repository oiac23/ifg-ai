import sys
from awsglue.transforms import *
from awsglue.utils import getResolvedOptions
from pyspark.context import SparkContext
from awsglue.context import GlueContext
from awsglue.job import Job
import gs_concat

args = getResolvedOptions(sys.argv, ["JOB_NAME"])
sc = SparkContext()
glueContext = GlueContext(sc)
spark = glueContext.spark_session
job = Job(glueContext)
job.init(args["JOB_NAME"], args)

# Script generated for node Amazon S3
AmazonS3_node1697854137900 = glueContext.create_dynamic_frame.from_options(
    format_options={
        "quoteChar": '"',
        "withHeader": True,
        "separator": ",",
        "optimizePerformance": False,
    },
    connection_type="s3",
    format="csv",
    connection_options={"paths": ["s3://projetofinal-ifg/source/"], "recurse": True},
    transformation_ctx="AmazonS3_node1697854137900",
)

# Script generated for node Concatenate Columns
ConcatenateColumns_node1697854181203 = AmazonS3_node1697854137900.gs_concat(
    colName="Endereco:",
    colList=["Logradouro/Nome:", "Bairro/Distrito:", "Localidade/UF:"],
    spacer=", ",
)

# Script generated for node Amazon S3
AmazonS3_node1697854295082 = glueContext.write_dynamic_frame.from_options(
    frame=ConcatenateColumns_node1697854181203,
    connection_type="s3",
    format="csv",
    connection_options={
        "path": "s3://projetofinal-ifg/processed/",
        "partitionKeys": [],
    },
    transformation_ctx="AmazonS3_node1697854295082",
)

job.commit()
