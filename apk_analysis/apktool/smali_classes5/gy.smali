.class public final Lgy;
.super Lio/grpc/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgy$a;
    }
.end annotation


# instance fields
.field public final b:Lio/grpc/j;

.field public final c:Lio/grpc/i;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lio/grpc/j;->a()Lio/grpc/j;

    move-result-object v0

    invoke-direct {p0}, Lio/grpc/i;-><init>()V

    const-string v1, "registry"

    invoke-static {v0, v1}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lgy;->b:Lio/grpc/j;

    const-string v1, "defaultPolicy"

    invoke-static {p1, v1}, Lo8;->l(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lio/grpc/j;->b(Ljava/lang/String;)Lio/grpc/i;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lh88;->l:Lh88;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not find policy \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'. Make sure its implementation is either registered to LoadBalancerRegistry or included in META-INF/services/io.grpc.LoadBalancerProvider from your jar files."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object p1

    new-instance v0, Lic3;

    sget-object v1, Lcx1;->TRANSIENT_FAILURE:Lcx1;

    new-instance v2, Lio/grpc/h$d;

    invoke-static {p1}, Lio/grpc/h$g;->a(Lh88;)Lio/grpc/h$g;

    move-result-object v3

    invoke-direct {v2, v3}, Lio/grpc/h$d;-><init>(Lio/grpc/h$g;)V

    invoke-direct {v0, v1, v2, p1}, Lic3;-><init>(Lcx1;Lio/grpc/h$d;Lh88;)V

    :cond_0
    iput-object v0, p0, Lgy;->c:Lio/grpc/i;

    return-void
.end method


# virtual methods
.method public final a(Lio/grpc/h$e;)Lio/grpc/h;
    .locals 1

    new-instance v0, Lgy$a;

    invoke-direct {v0, p0, p1}, Lgy$a;-><init>(Lgy;Lio/grpc/h$e;)V

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    const-string p0, "auto_configured_internal"

    return-object p0
.end method

.method public final c(Ljava/util/Map;)Lio/grpc/l$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lio/grpc/l$b;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p1}, Lsq7;->b(Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lsq7;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p0, p0, Lgy;->b:Lio/grpc/j;

    invoke-static {p1, p0}, Lsq7;->c(Ljava/util/List;Lio/grpc/j;)Lio/grpc/l$b;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lh88;->g:Lh88;

    const-string v0, "can\'t parse load balancer configuration"

    invoke-virtual {p1, v0}, Lh88;->h(Ljava/lang/String;)Lh88;

    move-result-object p1

    invoke-virtual {p1, p0}, Lh88;->g(Ljava/lang/Throwable;)Lh88;

    move-result-object p0

    new-instance p1, Lio/grpc/l$b;

    invoke-direct {p1, p0}, Lio/grpc/l$b;-><init>(Lh88;)V

    return-object p1

    :cond_1
    return-object v0
.end method
