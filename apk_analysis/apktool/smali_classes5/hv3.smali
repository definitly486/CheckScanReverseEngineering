.class public final Lhv3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lzu3;

.field public static final b:Lzu3;

.field public static final c:Lzu3;

.field public static final d:Lzu3;

.field public static final e:Lzu3;

.field public static final f:Lzu3;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lzu3;

    sget-object v1, Lzu3;->g:Lgx0;

    const-string v2, "https"

    invoke-direct {v0, v1, v2}, Lzu3;-><init>(Lgx0;Ljava/lang/String;)V

    sput-object v0, Lhv3;->a:Lzu3;

    new-instance v0, Lzu3;

    const-string v2, "http"

    invoke-direct {v0, v1, v2}, Lzu3;-><init>(Lgx0;Ljava/lang/String;)V

    sput-object v0, Lhv3;->b:Lzu3;

    new-instance v0, Lzu3;

    sget-object v1, Lzu3;->e:Lgx0;

    const-string v2, "POST"

    invoke-direct {v0, v1, v2}, Lzu3;-><init>(Lgx0;Ljava/lang/String;)V

    sput-object v0, Lhv3;->c:Lzu3;

    new-instance v0, Lzu3;

    const-string v2, "GET"

    invoke-direct {v0, v1, v2}, Lzu3;-><init>(Lgx0;Ljava/lang/String;)V

    sput-object v0, Lhv3;->d:Lzu3;

    new-instance v0, Lzu3;

    sget-object v1, Lvs3;->i:Lla5$b;

    iget-object v1, v1, Lla5$d;->a:Ljava/lang/String;

    const-string v2, "application/grpc"

    invoke-direct {v0, v1, v2}, Lzu3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lhv3;->e:Lzu3;

    new-instance v0, Lzu3;

    const-string v1, "te"

    const-string v2, "trailers"

    invoke-direct {v0, v1, v2}, Lzu3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lhv3;->f:Lzu3;

    return-void
.end method
