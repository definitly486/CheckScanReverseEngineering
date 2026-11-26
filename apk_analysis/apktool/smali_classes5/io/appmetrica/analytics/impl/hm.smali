.class public final Lio/appmetrica/analytics/impl/hm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/networktasks/internal/NetworkResponseHandler;


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/om;

.field public final b:Lio/appmetrica/analytics/impl/i3;


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lio/appmetrica/analytics/impl/om;

    invoke-direct {v0}, Lio/appmetrica/analytics/impl/om;-><init>()V

    new-instance v1, Lio/appmetrica/analytics/impl/i3;

    invoke-direct {v1}, Lio/appmetrica/analytics/impl/i3;-><init>()V

    invoke-direct {p0, v0, v1}, Lio/appmetrica/analytics/impl/hm;-><init>(Lio/appmetrica/analytics/impl/om;Lio/appmetrica/analytics/impl/i3;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/impl/om;Lio/appmetrica/analytics/impl/i3;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lio/appmetrica/analytics/impl/hm;->a:Lio/appmetrica/analytics/impl/om;

    .line 16
    iput-object p2, p0, Lio/appmetrica/analytics/impl/hm;->b:Lio/appmetrica/analytics/impl/i3;

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;)Lio/appmetrica/analytics/impl/tm;
    .locals 7

    invoke-virtual {p1}, Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;->getResponseCode()I

    move-result v0

    const/16 v1, 0xc8

    const/4 v2, 0x0

    if-ne v1, v0, :cond_4

    invoke-virtual {p1}, Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;->getResponseData()[B

    move-result-object v0

    invoke-virtual {p1}, Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;->getResponseHeaders()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v3, "Content-Encoding"

    invoke-static {v1, v3}, Lio/appmetrica/analytics/coreutils/internal/collection/CollectionUtils;->getFromMapIgnoreCase(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-static {v1}, Lio/appmetrica/analytics/impl/xo;->a(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v3, "encrypted"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lio/appmetrica/analytics/impl/hm;->b:Lio/appmetrica/analytics/impl/i3;

    invoke-virtual {p1}, Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;->getResponseData()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/appmetrica/analytics/impl/i3;->a([B)[B

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_4

    iget-object p0, p0, Lio/appmetrica/analytics/impl/hm;->a:Lio/appmetrica/analytics/impl/om;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lio/appmetrica/analytics/impl/tm;

    invoke-direct {p1}, Lio/appmetrica/analytics/impl/tm;-><init>()V

    const/4 v1, 0x2

    const/4 v3, 0x1

    :try_start_0
    iget-object v4, p0, Lio/appmetrica/analytics/impl/om;->h:Lio/appmetrica/analytics/impl/vb;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lio/appmetrica/analytics/impl/tb;

    new-instance v5, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v5, v0, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v4, v5}, Lio/appmetrica/analytics/impl/tb;-><init>(Ljava/lang/String;)V

    const-string v0, "device_id"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v5, "hash"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "value"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_2
    const-string v5, ""

    move-object v0, v5

    :goto_1
    :try_start_1
    iput-object v0, p1, Lio/appmetrica/analytics/impl/tm;->h:Ljava/lang/String;

    iput-object v5, p1, Lio/appmetrica/analytics/impl/tm;->i:Ljava/lang/String;

    invoke-virtual {p0, p1, v4}, Lio/appmetrica/analytics/impl/om;->a(Lio/appmetrica/analytics/impl/tm;Lio/appmetrica/analytics/impl/tb;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p0, p1, Lio/appmetrica/analytics/impl/tm;->i:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    move v3, v1

    :goto_2
    iput v3, p1, Lio/appmetrica/analytics/impl/tm;->a:I

    goto :goto_3

    :catchall_0
    new-instance p1, Lio/appmetrica/analytics/impl/tm;

    invoke-direct {p1}, Lio/appmetrica/analytics/impl/tm;-><init>()V

    iput v3, p1, Lio/appmetrica/analytics/impl/tm;->a:I

    :goto_3
    iget p0, p1, Lio/appmetrica/analytics/impl/tm;->a:I

    if-ne v1, p0, :cond_4

    return-object p1

    :cond_4
    return-object v2
.end method

.method public final bridge synthetic handle(Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/impl/hm;->a(Lio/appmetrica/analytics/networktasks/internal/ResponseDataHolder;)Lio/appmetrica/analytics/impl/tm;

    move-result-object p0

    return-object p0
.end method
