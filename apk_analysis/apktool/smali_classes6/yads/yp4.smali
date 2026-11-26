.class public final synthetic Lyads/yp4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/d96;
.implements Lmm3;


# instance fields
.field public final synthetic a:Lyads/zp4;


# direct methods
.method public constructor <init>(Lyads/zp4;)V
    .locals 0

    iput-object p1, p0, Lyads/yp4;->a:Lyads/zp4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object p0, p0, Lyads/yp4;->a:Lyads/zp4;

    iget-object v0, p0, Lyads/zp4;->a:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lyads/zp4;->f:Z

    sget-object v1, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    invoke-virtual {p0}, Lyads/zp4;->c()V

    iget-object p0, p0, Lyads/zp4;->d:Lyads/tp4;

    invoke-virtual {p0}, Lyads/tp4;->b()V

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lyads/d96;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lmm3;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lmm3;->getFunctionDelegate()Lcm3;

    move-result-object p0

    check-cast p1, Lmm3;

    invoke-interface {p1}, Lmm3;->getFunctionDelegate()Lcm3;

    move-result-object p1

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getFunctionDelegate()Lcm3;
    .locals 7

    new-instance v0, Lqm3;

    iget-object v2, p0, Lyads/yp4;->a:Lyads/zp4;

    const-string v5, "onOmSdkJsControllerLoaded()V"

    const/4 v6, 0x0

    const/4 v1, 0x0

    const-class v3, Lyads/zp4;

    const-string v4, "onOmSdkJsControllerLoaded"

    invoke-direct/range {v0 .. v6}, Lqm3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method public final hashCode()I
    .locals 0

    invoke-interface {p0}, Lmm3;->getFunctionDelegate()Lcm3;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method
