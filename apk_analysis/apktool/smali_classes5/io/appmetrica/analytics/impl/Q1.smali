.class public final Lio/appmetrica/analytics/impl/Q1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/E1;
.implements Lio/appmetrica/analytics/impl/v0;


# instance fields
.field public a:Z

.field public final b:Landroid/content/Context;

.field public final c:Lio/appmetrica/analytics/impl/D1;

.field public final d:Lio/appmetrica/analytics/impl/o4;

.field public final e:Lio/appmetrica/analytics/impl/Y1;

.field public f:Lio/appmetrica/analytics/impl/Vg;

.field public final g:Lio/appmetrica/analytics/impl/ta;

.field public final h:Lio/appmetrica/analytics/impl/v2;

.field public final i:Lio/appmetrica/analytics/impl/R1;

.field public final j:Lio/appmetrica/analytics/impl/kh;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/D1;)V
    .locals 1

    .line 32
    new-instance v0, Lio/appmetrica/analytics/impl/o5;

    invoke-direct {v0, p1}, Lio/appmetrica/analytics/impl/o5;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, v0}, Lio/appmetrica/analytics/impl/Q1;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/D1;Lio/appmetrica/analytics/impl/o5;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/D1;Lio/appmetrica/analytics/impl/o4;Lio/appmetrica/analytics/impl/Y1;Lio/appmetrica/analytics/impl/ta;Lio/appmetrica/analytics/impl/v2;Lio/appmetrica/analytics/impl/R1;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lio/appmetrica/analytics/impl/Q1;->a:Z

    .line 35
    iput-object p1, p0, Lio/appmetrica/analytics/impl/Q1;->b:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lio/appmetrica/analytics/impl/Q1;->c:Lio/appmetrica/analytics/impl/D1;

    .line 37
    iput-object p3, p0, Lio/appmetrica/analytics/impl/Q1;->d:Lio/appmetrica/analytics/impl/o4;

    .line 38
    iput-object p4, p0, Lio/appmetrica/analytics/impl/Q1;->e:Lio/appmetrica/analytics/impl/Y1;

    .line 39
    iput-object p5, p0, Lio/appmetrica/analytics/impl/Q1;->g:Lio/appmetrica/analytics/impl/ta;

    .line 40
    iput-object p6, p0, Lio/appmetrica/analytics/impl/Q1;->h:Lio/appmetrica/analytics/impl/v2;

    .line 41
    iput-object p7, p0, Lio/appmetrica/analytics/impl/Q1;->i:Lio/appmetrica/analytics/impl/R1;

    .line 42
    new-instance p1, Lio/appmetrica/analytics/impl/kh;

    invoke-direct {p1}, Lio/appmetrica/analytics/impl/kh;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Q1;->j:Lio/appmetrica/analytics/impl/kh;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/D1;Lio/appmetrica/analytics/impl/o5;)V
    .locals 8

    new-instance v3, Lio/appmetrica/analytics/impl/o4;

    invoke-direct {v3, p1, p3}, Lio/appmetrica/analytics/impl/o4;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/o5;)V

    new-instance v4, Lio/appmetrica/analytics/impl/Y1;

    invoke-direct {v4}, Lio/appmetrica/analytics/impl/Y1;-><init>()V

    sget-object v5, Lio/appmetrica/analytics/impl/ta;->d:Lio/appmetrica/analytics/impl/ta;

    invoke-static {}, Lio/appmetrica/analytics/impl/Fa;->k()Lio/appmetrica/analytics/impl/Fa;

    move-result-object p3

    invoke-virtual {p3}, Lio/appmetrica/analytics/impl/Fa;->e()Lio/appmetrica/analytics/impl/v2;

    move-result-object v6

    new-instance v7, Lio/appmetrica/analytics/impl/R1;

    invoke-direct {v7}, Lio/appmetrica/analytics/impl/R1;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Lio/appmetrica/analytics/impl/Q1;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/D1;Lio/appmetrica/analytics/impl/o4;Lio/appmetrica/analytics/impl/Y1;Lio/appmetrica/analytics/impl/ta;Lio/appmetrica/analytics/impl/v2;Lio/appmetrica/analytics/impl/R1;)V

    return-void
.end method

