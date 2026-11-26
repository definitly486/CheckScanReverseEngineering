.class public abstract Lio/grpc/i;
.super Lio/grpc/h$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/i$a;
    }
.end annotation


# static fields
.field public static final a:Lio/grpc/l$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/grpc/i$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lio/grpc/l$b;

    invoke-direct {v1, v0}, Lio/grpc/l$b;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lio/grpc/i;->a:Lio/grpc/l$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract b()Ljava/lang/String;
.end method

.method public c(Ljava/util/Map;)Lio/grpc/l$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lio/grpc/l$b;"
        }
    .end annotation

    sget-object p0, Lio/grpc/i;->a:Lio/grpc/l$b;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lod5;->b(Ljava/lang/Object;)Lod5$a;

    move-result-object v0

    const-string v1, "policy"

    invoke-virtual {p0}, Lio/grpc/i;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Lod5$a;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "priority"

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p0}, Lod5$a;->a(ILjava/lang/String;)V

    const-string p0, "available"

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lod5$a;->c(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lod5$a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
