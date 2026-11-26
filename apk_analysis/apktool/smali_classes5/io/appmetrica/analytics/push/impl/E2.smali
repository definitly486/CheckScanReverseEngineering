.class public final Lio/appmetrica/analytics/push/impl/E2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/push/impl/v2;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lio/appmetrica/analytics/push/impl/t2;)V
    .locals 3

    invoke-static {p1}, Lio/appmetrica/analytics/push/impl/r;->a(Landroid/content/Context;)Lio/appmetrica/analytics/push/impl/r;

    move-result-object p0

    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/r;->e:Lio/appmetrica/analytics/push/impl/x2;

    if-eqz p0, :cond_0

    iget-object p1, p2, Lio/appmetrica/analytics/push/impl/t2;->b:Ljava/lang/String;

    iget-object v0, p2, Lio/appmetrica/analytics/push/impl/t2;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, p1, v0, v1, v2}, Lio/appmetrica/analytics/push/impl/x2;->a(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_0
    sget-object p0, Lio/appmetrica/analytics/push/impl/X1;->b:Lio/appmetrica/analytics/push/impl/X1;

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p2, Lio/appmetrica/analytics/push/impl/t2;->b:Ljava/lang/String;

    const-string v1, "token"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p2, Lio/appmetrica/analytics/push/impl/t2;->a:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lio/appmetrica/analytics/push/impl/X1;->onPushTokenUpdated(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