.method public static e(Landroid/content/Intent;)V
    .locals 1

    sget-object p0, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Fa;->D()Lio/appmetrica/analytics/impl/Jo;

    move-result-object p0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Jo;->c:Lio/appmetrica/analytics/impl/Fo;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Fo;->a:Lio/appmetrica/analytics/impl/Ho;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ho;->a:Lio/appmetrica/analytics/impl/Ko;

    invoke-static {v0}, Lio/appmetrica/analytics/impl/Ho;->a(Lio/appmetrica/analytics/impl/Ko;)V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Ho;->b:Lio/appmetrica/analytics/impl/Ko;

    invoke-static {p0}, Lio/appmetrica/analytics/impl/Ho;->a(Lio/appmetrica/analytics/impl/Ko;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 79
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Q1;->e:Lio/appmetrica/analytics/impl/Y1;

    new-instance v1, Lou6;

    invoke-direct {v1, p0}, Lou6;-><init>(Lio/appmetrica/analytics/impl/Q1;)V

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/Y1;->c(Lio/appmetrica/analytics/impl/X1;)V

    .line 80
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Q1;->e:Lio/appmetrica/analytics/impl/Y1;

    new-instance v0, Lpu6;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Y1;->a(Lio/appmetrica/analytics/impl/X1;)V

    return-void
.end method

.method public final a(Landroid/content/Intent;)V
    .locals 3

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Q1;->e:Lio/appmetrica/analytics/impl/Y1;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Y1;->a:Lio/appmetrica/analytics/impl/Ka;

    invoke-static {p1}, Lio/appmetrica/analytics/impl/Y1;->a(Landroid/content/Intent;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lio/appmetrica/analytics/impl/Ka;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Y1;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appmetrica/analytics/impl/X1;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/impl/W1;

    invoke-interface {v0, p1}, Lio/appmetrica/analytics/impl/W1;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1, p1}, Lio/appmetrica/analytics/impl/X1;->a(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final a(Landroid/content/Intent;I)V
    .locals 0

    .line 85
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Q1;->c:Lio/appmetrica/analytics/impl/D1;

    check-cast p0, Lio/appmetrica/analytics/impl/x0;

    .line 86
    iget-object p0, p0, Lio/appmetrica/analytics/impl/x0;->a:Landroid/app/Service;

    .line 87
    invoke-virtual {p0, p2}, Landroid/app/Service;->stopSelf(I)V

    return-void
.end method

.method public final a(Landroid/content/Intent;II)V
    .locals 0

    .line 88
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Q1;->c:Lio/appmetrica/analytics/impl/D1;

    check-cast p0, Lio/appmetrica/analytics/impl/x0;

    .line 89
    iget-object p0, p0, Lio/appmetrica/analytics/impl/x0;->a:Landroid/app/Service;

    .line 90
    invoke-virtual {p0, p3}, Landroid/app/Service;->stopSelf(I)V

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 1

    .line 81
    const-class v0, Lio/appmetrica/analytics/internal/CounterConfiguration;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 82
    invoke-static {p1}, Lio/appmetrica/analytics/impl/a6;->b(Landroid/os/Bundle;)Lio/appmetrica/analytics/impl/a6;

    .line 83
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Q1;->f:Lio/appmetrica/analytics/impl/Vg;

    if-eqz p0, :cond_0

    .line 84
    invoke-static {p1}, Lio/appmetrica/analytics/impl/a6;->b(Landroid/os/Bundle;)Lio/appmetrica/analytics/impl/a6;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lio/appmetrica/analytics/impl/Vg;->a(Lio/appmetrica/analytics/impl/a6;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public final b(Landroid/content/Intent;)V
    .locals 4

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Q1;->e:Lio/appmetrica/analytics/impl/Y1;

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/Y1;->d(Landroid/content/Intent;)V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v2, "io.appmetrica.analytics.IAppMetricaService"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/client"

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "pid"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v2, "psid"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lio/appmetrica/analytics/impl/Q1;->d:Lio/appmetrica/analytics/impl/o4;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3, p1}, Lio/appmetrica/analytics/impl/o4;->a(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Q1;->h:Lio/appmetrica/analytics/impl/v2;

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/v2;->a(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final c(Landroid/content/Intent;)V
    .locals 3

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Q1;->e:Lio/appmetrica/analytics/impl/Y1;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Y1;->a:Lio/appmetrica/analytics/impl/Ka;

    invoke-static {p1}, Lio/appmetrica/analytics/impl/Y1;->a(Landroid/content/Intent;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lio/appmetrica/analytics/impl/Ka;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Y1;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appmetrica/analytics/impl/X1;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/impl/W1;

    invoke-interface {v0, p1}, Lio/appmetrica/analytics/impl/W1;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1, p1}, Lio/appmetrica/analytics/impl/X1;->a(Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final d(Landroid/content/Intent;)V
    .locals 1

    sget-object p0, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Fa;->v()Lio/appmetrica/analytics/impl/sj;

    move-result-object p0

    const-string v0, "screen_size"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/appmetrica/analytics/impl/ub;->e(Ljava/lang/String;)Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/sj;->a(Lio/appmetrica/analytics/coreapi/internal/model/ScreenInfo;)V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    sget-object p0, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Fa;->v()Lio/appmetrica/analytics/impl/sj;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/sj;->a(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final onCreate()V
    .locals 12

    iget-boolean v0, p0, Lio/appmetrica/analytics/impl/Q1;->a:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Q1;->g:Lio/appmetrica/analytics/impl/ta;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Q1;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/ta;->b(Landroid/content/Context;)V

    sget-object v1, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    monitor-enter v1

    :try_start_0
    iget-object v0, v1, Lio/appmetrica/analytics/impl/Fa;->B:Lio/appmetrica/analytics/coreutils/internal/services/UtilityServiceProvider;

    invoke-virtual {v0}, Lio/appmetrica/analytics/coreutils/internal/services/UtilityServiceProvider;->initAsync()V

    iget-object v0, v1, Lio/appmetrica/analytics/impl/Fa;->u:Lio/appmetrica/analytics/impl/xm;

    iget-object v2, v1, Lio/appmetrica/analytics/impl/Fa;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lio/appmetrica/analytics/impl/xm;->a(Landroid/content/Context;)V

    iget-object v0, v1, Lio/appmetrica/analytics/impl/Fa;->u:Lio/appmetrica/analytics/impl/xm;

    new-instance v2, Lio/appmetrica/analytics/impl/vo;

    iget-object v3, v1, Lio/appmetrica/analytics/impl/Fa;->B:Lio/appmetrica/analytics/coreutils/internal/services/UtilityServiceProvider;

    invoke-direct {v2, v3}, Lio/appmetrica/analytics/impl/vo;-><init>(Lio/appmetrica/analytics/coreutils/internal/services/UtilityServiceProvider;)V

    invoke-virtual {v0, v2}, Lio/appmetrica/analytics/impl/xm;->a(Lio/appmetrica/analytics/impl/Am;)V

    iget-object v0, v1, Lio/appmetrica/analytics/impl/Fa;->a:Landroid/content/Context;

    new-instance v2, Lio/appmetrica/analytics/impl/q5;

    new-instance v3, Lio/appmetrica/analytics/impl/xi;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/Fa;->h()Lio/appmetrica/analytics/impl/S6;

    move-result-object v4

    invoke-direct {v3, v4}, Lio/appmetrica/analytics/impl/xi;-><init>(Lio/appmetrica/analytics/coreapi/internal/control/DataSendingRestrictionController;)V

    new-instance v4, Lio/appmetrica/analytics/impl/A5;

    iget-object v5, v1, Lio/appmetrica/analytics/impl/Fa;->a:Landroid/content/Context;

    invoke-direct {v4, v5}, Lio/appmetrica/analytics/impl/A5;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x2

    new-array v5, v5, [Lio/appmetrica/analytics/coreapi/internal/io/IExecutionPolicy;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v3, 0x1

    aput-object v4, v5, v3

    invoke-direct {v2, v5}, Lio/appmetrica/analytics/impl/q5;-><init>([Lio/appmetrica/analytics/coreapi/internal/io/IExecutionPolicy;)V

    invoke-static {v0, v2}, Lio/appmetrica/analytics/networktasks/internal/NetworkServiceLocator;->init(Landroid/content/Context;Lio/appmetrica/analytics/coreapi/internal/io/IExecutionPolicy;)V

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/Fa;->l()Lio/appmetrica/analytics/impl/Ub;

    move-result-object v0

    iget-object v2, v1, Lio/appmetrica/analytics/impl/Fa;->q:Lio/appmetrica/analytics/impl/Ea;

    invoke-virtual {v0, v2}, Lio/appmetrica/analytics/impl/Ub;->a(Lio/appmetrica/analytics/impl/Ea;)V

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/Fa;->E()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    sget-object v0, Lio/appmetrica/analytics/impl/mk;->a:Lio/appmetrica/analytics/impl/nk;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/nk;->e()V

    sget-object v0, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/Fa;->u:Lio/appmetrica/analytics/impl/xm;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/xm;->a()Lio/appmetrica/analytics/impl/vm;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/xm;->a()Lio/appmetrica/analytics/impl/vm;

    move-result-object v1

    sget-object v2, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    invoke-virtual {v2}, Lio/appmetrica/analytics/impl/Fa;->p()Lio/appmetrica/analytics/impl/Nk;

    move-result-object v2

    new-instance v4, Lio/appmetrica/analytics/impl/sk;

    new-instance v5, Lio/appmetrica/analytics/impl/md;

    iget-object v6, p0, Lio/appmetrica/analytics/impl/Q1;->e:Lio/appmetrica/analytics/impl/Y1;

    invoke-direct {v5, v6}, Lio/appmetrica/analytics/impl/md;-><init>(Lio/appmetrica/analytics/impl/Y1;)V

    invoke-direct {v4, v5}, Lio/appmetrica/analytics/impl/sk;-><init>(Lio/appmetrica/analytics/modulesapi/internal/service/ModuleServiceLifecycleController;)V

    invoke-virtual {v2, v4, v1}, Lio/appmetrica/analytics/impl/Nk;->a(Lio/appmetrica/analytics/modulesapi/internal/service/ServiceContext;Lio/appmetrica/analytics/impl/vm;)V

    invoke-virtual {v0, v2}, Lio/appmetrica/analytics/impl/xm;->a(Lio/appmetrica/analytics/impl/Am;)V

    sget-object v0, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Fa;->z()Lio/appmetrica/analytics/impl/Y2;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/impl/Ql;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Q1;->a()V

    sget-object v0, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Fa;->m()Lio/appmetrica/analytics/impl/Zb;

    move-result-object v0

    invoke-interface {v0}, Lio/appmetrica/analytics/impl/cc;->init()V

    sget-object v0, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Fa;->c()Lio/appmetrica/analytics/impl/X;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/X;->init()V

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Q1;->i:Lio/appmetrica/analytics/impl/R1;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Q1;->b:Landroid/content/Context;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/Q1;->d:Lio/appmetrica/analytics/impl/o4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lio/appmetrica/analytics/impl/Vg;

    invoke-direct {v0, v1, v2}, Lio/appmetrica/analytics/impl/Vg;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/o4;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/Q1;->f:Lio/appmetrica/analytics/impl/Vg;

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Q1;->b:Landroid/content/Context;

    sget-object v1, Lio/appmetrica/analytics/impl/y1;->a:Lio/appmetrica/analytics/impl/x1;

    invoke-virtual {v1, v0}, Lio/appmetrica/analytics/impl/x1;->c(Landroid/content/Context;)V

    const-string v1, "20799a27-fa80-4b36-b2db-0f8141f24180"

    invoke-static {v0, v1}, Lio/appmetrica/analytics/AppMetrica;->getReporter(Landroid/content/Context;Ljava/lang/String;)Lio/appmetrica/analytics/IReporter;

    iget-object v5, p0, Lio/appmetrica/analytics/impl/Q1;->b:Landroid/content/Context;

    iget-object v6, p0, Lio/appmetrica/analytics/impl/Q1;->f:Lio/appmetrica/analytics/impl/Vg;

    invoke-static {}, Lio/appmetrica/analytics/impl/Fa;->k()Lio/appmetrica/analytics/impl/Fa;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Fa;->r()Lio/appmetrica/analytics/impl/ae;

    move-result-object v0

    invoke-static {}, Lio/appmetrica/analytics/impl/Fa;->k()Lio/appmetrica/analytics/impl/Fa;

    move-result-object v1

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/Fa;->w()Lio/appmetrica/analytics/impl/Ak;

    move-result-object v1

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/Ak;->f()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object v1

    new-instance v4, Lio/appmetrica/analytics/impl/r6;

    sget-object v7, Lio/appmetrica/analytics/impl/pb;->s:Lio/appmetrica/analytics/impl/pb;

    new-instance v8, Lio/appmetrica/analytics/impl/a0;

    invoke-direct {v8}, Lio/appmetrica/analytics/impl/a0;-><init>()V

    new-instance v9, Lio/appmetrica/analytics/coreutils/internal/executors/BlockingExecutor;

    invoke-direct {v9}, Lio/appmetrica/analytics/coreutils/internal/executors/BlockingExecutor;-><init>()V

    new-instance v11, Lio/appmetrica/analytics/impl/la;

    invoke-direct {v11}, Lio/appmetrica/analytics/impl/la;-><init>()V

    const-string v10, "previous"

    invoke-direct/range {v4 .. v11}, Lio/appmetrica/analytics/impl/r6;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/o6;Lio/appmetrica/analytics/impl/pb;Lio/appmetrica/analytics/impl/tl;Ljava/util/concurrent/Executor;Ljava/lang/String;Lio/appmetrica/analytics/impl/y6;)V

    move-object v2, v4

    new-instance v4, Lio/appmetrica/analytics/impl/r6;

    sget-object v7, Lio/appmetrica/analytics/impl/pb;->r:Lio/appmetrica/analytics/impl/pb;

    new-instance v8, Lio/appmetrica/analytics/impl/Ab;

    invoke-direct {v8}, Lio/appmetrica/analytics/impl/Ab;-><init>()V

    new-instance v11, Lio/appmetrica/analytics/impl/la;

    invoke-direct {v11}, Lio/appmetrica/analytics/impl/la;-><init>()V

    const-string v10, "actual"

    move-object v9, v1

    invoke-direct/range {v4 .. v11}, Lio/appmetrica/analytics/impl/r6;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/o6;Lio/appmetrica/analytics/impl/pb;Lio/appmetrica/analytics/impl/tl;Ljava/util/concurrent/Executor;Ljava/lang/String;Lio/appmetrica/analytics/impl/y6;)V

    invoke-static {v5}, Lio/appmetrica/analytics/coreutils/internal/io/FileUtils;->getCrashesDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v7, Lio/appmetrica/analytics/impl/p6;

    new-instance v8, Lio/appmetrica/analytics/impl/oa;

    invoke-direct {v8}, Lio/appmetrica/analytics/impl/oa;-><init>()V

    invoke-direct {v7, v1, v4, v8}, Lio/appmetrica/analytics/impl/p6;-><init>(Ljava/io/File;Lio/appmetrica/analytics/impl/r6;Lio/appmetrica/analytics/impl/oa;)V

    new-instance v4, Lio/appmetrica/analytics/impl/ig;

    invoke-direct {v4, v1, v2}, Lio/appmetrica/analytics/impl/ig;-><init>(Ljava/io/File;Lio/appmetrica/analytics/impl/r6;)V

    invoke-interface {v9, v4}, Lio/appmetrica/analytics/coreapi/internal/executors/ICommonExecutor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    :cond_2
    :goto_0
    invoke-virtual {v7}, Landroid/os/FileObserver;->startWatching()V

    sget-object v1, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/Fa;->E:Lio/appmetrica/analytics/coreutils/internal/ReferenceHolder;

    invoke-virtual {v1, v7}, Lio/appmetrica/analytics/coreutils/internal/ReferenceHolder;->storeReference(Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lio/appmetrica/analytics/coreutils/internal/io/FileUtils;->getNativeCrashDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_5

    goto :goto_3

    :cond_5
    iget-object v2, v0, Lio/appmetrica/analytics/impl/ae;->a:Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashServiceModule;

    new-instance v4, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashServiceConfig;

    invoke-direct {v4, v1}, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashServiceConfig;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5, v4}, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashServiceModule;->init(Landroid/content/Context;Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashServiceConfig;)V

    iget-object v1, v0, Lio/appmetrica/analytics/impl/ae;->a:Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashServiceModule;

    invoke-virtual {v1}, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashServiceModule;->getAllCrashes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, v0, Lio/appmetrica/analytics/impl/ae;->b:Lio/appmetrica/analytics/impl/Ud;

    invoke-virtual {v2, v5, v6}, Lio/appmetrica/analytics/impl/Ud;->b(Landroid/content/Context;Lio/appmetrica/analytics/impl/Vg;)Lio/appmetrica/analytics/impl/Vd;

    move-result-object v2

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrash;

    invoke-virtual {v2, v4}, Lio/appmetrica/analytics/impl/Vd;->newCrash(Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrash;)V

    goto :goto_2

    :cond_6
    iget-object v1, v0, Lio/appmetrica/analytics/impl/ae;->a:Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashServiceModule;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/ae;->b:Lio/appmetrica/analytics/impl/Ud;

    invoke-virtual {v0, v5, v6}, Lio/appmetrica/analytics/impl/Ud;->a(Landroid/content/Context;Lio/appmetrica/analytics/impl/Vg;)Lio/appmetrica/analytics/impl/Vd;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashServiceModule;->setDefaultCrashHandler(Lio/appmetrica/analytics/ndkcrashesapi/internal/NativeCrashHandler;)V

    :goto_3
    new-instance v0, Lio/appmetrica/analytics/impl/T5;

    new-instance v1, Lio/appmetrica/analytics/impl/ch;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/ch;-><init>()V

    invoke-static {v1}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/impl/T5;-><init>(Ljava/util/List;)V

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/T5;->run()V

    iput-boolean v3, p0, Lio/appmetrica/analytics/impl/Q1;->a:Z

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1

    throw p0

    :cond_7
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Q1;->b:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    sget-object v0, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Fa;->v()Lio/appmetrica/analytics/impl/sj;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/appmetrica/analytics/impl/sj;->a(Landroid/content/res/Configuration;)V

    :goto_4
    sget-object p0, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Fa;->l()Lio/appmetrica/analytics/impl/Ub;

    move-result-object p0

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Ub;->a()V

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    sget-object p0, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    invoke-virtual {p0}, Lio/appmetrica/analytics/impl/Fa;->l()Lio/appmetrica/analytics/impl/Ub;

    move-result-object p0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Ub;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appmetrica/analytics/impl/Bk;

    invoke-interface {v1}, Lio/appmetrica/analytics/impl/Bk;->onDestroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public final pauseUserSession(Landroid/os/Bundle;)V
    .locals 2

    const-class v0, Lio/appmetrica/analytics/impl/Pf;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    sget-object v0, Lio/appmetrica/analytics/impl/Pf;->c:Ljava/lang/String;

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "PROCESS_CFG_OBJ"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lio/appmetrica/analytics/impl/Pf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p1, Lio/appmetrica/analytics/impl/Pf;->a:Landroid/content/ContentValues;

    const-string v0, "PROCESS_CFG_PROCESS_ID"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_1

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Q1;->h:Lio/appmetrica/analytics/impl/v2;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/v2;->b(I)V

    :cond_1
    return-void
.end method

.method public final reportData(ILandroid/os/Bundle;)V
    .locals 1

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Q1;->j:Lio/appmetrica/analytics/impl/kh;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Fa;->v:Lio/appmetrica/analytics/impl/uk;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/uk;->a:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_0

    sget-object p0, Lkx2;->b:Lkx2;

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/impl/tk;

    invoke-interface {v0, p1, p2}, Lio/appmetrica/analytics/impl/tk;->reportData(ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final resumeUserSession(Landroid/os/Bundle;)V
    .locals 2

    const-class v0, Lio/appmetrica/analytics/impl/Pf;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    sget-object v0, Lio/appmetrica/analytics/impl/Pf;->c:Ljava/lang/String;

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "PROCESS_CFG_OBJ"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lio/appmetrica/analytics/impl/Pf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p1, Lio/appmetrica/analytics/impl/Pf;->a:Landroid/content/ContentValues;

    const-string v0, "PROCESS_CFG_PROCESS_ID"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_1

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Q1;->h:Lio/appmetrica/analytics/impl/v2;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/v2;->c(I)V

    :cond_1
    return-void
.end method
