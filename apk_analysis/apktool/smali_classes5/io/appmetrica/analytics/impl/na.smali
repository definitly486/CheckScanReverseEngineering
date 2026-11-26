.class public final Lio/appmetrica/analytics/impl/na;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile c:Lio/appmetrica/analytics/impl/na;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/na;->a:Landroid/content/Context;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/na;->b:Ljava/util/HashMap;

    return-void
.end method

.method public static final a(Landroid/content/Context;)Lio/appmetrica/analytics/impl/na;
    .locals 2

    sget-object v0, Lio/appmetrica/analytics/impl/na;->c:Lio/appmetrica/analytics/impl/na;

    if-nez v0, :cond_1

    const-class v0, Lio/appmetrica/analytics/impl/na;

    invoke-static {v0}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    sget-object v1, Lio/appmetrica/analytics/impl/na;->c:Lio/appmetrica/analytics/impl/na;

    if-nez v1, :cond_0

    new-instance v1, Lio/appmetrica/analytics/impl/na;

    invoke-direct {v1, p0}, Lio/appmetrica/analytics/impl/na;-><init>(Landroid/content/Context;)V

    sput-object v1, Lio/appmetrica/analytics/impl/na;->c:Lio/appmetrica/analytics/impl/na;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lio/appmetrica/analytics/impl/na;->c:Lio/appmetrica/analytics/impl/na;

    if-eqz p0, :cond_2

    return-object p0

    :cond_2
    const-string p0, "INSTANCE"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 43
    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/na;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized b(Ljava/lang/String;)Lio/appmetrica/analytics/impl/J9;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lio/appmetrica/analytics/impl/na;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lio/appmetrica/analytics/impl/J9;

    iget-object v2, p0, Lio/appmetrica/analytics/impl/na;->a:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lio/appmetrica/analytics/impl/J9;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    check-cast v1, Lio/appmetrica/analytics/impl/J9;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
