.class public final Lio/grpc/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lio/grpc/a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/a$b<",
            "Ljava/net/SocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lio/grpc/a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/a$b<",
            "Ljava/net/SocketAddress;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lio/grpc/a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/a$b<",
            "Ljavax/net/ssl/SSLSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/grpc/a$b;

    const-string v1, "io.grpc.Grpc.TRANSPORT_ATTR_REMOTE_ADDR"

    invoke-direct {v0, v1}, Lio/grpc/a$b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/grpc/f;->a:Lio/grpc/a$b;

    new-instance v0, Lio/grpc/a$b;

    const-string v1, "io.grpc.Grpc.TRANSPORT_ATTR_LOCAL_ADDR"

    invoke-direct {v0, v1}, Lio/grpc/a$b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/grpc/f;->b:Lio/grpc/a$b;

    new-instance v0, Lio/grpc/a$b;

    const-string v1, "io.grpc.Grpc.TRANSPORT_ATTR_SSL_SESSION"

    invoke-direct {v0, v1}, Lio/grpc/a$b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lio/grpc/f;->c:Lio/grpc/a$b;

    return-void
.end method
