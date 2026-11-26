.class public final Lio/appmetrica/analytics/impl/Hc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/impl/R8;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Tg;

.field public final b:Lio/appmetrica/analytics/impl/jf;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Tg;Lio/appmetrica/analytics/impl/A4;Lio/appmetrica/analytics/impl/jf;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Hc;->a:Lio/appmetrica/analytics/impl/Tg;

    iput-object p3, p0, Lio/appmetrica/analytics/impl/Hc;->b:Lio/appmetrica/analytics/impl/jf;

    const-string p1, "activation_unlock_event_sending"

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Hc;->c:Ljava/lang/String;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lio/appmetrica/analytics/impl/jf;->a(Z)Z

    move-result p3

    if-nez p3, :cond_0

    invoke-static {p2}, Lio/appmetrica/analytics/impl/Hc;->a(Lio/appmetrica/analytics/impl/A4;)Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Hc;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static a(Lio/appmetrica/analytics/impl/A4;)Z
    .locals 1

    .line 96
    iget-object p0, p0, Lio/appmetrica/analytics/impl/A4;->a:Ljava/lang/String;

    if-eqz p0, :cond_0

    const-string v0, "629a824d-c717-4ba5-bc0f-3f3968554d01"

    .line 97
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 93
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Hc;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Hc;->b:Lio/appmetrica/analytics/impl/jf;

    invoke-virtual {v0, v2}, Lio/appmetrica/analytics/impl/jf;->b(Z)V

    .line 95
    const-string v0, "timer"

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Hc;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 7

    :try_start_0
    sget-object v0, Lio/appmetrica/analytics/impl/Bj;->a:Lio/appmetrica/analytics/impl/ek;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Hc;->c:Ljava/lang/String;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "source"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "framework"

    invoke-static {}, Lio/appmetrica/analytics/coreutils/internal/services/FrameworkDetector;->framework()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "appmetrica_plugin_id"

    sget-object v2, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    invoke-virtual {v2}, Lio/appmetrica/analytics/impl/Fa;->i()Lio/appmetrica/analytics/impl/Z9;

    move-result-object v2

    const-string v3, "io.appmetrica.analytics.plugin_id"

    iget-object v4, v2, Lio/appmetrica/analytics/impl/Z9;->d:Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;

    iget-object v2, v2, Lio/appmetrica/analytics/impl/Z9;->a:Landroid/content/Context;

    invoke-virtual {v4, v2}, Lio/appmetrica/analytics/coreutils/internal/services/SafePackageManager;->getApplicationMetaData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "activation_offset"

    sget-object v2, Lio/appmetrica/analytics/impl/Fa;->I:Lio/appmetrica/analytics/impl/Fa;

    iget-object v2, v2, Lio/appmetrica/analytics/impl/Fa;->D:Lio/appmetrica/analytics/impl/Ck;

    iget-object v3, v2, Lio/appmetrica/analytics/impl/Ck;->a:Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;

    invoke-virtual {v3}, Lio/appmetrica/analytics/coreutils/internal/time/SystemTimeProvider;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, v2, Lio/appmetrica/analytics/impl/Ck;->b:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {p1, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lio/appmetrica/analytics/impl/ck;

    invoke-direct {v1, p0, p1}, Lio/appmetrica/analytics/impl/ck;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/appmetrica/analytics/impl/ek;->a(Lio/appmetrica/analytics/impl/ab;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final b()Z
    .locals 3

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Hc;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Hc;->a:Lio/appmetrica/analytics/impl/Tg;

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/z5;->a()Lio/appmetrica/analytics/networktasks/internal/BaseRequestConfig;

    move-result-object v0

    check-cast v0, Lio/appmetrica/analytics/impl/rh;

    iget-object v0, v0, Lio/appmetrica/analytics/impl/rh;->m:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "629a824d-c717-4ba5-bc0f-3f3968554d01"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Hc;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Hc;->b:Lio/appmetrica/analytics/impl/jf;

    invoke-virtual {v0, v2}, Lio/appmetrica/analytics/impl/jf;->b(Z)V

    const-string v0, "activation"

    invoke-virtual {p0, v0}, Lio/appmetrica/analytics/impl/Hc;->a(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Hc;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method
