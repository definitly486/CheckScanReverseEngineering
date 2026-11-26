.class public final Lio/appmetrica/analytics/impl/Zi;
.super Lio/appmetrica/analytics/impl/Ca;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lio/appmetrica/analytics/impl/bj;

.field public final synthetic b:Lio/appmetrica/analytics/impl/aj;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/bj;Lio/appmetrica/analytics/impl/aj;)V
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/impl/Zi;->a:Lio/appmetrica/analytics/impl/bj;

    iput-object p2, p0, Lio/appmetrica/analytics/impl/Zi;->b:Lio/appmetrica/analytics/impl/aj;

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/Ca;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 3

    .line 105
    iget-object v0, p0, Lio/appmetrica/analytics/impl/Zi;->a:Lio/appmetrica/analytics/impl/bj;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Zi;->b:Lio/appmetrica/analytics/impl/aj;

    invoke-static {v0, v1}, Lio/appmetrica/analytics/impl/bj;->a(Lio/appmetrica/analytics/impl/bj;Landroid/content/ServiceConnection;)V

    .line 106
    iget-object p0, p0, Lio/appmetrica/analytics/impl/Zi;->b:Lio/appmetrica/analytics/impl/aj;

    .line 107
    iget-object p0, p0, Lio/appmetrica/analytics/impl/aj;->a:Lio/appmetrica/analytics/impl/qg;

    .line 108
    new-instance v0, Lio/appmetrica/analytics/impl/wg;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RuStore referrer error "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v1, 0x2

    invoke-direct {v0, p1, p2, v1, p2}, Lio/appmetrica/analytics/impl/wg;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILjh2;)V

    invoke-interface {p0, v0}, Lio/appmetrica/analytics/impl/qg;->a(Lio/appmetrica/analytics/impl/yg;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 10

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Zi;->a:Lio/appmetrica/analytics/impl/bj;

    iget-object v1, p0, Lio/appmetrica/analytics/impl/Zi;->b:Lio/appmetrica/analytics/impl/aj;

    invoke-static {v0, v1}, Lio/appmetrica/analytics/impl/bj;->a(Lio/appmetrica/analytics/impl/bj;Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lio/appmetrica/analytics/impl/Zi;->b:Lio/appmetrica/analytics/impl/aj;

    iget-object v1, v0, Lio/appmetrica/analytics/impl/aj;->a:Lio/appmetrica/analytics/impl/qg;

    iget-object p0, p0, Lio/appmetrica/analytics/impl/Zi;->a:Lio/appmetrica/analytics/impl/bj;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-static {p1}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "REFERRER_ID_KEY"

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lio/appmetrica/analytics/impl/wg;

    const-string v2, "RuStore referrer id is empty"

    invoke-direct {p1, v2, v0, p0, v0}, Lio/appmetrica/analytics/impl/wg;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILjh2;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :cond_1
    const-string p0, "RECEIVED_TIMESTAMP_KEY"

    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide p0

    const-wide/16 v5, 0x3e8

    div-long/2addr p0, v5

    const-string v0, "INSTALL_APP_TIMESTAMP_KEY"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    div-long v7, v2, v5

    new-instance v0, Lio/appmetrica/analytics/impl/xg;

    new-instance v3, Lio/appmetrica/analytics/impl/og;

    const/4 v9, 0x4

    move-wide v5, p0

    invoke-direct/range {v3 .. v9}, Lio/appmetrica/analytics/impl/og;-><init>(Ljava/lang/String;JJI)V

    invoke-direct {v0, v3}, Lio/appmetrica/analytics/impl/xg;-><init>(Lio/appmetrica/analytics/impl/og;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p1, v0

    goto :goto_2

    :goto_0
    new-instance p1, Lio/appmetrica/analytics/impl/wg;

    const-string v0, "Failed to parse RuStore referrer payload"

    invoke-direct {p1, v0, p0}, Lio/appmetrica/analytics/impl/wg;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    :goto_1
    new-instance p1, Lio/appmetrica/analytics/impl/wg;

    const-string v2, "RuStore referrer payload is empty"

    invoke-direct {p1, v2, v0, p0, v0}, Lio/appmetrica/analytics/impl/wg;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILjh2;)V

    :goto_2
    invoke-interface {v1, p1}, Lio/appmetrica/analytics/impl/qg;->a(Lio/appmetrica/analytics/impl/yg;)V

    return-void
.end method
