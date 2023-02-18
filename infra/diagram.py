from diagrams import Cluster, Diagram
from diagrams.aws.compute import EC2, ECS
from diagrams.aws.database import RDS
from diagrams.aws.network import ELB, Route53
from diagrams.aws.security import Cognito
from diagrams.aws.storage import S3

with Diagram("Web Application Infrastructure", show=False):

    # DNS
    dns = Route53("DNS")

    # Load Balancer
    lb = ELB("Load Balancer")

    with Cluster("Web Servers"):
        # EC2 Instance
        ec2 = EC2("EC2 Instance")
        # ECS
        ecs = ECS("ECS Task")
        ecs - ec2

    # Amazon RDS
    rds = RDS("Amazon RDS")

    # Amazon S3
    s3 = S3("Amazon S3")

    # Amazon Cognito
    cognito = Cognito("Amazon Cognito")

    dns >> lb >> ecs >> rds
    ecs >> s3
    ecs >> cognito

