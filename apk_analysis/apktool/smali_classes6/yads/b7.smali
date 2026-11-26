.class public final Lyads/b7;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ljava/util/Map$Entry;Lld4;)Lj59;
    .locals 2

    .line 228
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/q7;

    .line 229
    iget v0, v0, Lyads/q7;->a:I

    .line 230
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "usagePercent"

    invoke-static {p1, v1, v0}, Lqc4;->f(Lld4;Ljava/lang/String;Ljava/lang/Number;)V

    .line 231
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lyads/q7;

    .line 232
    iget-boolean p0, p0, Lyads/q7;->b:Z

    .line 233
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v0, "isDisabled"

    invoke-static {p1, v0, p0}, Lqc4;->e(Lld4;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 234
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/n7;Lbc4;)Lj59;
    .locals 3

    .line 239
    iget-object p0, p0, Lyads/n7;->g:Ljava/util/Set;

    .line 240
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 241
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 242
    sget-object v1, Lrc4;->a:Li54;

    if-nez v0, :cond_0

    .line 243
    sget-object v0, Lgd4;->INSTANCE:Lgd4;

    goto :goto_1

    .line 244
    :cond_0
    new-instance v1, Lcd4;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcd4;-><init>(Ljava/lang/Object;Z)V

    move-object v0, v1

    .line 245
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 246
    iget-object v1, p1, Lbc4;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 247
    :cond_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lyads/n7;Lld4;)Lj59;
    .locals 3

    .line 218
    iget-object p0, p0, Lyads/n7;->h:Ljava/util/Map;

    .line 219
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 220
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 221
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 222
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 223
    new-instance v2, Lld4;

    invoke-direct {v2}, Lld4;-><init>()V

    .line 224
    invoke-static {v0, v2}, Lyads/b7;->a(Ljava/util/Map$Entry;Lld4;)Lj59;

    .line 225
    new-instance v0, Ljd4;

    iget-object v2, v2, Lld4;->a:Ljava/util/LinkedHashMap;

    invoke-direct {v0, v2}, Ljd4;-><init>(Ljava/util/Map;)V

    .line 226
    invoke-virtual {p1, v1, v0}, Lld4;->a(Ljava/lang/String;Loc4;)Loc4;

    goto :goto_0

    .line 227
    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static a(Lyads/n7;)Ljava/lang/String;
    .locals 4

    if-eqz p0, :cond_1

    .line 248
    new-instance v0, Lld4;

    invoke-direct {v0}, Lld4;-><init>()V

    .line 249
    iget-boolean v1, p0, Lyads/n7;->a:Z

    .line 250
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isEnabled"

    invoke-static {v0, v2, v1}, Lqc4;->e(Lld4;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 251
    iget-boolean v1, p0, Lyads/n7;->b:Z

    .line 252
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isInDebug"

    invoke-static {v0, v2, v1}, Lqc4;->e(Lld4;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 253
    iget-object v1, p0, Lyads/n7;->c:Ljava/lang/String;

    .line 254
    sget-object v2, Lrc4;->a:Li54;

    if-nez v1, :cond_0

    .line 255
    sget-object v1, Lgd4;->INSTANCE:Lgd4;

    goto :goto_0

    .line 256
    :cond_0
    new-instance v2, Lcd4;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lcd4;-><init>(Ljava/lang/Object;Z)V

    move-object v1, v2

    .line 257
    :goto_0
    const-string v2, "apiKey"

    invoke-virtual {v0, v2, v1}, Lld4;->a(Ljava/lang/String;Loc4;)Loc4;

    .line 258
    iget-wide v1, p0, Lyads/n7;->d:J

    .line 259
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "validationTimeoutInSec"

    invoke-static {v0, v2, v1}, Lqc4;->f(Lld4;Ljava/lang/String;Ljava/lang/Number;)V

    .line 260
    iget v1, p0, Lyads/n7;->e:I

    .line 261
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "usagePercent"

    invoke-static {v0, v2, v1}, Lqc4;->f(Lld4;Ljava/lang/String;Ljava/lang/Number;)V

    .line 262
    iget-boolean v1, p0, Lyads/n7;->f:Z

    .line 263
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "willBlockAdOnInternalError"

    invoke-static {v0, v2, v1}, Lqc4;->e(Lld4;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 264
    new-instance v1, Lbc4;

    invoke-direct {v1}, Lbc4;-><init>()V

    .line 265
    invoke-static {p0, v1}, Lyads/b7;->a(Lyads/n7;Lbc4;)Lj59;

    .line 266
    new-instance v2, Lzb4;

    iget-object v1, v1, Lbc4;->a:Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Lzb4;-><init>(Ljava/util/List;)V

    .line 267
    const-string v1, "enabledAdUnits"

    invoke-virtual {v0, v1, v2}, Lld4;->a(Ljava/lang/String;Loc4;)Loc4;

    .line 268
    new-instance v1, Lld4;

    invoke-direct {v1}, Lld4;-><init>()V

    .line 269
    invoke-static {p0, v1}, Lyads/b7;->a(Lyads/n7;Lld4;)Lj59;

    .line 270
    new-instance p0, Ljd4;

    iget-object v1, v1, Lld4;->a:Ljava/util/LinkedHashMap;

    invoke-direct {p0, v1}, Ljd4;-><init>(Ljava/util/Map;)V

    .line 271
    const-string v1, "adNetworksCustomParameters"

    invoke-virtual {v0, v1, p0}, Lld4;->a(Ljava/lang/String;Loc4;)Loc4;

    .line 272
    new-instance p0, Ljd4;

    iget-object v0, v0, Lld4;->a:Ljava/util/LinkedHashMap;

    invoke-direct {p0, v0}, Ljd4;-><init>(Ljava/util/Map;)V

    .line 273
    invoke-virtual {p0}, Ljd4;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Lyads/n7;
    .locals 1

    .line 235
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lyads/b7;->a(Lorg/json/JSONObject;)Lyads/n7;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 236
    new-instance v0, Lk57$a;

    invoke-direct {v0, p0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object p0, v0

    .line 237
    :goto_0
    nop

    instance-of v0, p0, Lk57$a;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    .line 238
    :cond_0
    check-cast p0, Lyads/n7;

    return-object p0
.end method

.method public static a(Lorg/json/JSONObject;)Lyads/n7;
    .locals 19

    move-object/from16 v1, p0

    const-string v0, "usagePercent"

    if-eqz v1, :cond_9

    :try_start_0
    new-instance v3, Lyads/n7;

    const-string v4, "isEnabled"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "isInDebug"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "apiKey"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "validationTimeoutInSec"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    const-string v10, "willBlockAdOnInternalError"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    const-string v11, "enabledAdUnits"

    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    if-eqz v11, :cond_2

    new-instance v12, Lir7;

    invoke-direct {v12}, Lir7;-><init>()V

    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v13

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v13, :cond_1

    invoke-virtual {v11, v14}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_0

    invoke-virtual {v12, v15}, Lir7;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    const/16 v16, 0x0

    goto/16 :goto_5

    :cond_0
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v12}, Ll1;->d(Lir7;)Lir7;

    move-result-object v11

    goto :goto_2

    :cond_2
    const/4 v11, 0x0

    :goto_2
    if-nez v11, :cond_3

    sget-object v11, Lox2;->b:Lox2;

    :cond_3
    const-string v12, "adNetworksCustomParameters"

    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    if-eqz v12, :cond_5

    new-instance v13, Luz4;

    invoke-direct {v13}, Luz4;-><init>()V

    invoke-virtual {v12}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v14

    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v16, 0x0

    :try_start_1
    invoke-virtual {v12, v15}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v1, Lyads/q7;

    move-object/from16 v17, v3

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v18, v0

    const-string v0, "isDisabled"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {v1, v3, v0}, Lyads/q7;-><init>(IZ)V

    invoke-virtual {v13, v15, v1}, Luz4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, p0

    move-object/from16 v3, v17

    move-object/from16 v0, v18

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_5

    :cond_4
    move-object/from16 v17, v3

    const/16 v16, 0x0

    invoke-virtual {v13}, Luz4;->b()Luz4;

    move-result-object v0

    goto :goto_4

    :cond_5
    move-object/from16 v17, v3

    const/16 v16, 0x0

    move-object/from16 v0, v16

    :goto_4
    if-nez v0, :cond_6

    sget-object v0, Lmx2;->b:Lmx2;

    :cond_6
    move-object v12, v0

    move-object/from16 v3, v17

    invoke-direct/range {v3 .. v12}, Lyads/n7;-><init>(ZZLjava/lang/String;JIZLjava/util/Set;Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v17, v3

    move-object/from16 v3, v17

    goto :goto_6

    :goto_5
    new-instance v3, Lk57$a;

    invoke-direct {v3, v0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    :goto_6
    invoke-static {v3}, Lk57;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    :cond_7
    instance-of v0, v3, Lk57$a;

    if-eqz v0, :cond_8

    move-object/from16 v2, v16

    goto :goto_7

    :cond_8
    move-object v2, v3

    :goto_7
    check-cast v2, Lyads/n7;

    return-object v2

    :cond_9
    const/16 v16, 0x0

    return-object v16
.end method
