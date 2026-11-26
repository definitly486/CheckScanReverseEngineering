.class public final Lio/appmetrica/analytics/impl/a2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static d:Lio/appmetrica/analytics/impl/E1;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lio/appmetrica/analytics/impl/D1;

.field public c:Lio/appmetrica/analytics/impl/C1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/D1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/a2;->a:Landroid/content/Context;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/a2;->b:Lio/appmetrica/analytics/impl/D1;

    return-void
.end method

.method public static final synthetic a()Lio/appmetrica/analytics/impl/E1;
    .locals 1

    .line 44
    sget-object v0, Lio/appmetrica/analytics/impl/a2;->d:Lio/appmetrica/analytics/impl/E1;

    return-object v0
.end method

.method public static final synthetic a(Lio/appmetrica/analytics/impl/E1;)V
    .locals 0

    .line 41
    sput-object p0, Lio/appmetrica/analytics/impl/a2;->d:Lio/appmetrica/analytics/impl/E1;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;II)I
    .locals 0

    .line 43
    sget-object p0, Lio/appmetrica/analytics/impl/a2;->d:Lio/appmetrica/analytics/impl/E1;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lio/appmetrica/analytics/impl/E1;->a(Landroid/content/Intent;II)V

    :cond_0
    const/4 p0, 0x2

    return p0
.end method

.method public final a(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    sget-object v0, Lio/appmetrica/analytics/impl/a2;->d:Lio/appmetrica/analytics/impl/E1;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lio/appmetrica/analytics/impl/E1;->a(Landroid/content/Intent;)V

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "io.appmetrica.analytics.ACTION_SERVICE_WAKELOCK"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lra8;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    new-instance p0, Lio/appmetrica/analytics/impl/Mo;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/Mo;-><init>()V

    return-object p0

    :cond_1
    iget-object p0, p0, Lio/appmetrica/analytics/impl/a2;->c:Lio/appmetrica/analytics/impl/C1;

    if-eqz p0, :cond_2

    return-object p0

    :cond_2
    const-string p0, "coreBinder"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final a(Landroid/content/Intent;I)V
    .locals 0

    .line 42
    sget-object p0, Lio/appmetrica/analytics/impl/a2;->d:Lio/appmetrica/analytics/impl/E1;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lio/appmetrica/analytics/impl/E1;->a(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/content/res/Configuration;)V
    .locals 0

    .line 45
    sget-object p0, Lio/appmetrica/analytics/impl/a2;->d:Lio/appmetrica/analytics/impl/E1;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lio/appmetrica/analytics/impl/E1;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 5

    iget-object v0, p0, Lio/appmetrica/analytics/impl/a2;->a:Landroid/content/Context;

    invoke-static {v0}, Lio/appmetrica/analytics/impl/Fa;->a(Landroid/content/Context;)V

    sget-object v0, Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger;->Companion:Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger$Companion;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/a2;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/logger/appmetrica/internal/PublicLogger$Companion;->init(Landroid/content/Context;)V

    iget-object v0, p0, Lio/appmetrica/analytics/impl/a2;->a:Landroid/content/Context;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/a2;->b:Lio/appmetrica/analytics/impl/D1;

    sget-object v2, Lio/appmetrica/analytics/impl/a2;->d:Lio/appmetrica/analytics/impl/E1;

    if-nez v2, :cond_1

    new-instance v2, Lio/appmetrica/analytics/impl/Q1;

    new-instance v3, Lio/appmetrica/analytics/impl/o5;

    invoke-direct {v3, v0}, Lio/appmetrica/analytics/impl/o5;-><init>(Landroid/content/Context;)V

    invoke-direct {v2, v0, v1, v3}, Lio/appmetrica/analytics/impl/Q1;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/D1;Lio/appmetrica/analytics/impl/o5;)V

    sget-object v0, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/Fa;->v:Lio/appmetrica/analytics/impl/uk;

    new-instance v1, Lio/appmetrica/analytics/impl/T1;

    invoke-direct {v1, v2}, Lio/appmetrica/analytics/impl/T1;-><init>(Lio/appmetrica/analytics/impl/v0;)V

    iget-object v0, v0, Lio/appmetrica/analytics/impl/uk;->a:Ljava/util/LinkedHashMap;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lio/appmetrica/analytics/impl/P1;

    sget-object v1, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    iget-object v1, v1, Lio/appmetrica/analytics/impl/Fa;->d:Lio/appmetrica/analytics/impl/Ak;

    invoke-virtual {v1}, Lio/appmetrica/analytics/impl/Ak;->b()Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lio/appmetrica/analytics/impl/P1;-><init>(Lio/appmetrica/analytics/coreapi/internal/executors/IHandlerExecutor;Lio/appmetrica/analytics/impl/E1;)V

    sput-object v0, Lio/appmetrica/analytics/impl/a2;->d:Lio/appmetrica/analytics/impl/E1;

    move-object v2, v0

    :cond_1
    new-instance v0, Lio/appmetrica/analytics/impl/C1;

    invoke-direct {v0, v2}, Lio/appmetrica/analytics/impl/C1;-><init>(Lio/appmetrica/analytics/impl/E1;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/a2;->c:Lio/appmetrica/analytics/impl/C1;

    sget-object p0, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    new-instance v0, Lio/appmetrica/analytics/impl/Aj;

    invoke-direct {v0, v2}, Lio/appmetrica/analytics/impl/Aj;-><init>(Lio/appmetrica/analytics/impl/E1;)V

    new-instance v1, Lio/appmetrica/analytics/impl/zj;

    iget-object v3, p0, Lio/appmetrica/analytics/impl/Fa;->a:Landroid/content/Context;

    invoke-direct {v1, v3, v0}, Lio/appmetrica/analytics/impl/zj;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/Aj;)V

    iput-object v1, p0, Lio/appmetrica/analytics/impl/Fa;->f:Lio/appmetrica/analytics/impl/zj;

    invoke-interface {v2}, Lio/appmetrica/analytics/impl/E1;->onCreate()V

    return-void
.end method

.method public final b(Landroid/content/Intent;)V
    .locals 0

    .line 108
    sget-object p0, Lio/appmetrica/analytics/impl/a2;->d:Lio/appmetrica/analytics/impl/E1;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lio/appmetrica/analytics/impl/E1;->c(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 0

    .line 32
    sget-object p0, Lio/appmetrica/analytics/impl/a2;->d:Lio/appmetrica/analytics/impl/E1;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lio/appmetrica/analytics/impl/E1;->onDestroy()V

    :cond_0
    return-void
.end method

.method public final c(Landroid/content/Intent;)Z
    .locals 3

    sget-object p0, Lio/appmetrica/analytics/impl/a2;->d:Lio/appmetrica/analytics/impl/E1;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lio/appmetrica/analytics/impl/E1;->b(Landroid/content/Intent;)V

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    const-string v2, "io.appmetrica.analytics.ACTION_SERVICE_WAKELOCK"

    invoke-static {p0, v2, v1}, Lra8;->C(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    if-nez p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final d()V
    .locals 0

    const/4 p0, 0x0

    sput-object p0, Lio/appmetrica/analytics/impl/a2;->d:Lio/appmetrica/analytics/impl/E1;

    return-void
.end method
