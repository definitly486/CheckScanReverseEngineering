.class public final Lio/appmetrica/analytics/idsync/impl/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/JsonParser;


# instance fields
.field public final a:Lio/appmetrica/analytics/idsync/impl/f;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;

.field public final n:Ljava/lang/String;

.field public final o:Ljava/lang/String;

.field public final p:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/idsync/impl/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/idsync/impl/d;->a:Lio/appmetrica/analytics/idsync/impl/f;

    const-string p1, "id_sync"

    iput-object p1, p0, Lio/appmetrica/analytics/idsync/impl/d;->b:Ljava/lang/String;

    iput-object p1, p0, Lio/appmetrica/analytics/idsync/impl/d;->c:Ljava/lang/String;

    const-string p1, "launch_delay_seconds"

    iput-object p1, p0, Lio/appmetrica/analytics/idsync/impl/d;->d:Ljava/lang/String;

    const-string p1, "requests"

    iput-object p1, p0, Lio/appmetrica/analytics/idsync/impl/d;->e:Ljava/lang/String;

    const-string p1, "type"

    iput-object p1, p0, Lio/appmetrica/analytics/idsync/impl/d;->f:Ljava/lang/String;

    const-string p1, "url"

    iput-object p1, p0, Lio/appmetrica/analytics/idsync/impl/d;->g:Ljava/lang/String;

    const-string p1, "headers"

    iput-object p1, p0, Lio/appmetrica/analytics/idsync/impl/d;->h:Ljava/lang/String;

    const-string p1, "resend_interval_for_valid_response"

    iput-object p1, p0, Lio/appmetrica/analytics/idsync/impl/d;->i:Ljava/lang/String;

    const-string p1, "resend_interval_for_invalid_response"

    iput-object p1, p0, Lio/appmetrica/analytics/idsync/impl/d;->j:Ljava/lang/String;

    const-string p1, "valid_response_codes"

    iput-object p1, p0, Lio/appmetrica/analytics/idsync/impl/d;->k:Ljava/lang/String;

    const-string p1, "preconditions"

    iput-object p1, p0, Lio/appmetrica/analytics/idsync/impl/d;->l:Ljava/lang/String;

    const-string p1, "network"

    iput-object p1, p0, Lio/appmetrica/analytics/idsync/impl/d;->m:Ljava/lang/String;

    const-string p1, "cell"

    iput-object p1, p0, Lio/appmetrica/analytics/idsync/impl/d;->n:Ljava/lang/String;

    const-string p1, "report_event_enabled"

    iput-object p1, p0, Lio/appmetrica/analytics/idsync/impl/d;->o:Ljava/lang/String;

    const-string p1, "report_url"

    iput-object p1, p0, Lio/appmetrica/analytics/idsync/impl/d;->p:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)Lio/appmetrica/analytics/idsync/impl/c;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lio/appmetrica/analytics/idsync/impl/d;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    new-instance v3, Lio/appmetrica/analytics/idsync/impl/p;

    invoke-direct {v3}, Lio/appmetrica/analytics/idsync/impl/p;-><init>()V

    iget-object v4, v0, Lio/appmetrica/analytics/idsync/impl/d;->b:Ljava/lang/String;

    iget-boolean v5, v3, Lio/appmetrica/analytics/idsync/impl/p;->a:Z

    invoke-static {v1, v4, v5}, Lio/appmetrica/analytics/coreutils/internal/parsing/RemoteConfigJsonUtils;->extractFeature(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v3, Lio/appmetrica/analytics/idsync/impl/p;->a:Z

    new-instance v1, Lio/appmetrica/analytics/idsync/impl/o;

    invoke-direct {v1}, Lio/appmetrica/analytics/idsync/impl/o;-><init>()V

    iget-object v4, v0, Lio/appmetrica/analytics/idsync/impl/d;->d:Ljava/lang/String;

    iget-wide v5, v1, Lio/appmetrica/analytics/idsync/impl/o;->a:J

    invoke-static {v2, v4, v5, v6}, Lio/appmetrica/analytics/coreutils/internal/parsing/RemoteConfigJsonUtils;->extractMillisFromSecondsOrDefault(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v1, Lio/appmetrica/analytics/idsync/impl/o;->a:J

    iget-object v4, v0, Lio/appmetrica/analytics/idsync/impl/d;->e:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v4, 0x0

    if-nez v2, :cond_1

    new-array v2, v4, [Lio/appmetrica/analytics/idsync/impl/n;

    goto/16 :goto_c

    :cond_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    new-array v6, v5, [Lio/appmetrica/analytics/idsync/impl/n;

    move v7, v4

    :goto_0
    if-ge v7, v5, :cond_f

    invoke-virtual {v2, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    new-instance v9, Lio/appmetrica/analytics/idsync/impl/n;

    invoke-direct {v9}, Lio/appmetrica/analytics/idsync/impl/n;-><init>()V

    if-nez v8, :cond_2

    move-object/from16 v17, v2

    move/from16 v16, v4

    goto/16 :goto_b

    :cond_2
    iget-object v10, v0, Lio/appmetrica/analytics/idsync/impl/d;->f:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lha1;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    iput-object v10, v9, Lio/appmetrica/analytics/idsync/impl/n;->a:[B

    iget-object v10, v0, Lio/appmetrica/analytics/idsync/impl/d;->l:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    new-instance v12, Lio/appmetrica/analytics/idsync/impl/m;

    invoke-direct {v12}, Lio/appmetrica/analytics/idsync/impl/m;-><init>()V

    const/4 v13, 0x1

    if-nez v10, :cond_3

    goto :goto_1

    :cond_3
    iget-object v14, v0, Lio/appmetrica/analytics/idsync/impl/d;->m:Ljava/lang/String;

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v14, v0, Lio/appmetrica/analytics/idsync/impl/d;->n:Ljava/lang/String;

    invoke-static {v10, v14}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    iput v13, v12, Lio/appmetrica/analytics/idsync/impl/m;->a:I

    :cond_4
    :goto_1
    iput-object v12, v9, Lio/appmetrica/analytics/idsync/impl/n;->b:Lio/appmetrica/analytics/idsync/impl/m;

    iget-object v10, v0, Lio/appmetrica/analytics/idsync/impl/d;->g:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    iput-object v10, v9, Lio/appmetrica/analytics/idsync/impl/n;->c:[B

    iget-object v10, v0, Lio/appmetrica/analytics/idsync/impl/d;->h:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    if-nez v10, :cond_5

    new-array v10, v4, [Lio/appmetrica/analytics/idsync/impl/l;

    move-object/from16 v17, v2

    goto :goto_5

    :cond_5
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v10}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    new-instance v15, Lio/appmetrica/analytics/idsync/impl/l;

    invoke-direct {v15}, Lio/appmetrica/analytics/idsync/impl/l;-><init>()V

    sget-object v13, Lha1;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v14, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v13

    iput-object v13, v15, Lio/appmetrica/analytics/idsync/impl/l;->a:[B

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    if-nez v13, :cond_6

    new-array v13, v4, [[B

    move-object/from16 v17, v2

    goto :goto_4

    :cond_6
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v14

    new-array v4, v14, [[B

    move-object/from16 v17, v2

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v14, :cond_7

    move-object/from16 v18, v4

    invoke-virtual {v13, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    move/from16 v19, v2

    sget-object v2, Lha1;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    aput-object v2, v18, v19

    add-int/lit8 v2, v19, 0x1

    move-object/from16 v4, v18

    goto :goto_3

    :cond_7
    move-object/from16 v18, v4

    move-object/from16 v13, v18

    :goto_4
    iput-object v13, v15, Lio/appmetrica/analytics/idsync/impl/l;->b:[[B

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v17

    const/4 v4, 0x0

    const/4 v13, 0x1

    goto :goto_2

    :cond_8
    move-object/from16 v17, v2

    move v2, v4

    new-array v4, v2, [Lio/appmetrica/analytics/idsync/impl/l;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, [Lio/appmetrica/analytics/idsync/impl/l;

    :goto_5
    iput-object v10, v9, Lio/appmetrica/analytics/idsync/impl/n;->d:[Lio/appmetrica/analytics/idsync/impl/l;

    iget-object v2, v0, Lio/appmetrica/analytics/idsync/impl/d;->i:Ljava/lang/String;

    iget-wide v10, v9, Lio/appmetrica/analytics/idsync/impl/n;->e:J

    invoke-static {v8, v2, v10, v11}, Lio/appmetrica/analytics/coreutils/internal/parsing/RemoteConfigJsonUtils;->extractMillisFromSecondsOrDefault(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v10

    iput-wide v10, v9, Lio/appmetrica/analytics/idsync/impl/n;->e:J

    iget-object v2, v0, Lio/appmetrica/analytics/idsync/impl/d;->j:Ljava/lang/String;

    iget-wide v10, v9, Lio/appmetrica/analytics/idsync/impl/n;->f:J

    invoke-static {v8, v2, v10, v11}, Lio/appmetrica/analytics/coreutils/internal/parsing/RemoteConfigJsonUtils;->extractMillisFromSecondsOrDefault(Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v10

    iput-wide v10, v9, Lio/appmetrica/analytics/idsync/impl/n;->f:J

    iget-object v2, v0, Lio/appmetrica/analytics/idsync/impl/d;->k:Ljava/lang/String;

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-nez v2, :cond_9

    const/4 v4, 0x0

    new-array v2, v4, [I

    goto :goto_7

    :cond_9
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v10, v4, [I

    const/4 v11, 0x0

    :goto_6
    if-ge v11, v4, :cond_a

    invoke-virtual {v2, v11}, Lorg/json/JSONArray;->optInt(I)I

    move-result v12

    aput v12, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_a
    move-object v2, v10

    :goto_7
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    array-length v10, v2

    const/4 v11, 0x0

    :goto_8
    if-ge v11, v10, :cond_c

    aget v12, v2, v11

    if-eqz v12, :cond_b

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    :cond_c
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_9

    :cond_d
    const/4 v4, 0x0

    :goto_9
    if-eqz v4, :cond_e

    invoke-static {v4}, Lqn1;->s0(Ljava/util/Collection;)[I

    move-result-object v2

    const/16 v16, 0x0

    goto :goto_a

    :cond_e
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/16 v4, 0xc8

    const/16 v16, 0x0

    aput v4, v2, v16

    :goto_a
    iput-object v2, v9, Lio/appmetrica/analytics/idsync/impl/n;->g:[I

    iget-object v2, v0, Lio/appmetrica/analytics/idsync/impl/d;->o:Ljava/lang/String;

    iget-boolean v4, v9, Lio/appmetrica/analytics/idsync/impl/n;->h:Z

    invoke-virtual {v8, v2, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v9, Lio/appmetrica/analytics/idsync/impl/n;->h:Z

    iget-object v2, v0, Lio/appmetrica/analytics/idsync/impl/d;->p:Ljava/lang/String;

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lio/appmetrica/analytics/idsync/impl/n;->i:Ljava/lang/String;

    :goto_b
    aput-object v9, v6, v7

    add-int/lit8 v7, v7, 0x1

    move/from16 v4, v16

    move-object/from16 v2, v17

    goto/16 :goto_0

    :cond_f
    move-object v2, v6

    :goto_c
    iput-object v2, v1, Lio/appmetrica/analytics/idsync/impl/o;->b:[Lio/appmetrica/analytics/idsync/impl/n;

    iput-object v1, v3, Lio/appmetrica/analytics/idsync/impl/p;->b:Lio/appmetrica/analytics/idsync/impl/o;

    iget-object v0, v0, Lio/appmetrica/analytics/idsync/impl/d;->a:Lio/appmetrica/analytics/idsync/impl/f;

    invoke-virtual {v0, v3}, Lio/appmetrica/analytics/idsync/impl/f;->a(Lio/appmetrica/analytics/idsync/impl/p;)Lio/appmetrica/analytics/idsync/impl/c;

    move-result-object v0

    return-object v0
.end method

.method public final b(Lorg/json/JSONObject;)Lio/appmetrica/analytics/idsync/impl/c;
    .locals 0

    invoke-static {p0, p1}, Lio/appmetrica/analytics/coreapi/internal/data/JsonParser$DefaultImpls;->parseOrNull(Lio/appmetrica/analytics/coreapi/internal/data/JsonParser;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/idsync/impl/c;

    return-object p0
.end method

.method public final bridge synthetic parse(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/idsync/impl/d;->a(Lorg/json/JSONObject;)Lio/appmetrica/analytics/idsync/impl/c;

    move-result-object p0

    return-object p0
.end method

.method public final parseOrNull(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/json/JSONObject;

    invoke-static {p0, p1}, Lio/appmetrica/analytics/coreapi/internal/data/JsonParser$DefaultImpls;->parseOrNull(Lio/appmetrica/analytics/coreapi/internal/data/JsonParser;Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/appmetrica/analytics/idsync/impl/c;

    return-object p0
.end method
