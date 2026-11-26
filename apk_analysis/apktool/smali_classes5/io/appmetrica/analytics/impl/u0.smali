.class public final Lio/appmetrica/analytics/impl/u0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/jo;

.field public volatile b:Ljava/lang/Boolean;

.field public c:Lio/appmetrica/analytics/impl/Pa;

.field public d:Lio/appmetrica/analytics/impl/Qa;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/impl/jo;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/jo;-><init>()V

    invoke-direct {p0, v0}, Lio/appmetrica/analytics/impl/u0;-><init>(Lio/appmetrica/analytics/impl/jo;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/jo;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lio/appmetrica/analytics/impl/u0;->a:Lio/appmetrica/analytics/impl/jo;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;Lio/appmetrica/analytics/impl/f4;)Lio/appmetrica/analytics/impl/Pa;
    .locals 1

    monitor-enter p0

    .line 62
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/u0;->c:Lio/appmetrica/analytics/impl/Pa;

    if-nez v0, :cond_1

    .line 63
    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/u0;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    new-instance v0, Lio/appmetrica/analytics/impl/y0;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/y0;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/u0;->c:Lio/appmetrica/analytics/impl/Pa;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 65
    :cond_0
    new-instance v0, Lio/appmetrica/analytics/impl/t0;

    invoke-direct {v0, p1, p2}, Lio/appmetrica/analytics/impl/t0;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/impl/f4;)V

    iput-object v0, p0, Lio/appmetrica/analytics/impl/u0;->c:Lio/appmetrica/analytics/impl/Pa;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(Landroid/content/Context;)Z
    .locals 4

    iget-object v0, p0, Lio/appmetrica/analytics/impl/u0;->b:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/u0;->b:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/appmetrica/analytics/impl/u0;->a:Lio/appmetrica/analytics/impl/jo;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x18

    invoke-static {v0}, Lio/appmetrica/analytics/coreutils/internal/AndroidUtils;->isApiAchieved(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lio/appmetrica/analytics/impl/jo;->a(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    move p1, v1

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lio/appmetrica/analytics/impl/u0;->b:Ljava/lang/Boolean;

    if-eqz p1, :cond_1

    sget-object p1, Lio/appmetrica/analytics/logger/appmetrica/internal/ImportantLogger;->INSTANCE:Lio/appmetrica/analytics/logger/appmetrica/internal/ImportantLogger;

    const-string v2, "AppMetrica"

    const-string v3, "User is locked. So use stubs. Events will not be sent."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v2, v3, v1}, Lio/appmetrica/analytics/logger/common/BaseImportantLogger;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
