.class public final Lio/appmetrica/analytics/push/impl/l;
.super Lio/appmetrica/analytics/push/impl/i;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lio/appmetrica/analytics/push/impl/i;-><init>(I)V

    iput-object p1, p0, Lio/appmetrica/analytics/push/impl/l;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .locals 2

    invoke-super {p0}, Lio/appmetrica/analytics/push/impl/i;->a()Lorg/json/JSONObject;

    move-result-object v0

    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/l;->b:Ljava/lang/String;

    const-string v1, "category"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method
