.class public final Lyads/ud;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public final synthetic b:Lyads/yd;


# direct methods
.method public constructor <init>(Lyads/yd;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/ud;->b:Lyads/yd;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 0

    new-instance p1, Lyads/ud;

    iget-object p0, p0, Lyads/ud;->b:Lyads/yd;

    invoke-direct {p1, p0, p2}, Lyads/ud;-><init>(Lyads/yd;Le02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    new-instance p1, Lyads/ud;

    iget-object p0, p0, Lyads/ud;->b:Lyads/yd;

    invoke-direct {p1, p0, p2}, Lyads/ud;-><init>(Lyads/yd;Le02;)V

    sget-object p0, Lj59;->a:Lj59;

    invoke-virtual {p1, p0}, Lyads/ud;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p0, p0, Lyads/ud;->b:Lyads/yd;

    iget-object p0, p0, Lyads/yd;->b:Lyads/n73;

    iget-object p1, p0, Lyads/n73;->a:Lyads/q73;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-object v1, v0

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    :try_start_1
    const-string v3, "getAdvertisingIdInfo"

    iget-object p1, p1, Lyads/q73;->a:Landroid/content/Context;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, v3, p1}, Lyads/g55;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "getId"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1, v1, v3}, Lyads/f55;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "isLimitAdTrackingEnabled"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p1, v3, v4}, Lyads/f55;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    if-eqz v1, :cond_0

    new-instance v3, Lyads/id;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {v3, v1, p1}, Lyads/id;-><init>(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    :cond_0
    move-object v3, v0

    :goto_1
    if-nez v3, :cond_1

    iget-object p0, p0, Lyads/n73;->b:Lyads/s73;

    iget-object p1, p0, Lyads/s73;->c:Lyads/u73;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lyads/u73;->a()Landroid/content/Intent;

    move-result-object p1

    iget-object v1, p0, Lyads/s73;->a:Lyads/fc5;

    iget-object v3, p0, Lyads/s73;->d:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_2
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-object v1, v0

    :goto_2
    if-eqz v1, :cond_2

    :try_start_3
    new-instance v1, Lyads/p73;

    invoke-direct {v1}, Lyads/p73;-><init>()V

    iget-object v2, p0, Lyads/s73;->d:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lyads/s73;->b:Lyads/t73;

    invoke-virtual {p1, v1}, Lyads/t73;->a(Lyads/p73;)Lyads/id;

    move-result-object p1

    iget-object p0, p0, Lyads/s73;->d:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object v0, p1

    goto :goto_3

    :cond_1
    move-object v0, v3

    :catchall_3
    :cond_2
    :goto_3
    return-object v0
.end method
