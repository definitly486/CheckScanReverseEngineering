.class public final Lyads/vd;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Lyads/yd;


# direct methods
.method public constructor <init>(Lyads/yd;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/vd;->b:Lyads/yd;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 0

    new-instance p1, Lyads/vd;

    iget-object p0, p0, Lyads/vd;->b:Lyads/yd;

    invoke-direct {p1, p0, p2}, Lyads/vd;-><init>(Lyads/yd;Le02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    new-instance p1, Lyads/vd;

    iget-object p0, p0, Lyads/vd;->b:Lyads/yd;

    invoke-direct {p1, p0, p2}, Lyads/vd;-><init>(Lyads/yd;Le02;)V

    sget-object p0, Lj59;->a:Lj59;

    invoke-virtual {p1, p0}, Lyads/vd;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p0, p0, Lyads/vd;->b:Lyads/yd;

    iget-object p0, p0, Lyads/yd;->c:Lyads/p93;

    iget-object p1, p0, Lyads/p93;->c:Lyads/s93;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lyads/s93;->a()Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lyads/p93;->a:Lyads/fc5;

    iget-object v1, p0, Lyads/p93;->d:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    :try_start_1
    new-instance v1, Lcom/monetization/ads/core/identifiers/ad/huawei/a;

    invoke-direct {v1}, Lcom/monetization/ads/core/identifiers/ad/huawei/a;-><init>()V

    iget-object v2, p0, Lyads/p93;->d:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lyads/p93;->b:Lyads/r93;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object p1, v1, Lcom/monetization/ads/core/identifiers/ad/huawei/a;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x5

    invoke-virtual {p1, v3, v4, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/monetization/ads/core/identifiers/ad/huawei/OpenDeviceIdentifierService;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/monetization/ads/core/identifiers/ad/huawei/OpenDeviceIdentifierService;->getOaid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/monetization/ads/core/identifiers/ad/huawei/OpenDeviceIdentifierService;->getOaidTrackLimited()Z

    move-result p1

    if-eqz v2, :cond_0

    new-instance v3, Lyads/id;

    invoke-direct {v3, v2, p1}, Lyads/id;-><init>(Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catch_0
    :cond_0
    move-object v3, v0

    :goto_1
    :try_start_3
    iget-object p0, p0, Lyads/p93;->d:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v0, v3

    :catchall_1
    :cond_1
    return-object v0
.end method
