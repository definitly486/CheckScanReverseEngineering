.class public final Lio/appmetrica/analytics/idsync/impl/L;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/Converter;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "request_state"

    iput-object v0, p0, Lio/appmetrica/analytics/idsync/impl/L;->a:Ljava/lang/String;

    const-string v0, "type"

    iput-object v0, p0, Lio/appmetrica/analytics/idsync/impl/L;->b:Ljava/lang/String;

    const-string v0, "last_attempt"

    iput-object v0, p0, Lio/appmetrica/analytics/idsync/impl/L;->c:Ljava/lang/String;

    const-string v0, "prev_attempt_result"

    iput-object v0, p0, Lio/appmetrica/analytics/idsync/impl/L;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)Lio/appmetrica/analytics/idsync/impl/K;
    .locals 9

    const/4 v0, 0x0

    .line 94
    :try_start_0
    new-instance v1, Lio/appmetrica/analytics/idsync/impl/K;

    .line 95
    iget-object v2, p0, Lio/appmetrica/analytics/idsync/impl/L;->b:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 96
    iget-object v3, p0, Lio/appmetrica/analytics/idsync/impl/L;->c:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 97
    sget-object v5, Lio/appmetrica/analytics/idsync/impl/F;->b:Lio/appmetrica/analytics/idsync/impl/E;

    iget-object p0, p0, Lio/appmetrica/analytics/idsync/impl/L;->d:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    invoke-static {}, Lio/appmetrica/analytics/idsync/impl/F;->values()[Lio/appmetrica/analytics/idsync/impl/F;

    move-result-object p1

    .line 99
    array-length v5, p1

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, p1, v6

    .line 100
    iget-object v8, v7, Lio/appmetrica/analytics/idsync/impl/F;->a:Ljava/lang/String;

    .line 101
    invoke-static {v8, p0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    move-object v7, v0

    :goto_1
    if-nez v7, :cond_2

    sget-object v7, Lio/appmetrica/analytics/idsync/impl/F;->c:Lio/appmetrica/analytics/idsync/impl/F;

    .line 102
    :cond_2
    invoke-direct {v1, v2, v3, v4, v7}, Lio/appmetrica/analytics/idsync/impl/K;-><init>(Ljava/lang/String;JLio/appmetrica/analytics/idsync/impl/F;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    return-object v0
.end method

.method public final a(Ljava/util/List;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/appmetrica/analytics/idsync/impl/K;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lio/appmetrica/analytics/idsync/impl/L;->a:Ljava/lang/String;

    if-eqz p1, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p1, v3}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/appmetrica/analytics/idsync/impl/K;

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    iget-object v5, p0, Lio/appmetrica/analytics/idsync/impl/L;->b:Ljava/lang/String;

    iget-object v6, v3, Lio/appmetrica/analytics/idsync/impl/K;->a:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v5, p0, Lio/appmetrica/analytics/idsync/impl/L;->c:Ljava/lang/String;

    iget-wide v6, v3, Lio/appmetrica/analytics/idsync/impl/K;->b:J

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object v5, p0, Lio/appmetrica/analytics/idsync/impl/L;->d:Ljava/lang/String;

    iget-object v3, v3, Lio/appmetrica/analytics/idsync/impl/K;->c:Lio/appmetrica/analytics/idsync/impl/F;

    iget-object v3, v3, Lio/appmetrica/analytics/idsync/impl/F;->a:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :goto_1
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object v2, Lkx2;->b:Lkx2;

    :cond_1
    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lio/appmetrica/analytics/idsync/impl/K;",
            ">;"
        }
    .end annotation

    .line 89
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 90
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lio/appmetrica/analytics/idsync/impl/L;->a:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 91
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 92
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v3}, Lio/appmetrica/analytics/idsync/impl/L;->a(Lorg/json/JSONObject;)Lio/appmetrica/analytics/idsync/impl/K;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    .line 93
    :catchall_0
    sget-object p0, Lkx2;->b:Lkx2;

    return-object p0
.end method

.method public final bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/idsync/impl/L;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/idsync/impl/L;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
