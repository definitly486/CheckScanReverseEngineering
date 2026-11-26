.class public final Lio/appmetrica/analytics/impl/lj;
.super Lio/appmetrica/analytics/impl/Ug;
.source "SourceFile"


# instance fields
.field public final b:Lio/appmetrica/analytics/impl/Gf;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/i5;)V
    .locals 1

    invoke-static {}, Lio/appmetrica/analytics/impl/Fa;->k()Lio/appmetrica/analytics/impl/Fa;

    move-result-object v0

    invoke-virtual {v0}, Lio/appmetrica/analytics/impl/Fa;->t()Lio/appmetrica/analytics/impl/Gf;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lio/appmetrica/analytics/impl/lj;-><init>(Lio/appmetrica/analytics/impl/i5;Lio/appmetrica/analytics/impl/Gf;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/i5;Lio/appmetrica/analytics/impl/Gf;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lio/appmetrica/analytics/impl/Ug;-><init>(Lio/appmetrica/analytics/impl/i5;)V

    .line 13
    iput-object p2, p0, Lio/appmetrica/analytics/impl/lj;->b:Lio/appmetrica/analytics/impl/Gf;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/impl/a6;)Z
    .locals 1

    invoke-virtual {p1}, Lio/appmetrica/analytics/impl/a6;->getValue()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "preloadInfo"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p1, 0x0

    :goto_0
    iget-object p0, p0, Lio/appmetrica/analytics/impl/lj;->b:Lio/appmetrica/analytics/impl/Gf;

    invoke-static {p1}, Lio/appmetrica/analytics/impl/Df;->a(Lorg/json/JSONObject;)Lio/appmetrica/analytics/impl/Df;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/b8;->b(Lio/appmetrica/analytics/impl/g8;)Z

    const/4 p0, 0x0

    return p0
.end method
