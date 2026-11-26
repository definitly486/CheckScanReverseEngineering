.class public final Lus3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lio/grpc/a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/a$b<",
            "Lfl7;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lio/grpc/a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/a$b<",
            "Lio/grpc/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/grpc/a$b;

    const-string v1, "io.grpc.internal.GrpcAttributes.securityLevel"

    invoke-direct {v0, v1}, Lio/grpc/a$b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lus3;->a:Lio/grpc/a$b;

    new-instance v0, Lio/grpc/a$b;

    const-string v1, "io.grpc.internal.GrpcAttributes.clientEagAttrs"

    invoke-direct {v0, v1}, Lio/grpc/a$b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lus3;->b:Lio/grpc/a$b;

    return-void
.end method
