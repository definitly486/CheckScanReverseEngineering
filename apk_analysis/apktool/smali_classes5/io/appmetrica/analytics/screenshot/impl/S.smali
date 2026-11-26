.class public final Lio/appmetrica/analytics/screenshot/impl/S;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/JsonParser;


# instance fields
.field public final a:Lio/appmetrica/analytics/screenshot/impl/E;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 15
    invoke-direct {p0, v0, v1, v0}, Lio/appmetrica/analytics/screenshot/impl/S;-><init>(Lio/appmetrica/analytics/screenshot/impl/E;ILjh2;)V

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/screenshot/impl/E;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lio/appmetrica/analytics/screenshot/impl/S;->a:Lio/appmetrica/analytics/screenshot/impl/E;

    return-void
.end method

.method public synthetic constructor <init>(Lio/appmetrica/analytics/screenshot/impl/E;ILjh2;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    new-instance p1, Lio/appmetrica/analytics/screenshot/impl/E;

    invoke-direct {p1}, Lio/appmetrica/analytics/screenshot/impl/E;-><init>()V

    :cond_0
    invoke-direct {p0, p1}, Lio/appmetrica/analytics/screenshot/impl/S;-><init>(Lio/appmetrica/analytics/screenshot/impl/E;)V

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)Lio/appmetrica/analytics/screenshot/internal/ServiceSideScreenshotConfigWrapper;
    .locals 9

    iget-object p0, p0, Lio/appmetrica/analytics/screenshot/impl/S;->a:Lio/appmetrica/analytics/screenshot/impl/E;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lio/appmetrica/analytics/screenshot/impl/m;->a:Z

    const-string v1, "screenshot"

    invoke-static {p1, v1, v0}, Lio/appmetrica/analytics/coreutils/internal/parsing/RemoteConfigJsonUtils;->extractFeature(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p0, Lio/appmetrica/analytics/screenshot/impl/P;

    new-instance p1, Lio/appmetrica/analytics/screenshot/impl/N;

    new-instance v1, Lio/appmetrica/analytics/screenshot/impl/w;

    invoke-direct {v1}, Lio/appmetrica/analytics/screenshot/impl/w;-><init>()V

    iget-boolean v1, v1, Lio/appmetrica/analytics/screenshot/impl/w;->a:Z

    invoke-direct {p1, v1}, Lio/appmetrica/analytics/screenshot/impl/N;-><init>(Z)V

    new-instance v1, Lio/appmetrica/analytics/screenshot/impl/U;

    invoke-direct {v1}, Lio/appmetrica/analytics/screenshot/impl/U;-><init>()V

    new-instance v2, Lio/appmetrica/analytics/screenshot/impl/O;

    invoke-direct {v2}, Lio/appmetrica/analytics/screenshot/impl/O;-><init>()V

    invoke-direct {p0, v0, p1, v1, v2}, Lio/appmetrica/analytics/screenshot/impl/P;-><init>(ZLio/appmetrica/analytics/screenshot/impl/N;Lio/appmetrica/analytics/screenshot/impl/U;Lio/appmetrica/analytics/screenshot/impl/O;)V

    goto/16 :goto_9

    :cond_0
    iget-object v1, p0, Lio/appmetrica/analytics/screenshot/impl/E;->a:Lio/appmetrica/analytics/screenshot/impl/e;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "api_captor_config"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "enabled"

    const/4 v3, 0x0

    if-nez v1, :cond_1

    move-object v4, v3

    goto :goto_1

    :cond_1
    new-instance v4, Lio/appmetrica/analytics/screenshot/impl/w;

    invoke-direct {v4}, Lio/appmetrica/analytics/screenshot/impl/w;-><init>()V

    invoke-static {v1, v2}, Lio/appmetrica/analytics/coreutils/internal/parsing/JsonUtils;->optBooleanOrNull(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    :cond_2
    iget-boolean v1, v4, Lio/appmetrica/analytics/screenshot/impl/w;->a:Z

    :goto_0
    new-instance v4, Lio/appmetrica/analytics/screenshot/impl/N;

    invoke-direct {v4, v1}, Lio/appmetrica/analytics/screenshot/impl/N;-><init>(Z)V

    :goto_1
    if-nez v4, :cond_3

    new-instance v4, Lio/appmetrica/analytics/screenshot/impl/N;

    new-instance v1, Lio/appmetrica/analytics/screenshot/impl/w;

    invoke-direct {v1}, Lio/appmetrica/analytics/screenshot/impl/w;-><init>()V

    iget-boolean v1, v1, Lio/appmetrica/analytics/screenshot/impl/w;->a:Z

    invoke-direct {v4, v1}, Lio/appmetrica/analytics/screenshot/impl/N;-><init>(Z)V

    :cond_3
    iget-object v1, p0, Lio/appmetrica/analytics/screenshot/impl/E;->b:Lio/appmetrica/analytics/screenshot/impl/H;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "service_captor_config"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_4

    move-object v1, v3

    goto :goto_4

    :cond_4
    new-instance v5, Lio/appmetrica/analytics/screenshot/impl/y;

    invoke-direct {v5}, Lio/appmetrica/analytics/screenshot/impl/y;-><init>()V

    invoke-static {v1, v2}, Lio/appmetrica/analytics/coreutils/internal/parsing/JsonUtils;->optBooleanOrNull(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    goto :goto_2

    :cond_5
    iget-boolean v6, v5, Lio/appmetrica/analytics/screenshot/impl/y;->a:Z

    :goto_2
    const-string v7, "delay_seconds"

    invoke-static {v1, v7}, Lio/appmetrica/analytics/coreutils/internal/parsing/JsonUtils;->optLongOrNull(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    goto :goto_3

    :cond_6
    iget-wide v7, v5, Lio/appmetrica/analytics/screenshot/impl/y;->b:J

    :goto_3
    new-instance v1, Lio/appmetrica/analytics/screenshot/impl/U;

    invoke-direct {v1, v6, v7, v8}, Lio/appmetrica/analytics/screenshot/impl/U;-><init>(ZJ)V

    :goto_4
    if-nez v1, :cond_7

    new-instance v1, Lio/appmetrica/analytics/screenshot/impl/U;

    invoke-direct {v1}, Lio/appmetrica/analytics/screenshot/impl/U;-><init>()V

    :cond_7
    iget-object p0, p0, Lio/appmetrica/analytics/screenshot/impl/E;->c:Lio/appmetrica/analytics/screenshot/impl/n;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "content_observer_captor_config"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_8

    goto :goto_8

    :cond_8
    new-instance p1, Lio/appmetrica/analytics/screenshot/impl/x;

    invoke-direct {p1}, Lio/appmetrica/analytics/screenshot/impl/x;-><init>()V

    invoke-static {p0, v2}, Lio/appmetrica/analytics/coreutils/internal/parsing/JsonUtils;->optBooleanOrNull(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_5

    :cond_9
    iget-boolean v2, p1, Lio/appmetrica/analytics/screenshot/impl/x;->a:Z

    :goto_5
    const-string v3, "media_store_column_names"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v6, v5}, Lkx6;->n(II)Ly74;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v5, v7}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v5}, Lw74;->b()Lx74;

    move-result-object v5

    :goto_6
    iget-boolean v7, v5, Lx74;->d:Z

    if-eqz v7, :cond_b

    invoke-virtual {v5}, Lx74;->nextInt()I

    move-result v7

    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_a
    iget-object v3, p1, Lio/appmetrica/analytics/screenshot/impl/x;->c:[Ljava/lang/String;

    invoke-static {v3}, Lyr;->h0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    :cond_b
    const-string v3, "detect_window_seconds"

    invoke-static {p0, v3}, Lio/appmetrica/analytics/coreutils/internal/parsing/JsonUtils;->optLongOrNull(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    goto :goto_7

    :cond_c
    iget-wide p0, p1, Lio/appmetrica/analytics/screenshot/impl/x;->b:J

    :goto_7
    new-instance v3, Lio/appmetrica/analytics/screenshot/impl/O;

    invoke-direct {v3, v2, v6, p0, p1}, Lio/appmetrica/analytics/screenshot/impl/O;-><init>(ZLjava/util/List;J)V

    :goto_8
    if-nez v3, :cond_d

    new-instance v3, Lio/appmetrica/analytics/screenshot/impl/O;

    invoke-direct {v3}, Lio/appmetrica/analytics/screenshot/impl/O;-><init>()V

    :cond_d
    new-instance p0, Lio/appmetrica/analytics/screenshot/impl/P;

    invoke-direct {p0, v0, v4, v1, v3}, Lio/appmetrica/analytics/screenshot/impl/P;-><init>(ZLio/appmetrica/analytics/screenshot/impl/N;Lio/appmetrica/analytics/screenshot/impl/U;Lio/appmetrica/analytics/screenshot/impl/O;)V

    :goto_9
    sget-object p1, Lio/appmetrica/analytics/screenshot/internal/ServiceSideScreenshotConfigWrapper;->Companion:Lio/appmetrica/analytics/screenshot/internal/ServiceSideScreenshotConfigWrapper$Companion;

    invoke-virtual {p1, p0}, Lio/appmetrica/analytics/screenshot/internal/ServiceSideScreenshotConfigWrapper$Companion;->toWrapper$screenshot_release(Lio/appmetrica/analytics/screenshot/impl/P;)Lio/appmetrica/analytics/screenshot/internal/ServiceSideScreenshotConfigWrapper;

    move-result-object p0

    return-object p0
.end method

.method public final b(Lorg/json/JSONObject;)Lio/appmetrica/analytics/screenshot/internal/ServiceSideScreenshotConfigWrapper;
    .locals 0

    invoke-static {p0, p1}, Lio/appmetrica/analytics/coreapi/internal/data/JsonParser$DefaultImpls;->parseOrNull(Lio/appmetrica/analytics/coreapi/internal/data/JsonParser;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/screenshot/internal/ServiceSideScreenshotConfigWrapper;

    return-object p0
.end method

.method public final bridge synthetic parse(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/screenshot/impl/S;->a(Lorg/json/JSONObject;)Lio/appmetrica/analytics/screenshot/internal/ServiceSideScreenshotConfigWrapper;

    move-result-object p0

    return-object p0
.end method

.method public final parseOrNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/json/JSONObject;

    invoke-static {p0, p1}, Lio/appmetrica/analytics/coreapi/internal/data/JsonParser$DefaultImpls;->parseOrNull(Lio/appmetrica/analytics/coreapi/internal/data/JsonParser;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/screenshot/internal/ServiceSideScreenshotConfigWrapper;

    return-object p0
.end method
