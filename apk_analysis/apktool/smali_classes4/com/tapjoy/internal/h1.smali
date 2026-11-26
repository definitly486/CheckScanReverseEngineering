.class public final Lcom/tapjoy/internal/h1;
.super Lcom/tapjoy/internal/e1;
.source "SourceFile"


# instance fields
.field public final i:Ljava/lang/Integer;

.field public final j:Lcom/tapjoy/internal/r2;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tapjoy/internal/e1;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/internal/h1;->i:Ljava/lang/Integer;

    new-instance v0, Lcom/tapjoy/internal/r2;

    invoke-direct {v0}, Lcom/tapjoy/internal/r2;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/h1;->j:Lcom/tapjoy/internal/r2;

    sget-object v0, Lcom/tapjoy/TJUser;->INSTANCE:Lcom/tapjoy/TJUser;

    invoke-virtual {v0}, Lcom/tapjoy/TJUser;->checkIfMaxLevelRequired()V

    invoke-virtual {v0}, Lcom/tapjoy/TJUser;->getMaxLevelParam()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/h1;->i:Ljava/lang/Integer;

    return-void
.end method

.method public static final a(Z)Lj59;
    .locals 2

    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Connect onCachingComplete: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method

.method public static final a(Lcom/tapjoy/TJConnectListener;)V
    .locals 0

    .line 506
    invoke-virtual {p0}, Lcom/tapjoy/TJConnectListener;->onConnectSuccess()V

    return-void
.end method

