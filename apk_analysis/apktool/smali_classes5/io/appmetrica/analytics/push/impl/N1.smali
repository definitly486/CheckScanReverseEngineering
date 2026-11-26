.class public final Lio/appmetrica/analytics/push/impl/N1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/push/impl/E;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/os/Bundle;)J
    .locals 6

    const-string p0, "io.appmetrica.analytics.push.extra.MIN_PROCESSING_DELAY"

    const-wide/16 v0, -0x1

    invoke-virtual {p2, p0, v0, v1}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-string p0, "io.appmetrica.analytics.push.extra.TRANSPORT"

    const-string v2, "unknown"

    invoke-virtual {p2, p0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, v1

    :goto_0
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-static {p1}, Lio/appmetrica/analytics/push/impl/r;->a(Landroid/content/Context;)Lio/appmetrica/analytics/push/impl/r;

    move-result-object p1

    iget-object p1, p1, Lio/appmetrica/analytics/push/impl/r;->d:Lio/appmetrica/analytics/push/impl/b2;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lio/appmetrica/analytics/push/impl/b2;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/push/provider/api/PushServiceController;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lio/appmetrica/analytics/push/provider/api/PushServiceController;->getExecutionRestrictions()Lio/appmetrica/analytics/push/provider/api/PushServiceExecutionRestrictions;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lio/appmetrica/analytics/push/provider/api/PushServiceExecutionRestrictions;->getMaxTaskExecutionDurationSeconds()Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :cond_2
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0

    :cond_3
    return-wide v2
.end method
