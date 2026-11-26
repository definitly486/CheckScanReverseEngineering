.class public final Lyads/vg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/lg;

.field public final b:Lyads/ej0;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lyads/lg;

    invoke-direct {v0, p1}, Lyads/lg;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/vg;->a:Lyads/lg;

    new-instance v0, Lyads/ej0;

    invoke-direct {v0, p1}, Lyads/ej0;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lyads/vg;->b:Lyads/ej0;

    return-void
.end method

.method public static final a(Lyads/lm6;Landroid/content/Context;Lyads/vg;Ljava/lang/String;)Lyads/gj0;
    .locals 0

    .line 105
    iget-object p0, p0, Lyads/lm6;->a:Lyads/ie;

    invoke-virtual {p0, p1}, Lyads/ie;->a(Landroid/content/Context;)V

    .line 106
    iget-object p0, p2, Lyads/vg;->a:Lyads/lg;

    invoke-virtual {p0}, Lyads/lg;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 107
    :try_start_0
    iget-object p0, p2, Lyads/vg;->b:Lyads/ej0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    invoke-static {p3}, Lio/appmetrica/analytics/ReporterConfig;->newConfigBuilder(Ljava/lang/String;)Lio/appmetrica/analytics/ReporterConfig$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lio/appmetrica/analytics/ReporterConfig$Builder;->build()Lio/appmetrica/analytics/ReporterConfig;

    move-result-object p1

    .line 109
    iget-object p0, p0, Lyads/ej0;->a:Landroid/content/Context;

    invoke-static {p0, p1}, Lio/appmetrica/analytics/AppMetrica;->activateReporter(Landroid/content/Context;Lio/appmetrica/analytics/ReporterConfig;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :catchall_0
    :cond_0
    iget-object p0, p2, Lyads/vg;->b:Lyads/ej0;

    .line 111
    iget-object p0, p0, Lyads/ej0;->a:Landroid/content/Context;

    invoke-static {p0, p3}, Lio/appmetrica/analytics/AppMetrica;->getReporter(Landroid/content/Context;Ljava/lang/String;)Lio/appmetrica/analytics/IReporter;

    move-result-object p0

    .line 112
    new-instance p1, Lyads/gj0;

    invoke-direct {p1, p0}, Lyads/gj0;-><init>(Lio/appmetrica/analytics/IReporter;)V

    return-object p1
.end method


# virtual methods
.method public final a(Lf02;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Lyads/sg;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lyads/sg;

    iget v1, v0, Lyads/sg;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lyads/sg;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lyads/sg;

    invoke-direct {v0, p0, p1}, Lyads/sg;-><init>(Lyads/vg;Lf02;)V

    :goto_0
    iget-object p1, v0, Lyads/sg;->b:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lyads/sg;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iput v3, v0, Lyads/sg;->d:I

    new-instance p1, Lc31;

    invoke-static {v0}, Lzya;->b(Le02;)Le02;

    move-result-object v0

    invoke-direct {p1, v3, v0}, Lc31;-><init>(ILe02;)V

    invoke-virtual {p1}, Lc31;->u()V

    new-instance v0, Lyads/tg;

    invoke-direct {v0, p1}, Lyads/tg;-><init>(Lc31;)V

    iget-object p0, p0, Lyads/vg;->b:Lyads/ej0;

    sget-object v2, Lyads/yg;->a:Ljava/util/List;

    new-instance v3, Lyads/xg;

    invoke-direct {v3, v0}, Lyads/xg;-><init>(Lyads/tg;)V

    iget-object p0, p0, Lyads/ej0;->a:Landroid/content/Context;

    new-instance v0, Lyads/dj0;

    invoke-direct {v0, v2, v3}, Lyads/dj0;-><init>(Ljava/util/List;Lyads/xg;)V

    invoke-static {p0, v0, v2}, Lio/appmetrica/analytics/AppMetrica;->requestStartupParams(Landroid/content/Context;Lio/appmetrica/analytics/StartupParamsCallback;Ljava/util/List;)V

    invoke-virtual {p1}, Lc31;->s()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Lk57;

    iget-object p0, p1, Lk57;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Lyads/lm6;)Lyads/wg;
    .locals 1

    .line 99
    iget-object v0, p0, Lyads/vg;->a:Lyads/lg;

    invoke-virtual {v0}, Lyads/lg;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    :try_start_0
    new-instance v0, Lkfa;

    invoke-direct {v0, p3, p1, p0, p2}, Lkfa;-><init>(Lyads/lm6;Landroid/content/Context;Lyads/vg;Ljava/lang/String;)V

    .line 101
    new-instance p1, Lfh8;

    invoke-direct {p1, v0}, Lfh8;-><init>(Lll3;)V

    .line 102
    new-instance p2, Lyads/wg;

    iget-object p0, p0, Lyads/vg;->a:Lyads/lg;

    invoke-direct {p2, p1, p0}, Lyads/wg;-><init>(Lcl4;Lyads/lg;)V

    return-object p2

    .line 103
    :cond_0
    iget-object p0, p0, Lyads/vg;->b:Lyads/ej0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    .line 104
    invoke-static {p0}, Lio/appmetrica/analytics/AppMetrica;->setDataSendingEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final b(Lf02;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Lyads/ug;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lyads/ug;

    iget v1, v0, Lyads/ug;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lyads/ug;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lyads/ug;

    invoke-direct {v0, p0, p1}, Lyads/ug;-><init>(Lyads/vg;Lf02;)V

    :goto_0
    iget-object p1, v0, Lyads/ug;->b:Ljava/lang/Object;

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lyads/ug;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    check-cast p1, Lk57;

    iget-object p0, p1, Lk57;->b:Ljava/lang/Object;
    :try_end_0
    .catch Lyads/rg; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    :try_start_1
    iput v3, v0, Lyads/ug;->d:I

    invoke-virtual {p0, v0}, Lyads/vg;->a(Lf02;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Lyads/rg; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    return-object p0

    :catchall_0
    new-instance p0, Lyads/rg;

    sget-object p1, Lyads/qg;->b:Lyads/qg;

    invoke-direct {p0, p1}, Lyads/rg;-><init>(Lyads/qg;)V

    new-instance p1, Lk57$a;

    invoke-direct {p1, p0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_0
    move-exception p0

    throw p0

    :catch_1
    move-exception p0

    new-instance p1, Lk57$a;

    invoke-direct {p1, p0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    :goto_1
    return-object p1
.end method