.method public static final b(Lcom/tapjoy/TJConnectListener;)V
    .locals 2

    const/4 v0, 0x0

    .line 27
    const-string v1, "Connect Failure"

    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/TJConnectListener;->onConnectFailure(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/tapjoy/TJConnectListener;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v3

    const-string v4, "TJC_OPTION_USER_ID"

    invoke-virtual {v3, v4}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xc8

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    iget-object v7, v0, Lcom/tapjoy/internal/e1;->g:Lcom/tapjoy/internal/y1;

    if-ge v6, v4, :cond_1

    iput-object v3, v7, Lcom/tapjoy/internal/y1;->a:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iput-object v5, v7, Lcom/tapjoy/internal/y1;->a:Ljava/lang/String;

    :cond_2
    :goto_0
    iget-object v6, v0, Lcom/tapjoy/internal/h1;->j:Lcom/tapjoy/internal/r2;

    iget-object v7, v0, Lcom/tapjoy/internal/e1;->h:Ljava/lang/String;

    const-string v8, "api/connect/v4"

    invoke-static {v7, v8}, Lni0;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/tapjoy/internal/e1;->a()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v0}, Lcom/tapjoy/internal/h1;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8, v7, v0}, Lcom/tapjoy/internal/r2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/tapjoy/internal/s2;

    move-result-object v0

    iget v6, v0, Lcom/tapjoy/internal/s2;->a:I

    if-ne v6, v4, :cond_19

    iget-object v4, v0, Lcom/tapjoy/internal/s2;->b:Ljava/lang/String;

    if-eqz v4, :cond_19

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    goto/16 :goto_10

    :cond_3
    new-instance v4, Lorg/json/JSONObject;

    iget-object v0, v0, Lcom/tapjoy/internal/s2;->b:Ljava/lang/String;

    if-nez v0, :cond_4

    const-string v0, "{}"

    :cond_4
    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "managed_device_id"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "app"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const-string v9, "currencies"

    if-eqz v6, :cond_8

    const-string v10, "group_id"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    if-eqz v11, :cond_5

    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v12

    goto :goto_1

    :cond_5
    const/4 v12, 0x0

    :goto_1
    const/4 v13, 0x0

    :goto_2
    if-ge v13, v12, :cond_9

    if-eqz v11, :cond_6

    invoke-virtual {v11, v13}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    goto :goto_3

    :cond_6
    move-object v14, v5

    :goto_3
    if-eqz v14, :cond_7

    new-instance v15, Lcom/tapjoy/internal/y0;

    invoke-direct {v15, v14}, Lcom/tapjoy/internal/y0;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v8, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_8
    move-object v10, v5

    :cond_9
    const-string v11, "sdk"

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    if-eqz v12, :cond_e

    const-string v14, "store"

    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "placement_request_content_retry_timeout"

    invoke-virtual {v12, v15}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    const-string v5, "logging_level"

    invoke-virtual {v12, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "error_enabled"

    invoke-virtual {v12, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    const-string v7, "assets"

    invoke-virtual {v12, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    if-eqz v7, :cond_a

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v12

    goto :goto_4

    :cond_a
    const/4 v12, 0x0

    :goto_4
    move-object/from16 v17, v5

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v12, :cond_d

    if-eqz v7, :cond_b

    invoke-virtual {v7, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v18

    move-object/from16 v23, v18

    move/from16 v18, v5

    move-object/from16 v5, v23

    goto :goto_6

    :cond_b
    move/from16 v18, v5

    const/4 v5, 0x0

    :goto_6
    move-object/from16 v19, v7

    if-eqz v5, :cond_c

    new-instance v7, Lcom/tapjoy/internal/c1;

    invoke-direct {v7, v5}, Lcom/tapjoy/internal/c1;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    add-int/lit8 v5, v18, 0x1

    move-object/from16 v7, v19

    goto :goto_5

    :cond_d
    move-object/from16 v5, v17

    goto :goto_7

    :cond_e
    const/4 v5, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_7
    sget-object v7, Lcom/tapjoy/TJAppInfo;->INSTANCE:Lcom/tapjoy/TJAppInfo;

    invoke-virtual {v7, v10}, Lcom/tapjoy/TJAppInfo;->setAppGroupId(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lcom/tapjoy/TJAppInfo;->setManagedDeviceID(Ljava/lang/String;)V

    sget-object v0, Lcom/tapjoy/TJStore;->INSTANCE:Lcom/tapjoy/TJStore;

    invoke-virtual {v0, v14}, Lcom/tapjoy/TJStore;->setStore(Ljava/lang/String;)V

    sget-object v0, Lcom/tapjoy/TapjoyAppSettings;->INSTANCE:Lcom/tapjoy/TapjoyAppSettings;

    invoke-virtual {v0, v5}, Lcom/tapjoy/TapjoyAppSettings;->saveLoggingLevel(Ljava/lang/String;)V

    if-eqz v1, :cond_f

    new-instance v0, Lcom/tapjoy/TapjoyCache;

    invoke-direct {v0, v1}, Lcom/tapjoy/TapjoyCache;-><init>(Landroid/content/Context;)V

    move-object/from16 v17, v0

    goto :goto_8

    :cond_f
    const/16 v17, 0x0

    :goto_8
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v5, 0x0

    :cond_10
    :goto_9
    if-ge v5, v0, :cond_12

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v5, v5, 0x1

    check-cast v7, Lcom/tapjoy/internal/c1;

    if-eqz v17, :cond_10

    iget-object v10, v7, Lcom/tapjoy/internal/c1;->a:Ljava/lang/String;

    iget-object v7, v7, Lcom/tapjoy/internal/c1;->b:Ljava/lang/Long;

    if-eqz v7, :cond_11

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    :goto_a
    move-wide/from16 v20, v18

    goto :goto_b

    :cond_11
    const-wide/16 v18, 0x0

    goto :goto_a

    :goto_b
    new-instance v7, Lbf;

    const/4 v12, 0x3

    invoke-direct {v7, v12}, Lbf;-><init>(I)V

    const/16 v19, 0x0

    move-object/from16 v22, v7

    move-object/from16 v18, v10

    invoke-virtual/range {v17 .. v22}, Lcom/tapjoy/TapjoyCache;->cacheUrl(Ljava/lang/String;Ljava/lang/String;JLnl3;)V

    goto :goto_9

    :cond_12
    if-eqz v15, :cond_13

    invoke-virtual {v15}, Ljava/lang/Number;->longValue()J

    move-result-wide v12

    sget-object v0, Lcom/tapjoy/internal/i2;->c:Lcom/tapjoy/internal/i2;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/tapjoy/internal/i2;->a(Ljava/lang/Long;)V

    :cond_13
    sget-boolean v0, Lcom/tapjoy/internal/AppUsageForegroundService;->b:Z

    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v4, 0x1

    invoke-static {v1, v0, v4}, Lcom/tapjoy/internal/j;->a(Landroid/content/Context;Lorg/json/JSONObject;Z)V

    const/4 v0, 0x0

    invoke-static {v0, v8}, Lqn1;->W(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tapjoy/internal/y0;

    if-eqz v1, :cond_16

    const-string v7, "tjcPrefrences"

    invoke-virtual {v1, v7, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz v0, :cond_16

    if-eqz v5, :cond_14

    iget-object v1, v5, Lcom/tapjoy/internal/y0;->a:Ljava/lang/String;

    goto :goto_c

    :cond_14
    const/4 v1, 0x0

    :goto_c
    const-string v5, "self_managed"

    invoke-static {v1, v5, v4}, Lra8;->v(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz v0, :cond_16

    if-eqz v6, :cond_15

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_d

    :cond_15
    const/4 v5, 0x0

    :goto_d
    const-string v1, "server_currency_ids"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_16
    if-eqz v3, :cond_18

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_17

    goto :goto_e

    :cond_17
    sget-object v0, Lcom/tapjoy/TJUser;->INSTANCE:Lcom/tapjoy/TJUser;

    new-instance v1, Lcom/tapjoy/internal/g1;

    invoke-direct {v1, v2}, Lcom/tapjoy/internal/g1;-><init>(Lcom/tapjoy/TJConnectListener;)V

    invoke-virtual {v0, v3, v1}, Lcom/tapjoy/TJUser;->setUserIdRequest(Ljava/lang/String;Lcom/tapjoy/TJSetUserIDListener;)V

    goto :goto_f

    :cond_18
    :goto_e
    new-instance v0, Lom9;

    invoke-direct {v0, v2, v4}, Lom9;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    :goto_f
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/tapjoy/TapjoyConnectCore;->setConnected(Z)V

    sget-object v0, Lcom/tapjoy/internal/s;->a:Lcom/tapjoy/internal/r;

    invoke-virtual {v0}, Lcom/tapjoy/internal/r;->notifyObservers()V

    sget-object v0, Lcom/tapjoy/internal/s;->b:Lcom/tapjoy/internal/r;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/r;->notifyObservers(Ljava/lang/Object;)V

    return-void

    :cond_19
    :goto_10
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tapjoy/TapjoyConnectCore;->setConnected(Z)V

    new-instance v0, Las1;

    const/4 v1, 0x2

    invoke-direct {v0, v2, v1}, Las1;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/tapjoy/internal/s;->b:Lcom/tapjoy/internal/r;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/r;->notifyObservers(Ljava/lang/Object;)V

    return-void
.end method

.method public final b()Lorg/json/JSONObject;
    .locals 3

    invoke-super {p0}, Lcom/tapjoy/internal/e1;->b()Lorg/json/JSONObject;

    move-result-object v0

    :try_start_0
    const-string v1, "user"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "max_level"

    iget-object p0, p0, Lcom/tapjoy/internal/h1;->i:Ljava/lang/Integer;

    invoke-static {v1, v2, p0}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string p0, "Failed to load JSON object from connect request."

    invoke-static {p0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;)V

    return-object v0
.end method
