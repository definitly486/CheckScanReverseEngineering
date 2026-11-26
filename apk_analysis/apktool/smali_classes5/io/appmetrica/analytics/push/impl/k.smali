.class public final Lio/appmetrica/analytics/push/impl/k;
.super Lio/appmetrica/analytics/push/impl/i;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lio/appmetrica/analytics/push/impl/i;-><init>(I)V

    iput-object p1, p0, Lio/appmetrica/analytics/push/impl/k;->b:Ljava/lang/String;

    iput-object p2, p0, Lio/appmetrica/analytics/push/impl/k;->c:Ljava/lang/String;

    iput-object p3, p0, Lio/appmetrica/analytics/push/impl/k;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .locals 3

    invoke-super {p0}, Lio/appmetrica/analytics/push/impl/i;->a()Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lio/appmetrica/analytics/push/impl/k;->b:Ljava/lang/String;

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lio/appmetrica/analytics/push/impl/k;->c:Ljava/lang/String;

    const-string v2, "uri"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/k;->d:Ljava/lang/String;

    const-string v1, "text"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method
