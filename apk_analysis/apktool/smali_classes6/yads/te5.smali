.class public final Lyads/te5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/a85;


# instance fields
.field public final a:Lyads/zg5;

.field public final b:Lyads/we5;

.field public final c:Lyads/re5;

.field public final d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/q84;)V
    .locals 2

    sget-object v0, Lyads/zg5;->l:Lyads/zg5;

    if-nez v0, :cond_1

    sget-object v0, Lyads/zg5;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lyads/zg5;->l:Lyads/zg5;

    if-nez v1, :cond_0

    new-instance v1, Lyads/zg5;

    invoke-direct {v1}, Lyads/zg5;-><init>()V

    sput-object v1, Lyads/zg5;->l:Lyads/zg5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    move-object v0, v1

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw p0

    :cond_1
    :goto_2
    new-instance v1, Lyads/we5;

    invoke-direct {v1, p2}, Lyads/we5;-><init>(Lyads/q84;)V

    new-instance p2, Lyads/re5;

    invoke-direct {p2}, Lyads/re5;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/te5;->a:Lyads/zg5;

    iput-object v1, p0, Lyads/te5;->b:Lyads/we5;

    iput-object p2, p0, Lyads/te5;->c:Lyads/re5;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lyads/te5;->d:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Lyads/en4;)Ljava/lang/Object;
    .locals 115

    move-object/from16 v0, p1

    const-string v1, "font"

    const-string v2, "mediation_sensitive_mode_disabled"

    move-object/from16 v3, p0

    iget-object v3, v3, Lyads/te5;->b:Lyads/we5;

    iget-object v4, v3, Lyads/we5;->b:Lyads/mi6;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lyads/a95;

    iget v5, v0, Lyads/en4;->a:I

    new-instance v6, Lyads/b95;

    iget-object v7, v0, Lyads/en4;->b:[B

    invoke-direct {v6, v7}, Lyads/b95;-><init>([B)V

    iget-object v0, v0, Lyads/en4;->c:Ljava/util/Map;

    if-nez v0, :cond_0

    sget-object v0, Lmx2;->b:Lmx2;

    :cond_0
    invoke-direct {v4, v5, v6, v0}, Lyads/a95;-><init>(ILyads/b95;Ljava/util/Map;)V

    iget-object v3, v3, Lyads/we5;->a:Lyads/ve5;

    iget-object v0, v3, Lyads/ve5;->b:Lyads/ws5;

    invoke-virtual {v0, v4}, Lyads/ws5;->a(Lyads/a95;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_14

    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "custom_click_handling_enabled"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v15

    const-string v0, "legacy_visibility_logic_enabled"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v20

    const-string v0, "legacy_vast_tracking_enabled"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v21

    const-string v0, "overlapping_view_tracking_enabled"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v22

    const-string v0, "overlapping_window_tracking_enabled"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v23

    const-string v0, "open_measurement_sdk_disabled"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v32

    const-string v0, "visibility_error_indicator_enabled"

    sget-object v6, Lyads/zq3;->a:Lxb4;

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    move-object/from16 v53, v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_12

    :cond_1
    move-object/from16 v53, v4

    :goto_0
    const-string v0, "mraid_controller"

    invoke-virtual {v5, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v55

    const-string v0, "open_measurement_sdk_controller"

    invoke-virtual {v5, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v56

    const-string v0, "click_handler_type"

    invoke-virtual {v5, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v58

    const-string v0, "ad_host"

    invoke-virtual {v5, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v60

    const-string v0, "divkit_font"

    invoke-virtual {v5, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v61

    const-string v0, "instream_design"

    invoke-virtual {v5, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v59

    const-string v0, "sensitive_mode_disabled"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v18

    const-string v0, "hard_sensitive_mode_enabled"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v19

    const-string v0, "encrypted_requests_enabled"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v37

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    move-object/from16 v62, v0

    goto :goto_1

    :cond_2
    move-object/from16 v62, v4

    :goto_1
    const-string v0, "fused_location_provider_disabled"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v16

    const-string v0, "lock_screen_enabled"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v17

    const-string v0, "impression_validation_on_click_enabled"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v24

    const-string v0, "legacy_slider_impression_enabled"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v25

    const-string v0, "reload_timeout"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    iget-object v0, v3, Lyads/ve5;->c:Lyads/eu5;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v0, v6, v10

    if-lez v0, :cond_3

    const-wide/16 v10, 0x3e8

    mul-long/2addr v6, v10

    goto :goto_2

    :cond_3
    const-wide/32 v6, 0x5265c00

    :goto_2
    add-long v13, v8, v6

    const-string v0, "ad_ids_storage_size"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    const-string v0, "native_web_view_pool_size"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    const-string v0, "max_disk_cache_size_bytes_for_video"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v9

    const-string v0, "max_disk_cache_size_bytes_for_request_queue"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v11

    const-string v0, "ad_request_max_retries"

    invoke-static {v0, v5}, Lyads/zq3;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Integer;

    move-result-object v48

    const-string v0, "ping_request_max_retries"

    invoke-static {v0, v5}, Lyads/zq3;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Integer;

    move-result-object v49

    const-string v0, "show_version_validation_error_log"

    const/4 v2, 0x0

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v27

    const-string v0, "show_version_validation_error_indicator"

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v26

    const-string v0, "fullscreen_back_button_enabled"

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v28

    const-string v0, "location_consent"

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v52

    const-string v0, "divkit_disabled"

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v31

    const-string v0, "libssl_enabled"

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v33

    const-string v0, "light_bundle_script_url"

    invoke-virtual {v5, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    const-string v0, "should_wait_light_bundle_script_loading_on_configuration"

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v35

    const-string v0, "should_start_light_bundle_script_loading_on_configuration"

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v36

    const-string v0, "client_bidding_startup_initialization_enabled"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v64

    const-string v0, "header_bidding_startup_initialization_enabled"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v65

    const-string v0, "bidding_settings"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v6, v3, Lyads/ve5;->e:Lyads/et;

    invoke-virtual {v6, v0}, Lyads/et;->b(Lorg/json/JSONObject;)Lyads/dt;

    move-result-object v0

    move-object/from16 v66, v0

    goto :goto_3

    :cond_4
    move-object/from16 v66, v4

    :goto_3
    const-string v0, "encryption"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v6, v3, Lyads/ve5;->d:Lyads/on2;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_5

    const-string v6, "rsa"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v6, "public_key"

    const-string v4, ""

    invoke-virtual {v0, v6, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "version"

    invoke-static {v6, v0}, Lyads/zq3;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_5

    if-eqz v0, :cond_5

    new-instance v6, Lyads/nn2;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v6, v4, v0}, Lyads/nn2;-><init>(Ljava/lang/String;I)V

    move-object/from16 v63, v6

    goto :goto_4

    :cond_5
    const/16 v63, 0x0

    :goto_4
    const-string v0, "legacy_impression_callback_enabled"

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v30

    const-string v0, "close_fullscreen_with_adtune_disabled"

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v29

    const-string v0, "render_asset_validation_enabled"

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v38

    const-string v0, "automatic_sdk_initialization_delay_enabled"

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v39

    const-string v0, "native_banner_enabled"

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v40

    const-string v0, "use_divkit_close_action_instead_system_click"

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v41

    const-string v0, "banner_size_calculation_type"

    const/4 v4, 0x0

    invoke-virtual {v5, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    const-string v0, "startup_version"

    invoke-virtual {v5, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v67

    const-string v0, "startup_parameters"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v4, v3, Lyads/ve5;->h:Lyads/oq5;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lyads/oq5;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    move-object/from16 v68, v0

    goto :goto_5

    :cond_6
    const/16 v68, 0x0

    :goto_5
    const-string v0, "app_open_ad_preloading_enabled"

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v42

    const-string v0, "interstitial_preloading_enabled"

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v43

    const-string v0, "rewarded_preloading_enabled"

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v44

    const-string v0, "new_false_click_tracking_enabled"

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v45

    const-string v0, "app_start_false_click_interval_check_enabled"

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v46

    const-string v0, "varioqub_enabled"

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v47

    const-string v0, "crash_tracker_enabled"

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v69

    const-string v0, "error_tracker_enabled"

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v70

    const-string v0, "anr_tracker_enabled"

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v71
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v0, "anr_tracker_interval"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v50

    invoke-static/range {v50 .. v51}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    :try_start_2
    new-instance v4, Lk57$a;

    invoke-direct {v4, v0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v4

    :goto_6
    nop

    instance-of v4, v0, Lk57$a;

    if-eqz v4, :cond_7

    const/4 v0, 0x0

    :cond_7
    move-object/from16 v72, v0

    check-cast v72, Ljava/lang/Long;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    const-string v0, "anr_tracker_threshold"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v50

    invoke-static/range {v50 .. v51}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception v0

    :try_start_4
    new-instance v4, Lk57$a;

    invoke-direct {v4, v0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v4

    :goto_7
    nop

    instance-of v4, v0, Lk57$a;

    if-eqz v4, :cond_8

    const/4 v0, 0x0

    :cond_8
    move-object/from16 v73, v0

    check-cast v73, Ljava/lang/Long;

    const-string v0, "exit_info_anr_tracker_enabled"

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v74

    const-string v0, "exit_info_anr_tracker_max_results"

    invoke-static {v0, v5}, Lyads/ve5;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Integer;

    move-result-object v75

    const-string v0, "exit_info_anr_tracker_historical_threshold_days"

    invoke-static {v0, v5}, Lyads/ve5;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Integer;

    move-result-object v76

    const-string v0, "exit_info_anr_tracker_enriched_traces_enabled"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    move-object/from16 v77, v0

    goto :goto_8

    :cond_9
    const/16 v77, 0x0

    :goto_8
    const-string v0, "crash_ignore_enabled"

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v78

    const-string v0, "crash_stack_trace_exclusion_rules"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v4, v3, Lyads/ve5;->f:Lyads/lp2;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lyads/lp2;->a(Lorg/json/JSONArray;)Ljava/util/Set;

    move-result-object v0

    move-object/from16 v79, v0

    goto :goto_9

    :cond_a
    const/16 v79, 0x0

    :goto_9
    const-string v0, "time_stamping_tracking_urls_enabled"

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v80

    const-string v0, "app_ad_analytics_reporting_enabled"

    const/4 v4, 0x1

    invoke-virtual {v5, v0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v81

    const-string v0, "app_metrica_easy_integration_auto_activation_disabled"

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v82

    const-string v0, "network_thread_pool_size"

    invoke-static {v0, v5}, Lyads/ve5;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Integer;

    move-result-object v83

    const-string v0, "image_loading_thread_pool_size"

    invoke-static {v0, v5}, Lyads/ve5;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Integer;

    move-result-object v84

    const-string v0, "timeout_interval_for_request"

    invoke-static {v0, v5}, Lyads/ve5;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Integer;

    move-result-object v85

    const-string v0, "timeout_interval_for_ping_request"

    invoke-static {v0, v5}, Lyads/ve5;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Integer;

    move-result-object v86

    iget-object v0, v3, Lyads/ve5;->g:Lyads/b7;

    const-string v4, "verification_configuration"

    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lyads/b7;->a(Lorg/json/JSONObject;)Lyads/n7;

    move-result-object v87

    const-string v0, "sdk_tracking_reporter_enabled"

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v88

    const-string v0, "fallback_hosts"

    invoke-static {v0, v5}, Lyads/zq3;->b(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_b

    sget-object v0, Lkx2;->b:Lkx2;

    :cond_b
    move-object/from16 v89, v0

    const-string v0, "should_prefetch_dns"

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v90

    const-string v0, "should_use_ad_rendered_web_view_callback"

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v91

    const-string v0, "outstream_wrapper_video_supported"

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v92

    const-string v0, "validate_click_in_web_view"

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v93

    const-string v0, "pass_full_screen_height_from_sdk_enabled"

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v94

    const-string v0, "instream_qrcode_size_in_px"

    invoke-static {v0, v5}, Lyads/ve5;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Integer;

    move-result-object v95

    const-string v0, "hide_bottom_navigation_bar"

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v96

    const-string v0, "pre_warm_web_view_on_background"

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v97

    const-string v0, "sdk_network_debug_enabled"

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v103

    const-string v0, "support_gif"

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v100

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lyads/gz2;->a(Lorg/json/JSONObject;)Lyads/fz2;

    move-result-object v0

    move-object/from16 v98, v0

    goto :goto_a

    :cond_c
    const/16 v98, 0x0

    :goto_a
    const-string v0, "force_default_player"

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v99

    const-string v0, "session"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, v3, Lyads/ve5;->i:Lyads/ej5;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_e

    const-string v1, "token"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_d

    goto :goto_b

    :cond_d
    new-instance v1, Lyads/dj5;

    invoke-direct {v1, v0}, Lyads/dj5;-><init>(Ljava/lang/String;)V

    move-object/from16 v101, v1

    goto :goto_c

    :cond_e
    :goto_b
    const/16 v101, 0x0

    :goto_c
    const-string v0, "playback_optimization_config"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, v3, Lyads/ve5;->j:Lyads/mv4;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    if-eqz v0, :cond_f

    :try_start_5
    iget-object v1, v1, Lyads/mv4;->a:Lxb4;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lyads/lv4;->Companion:Lyads/kv4;

    invoke-virtual {v4}, Lyads/kv4;->serializer()Ldf4;

    move-result-object v4

    check-cast v4, Lxl2;

    invoke-virtual {v1, v4, v0}, Lxb4;->a(Lxl2;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/lv4;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-object/from16 v102, v0

    goto :goto_d

    :catch_1
    :cond_f
    const/16 v102, 0x0

    :goto_d
    :try_start_6
    const-string v0, "smart_preload_blocks"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lyads/ve5;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v104

    const-string v0, "mediation_ad_load_timeouts"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lyads/h54;->b(Ljava/lang/String;)Lyads/i54;

    move-result-object v0

    move-object/from16 v105, v0

    goto :goto_e

    :cond_10
    const/16 v105, 0x0

    :goto_e
    const-string v0, "is_new_request_parameters_enabled"

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v106

    const-string v0, "advertising_ids_fallback_enabled"

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v107
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    :try_start_7
    const-string v0, "advertising_ids_receive_timeout"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_f

    :catchall_2
    move-exception v0

    :try_start_8
    new-instance v1, Lk57$a;

    invoke-direct {v1, v0}, Lk57$a;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v1

    :goto_f
    nop

    instance-of v1, v0, Lk57$a;

    if-eqz v1, :cond_11

    const/4 v0, 0x0

    :cond_11
    move-object/from16 v108, v0

    check-cast v108, Ljava/lang/Long;

    const-string v0, "external_vast_url_change"

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v109

    const-string v0, "web_vast_url_change"

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v110

    const-string v0, "inroll_ad_break_url_source_host"

    const/4 v4, 0x0

    invoke-virtual {v5, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_12

    move-object/from16 v111, v0

    goto :goto_10

    :cond_12
    const/16 v111, 0x0

    :goto_10
    const-string v0, "inroll_ad_break_url_target_host"

    const/4 v4, 0x0

    invoke-virtual {v5, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_13

    move-object/from16 v112, v0

    goto :goto_11

    :cond_13
    const/16 v112, 0x0

    :goto_11
    const-string v0, "native_image_loading_optimization_enabled"

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v113

    const-string v0, "use_system_font"

    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v114

    invoke-static {}, Lyads/yg5;->a()Lyads/zg5;

    move-result-object v0

    invoke-virtual {v0}, Lyads/zg5;->e()Ljava/lang/Boolean;

    move-result-object v50

    invoke-static {}, Lyads/yg5;->a()Lyads/zg5;

    move-result-object v0

    invoke-virtual {v0}, Lyads/zg5;->c()Ljava/lang/Boolean;

    move-result-object v51

    const-string v57, "8.2.0"

    new-instance v6, Lyads/fe5;

    invoke-direct/range {v6 .. v114}, Lyads/fe5;-><init>(IIJJJZZZZZZZZZZZZZZZZZZZLjava/lang/String;ZZZZZZZZZZZZZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;ZLjava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lyads/nn2;ZZLyads/dt;Ljava/lang/String;Ljava/util/Map;ZZZLjava/lang/Long;Ljava/lang/Long;ZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;ZLjava/util/Set;ZZZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lyads/n7;ZLjava/util/List;ZZZZZLjava/lang/Integer;ZZLyads/fz2;ZZLyads/dj5;Lyads/lv4;ZLjava/util/List;Lyads/i54;ZZLjava/lang/Long;ZZLjava/lang/String;Ljava/lang/String;ZZ)V
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_0

    move-object v4, v6

    goto :goto_13

    :goto_12
    iget-object v1, v3, Lyads/ve5;->a:Lyads/q84;

    const-string v2, "Can\'t parse sdk configuration response"

    invoke-virtual {v1, v2, v0}, Lyads/q84;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v4, 0x0

    :cond_14
    :goto_13
    return-object v4
.end method

.method public final a()Z
    .locals 5

    .line 1084
    iget-object v0, p0, Lyads/te5;->a:Lyads/zg5;

    iget-object v1, p0, Lyads/te5;->d:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lyads/zg5;->a(Landroid/content/Context;)Lyads/fe5;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1085
    iget-object p0, p0, Lyads/te5;->c:Lyads/re5;

    .line 1086
    iget-object v1, p0, Lyads/re5;->a:Lyads/ie5;

    .line 1087
    iget-object v1, v1, Lyads/ie5;->a:Lyads/eu5;

    .line 1088
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1089
    iget-wide v3, v0, Lyads/fe5;->e:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    goto :goto_3

    .line 1090
    :cond_0
    iget-object v1, p0, Lyads/re5;->b:Lyads/hh5;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1091
    const-string v1, "8.2.0"

    .line 1092
    iget-object v2, v0, Lyads/fe5;->V:Ljava/lang/String;

    .line 1093
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1094
    iget-object v1, p0, Lyads/re5;->c:Lyads/u50;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1095
    sget-object v1, Lyads/zg5;->l:Lyads/zg5;

    if-nez v1, :cond_2

    .line 1096
    sget-object v1, Lyads/zg5;->k:Ljava/lang/Object;

    monitor-enter v1

    .line 1097
    :try_start_0
    sget-object v2, Lyads/zg5;->l:Lyads/zg5;

    if-nez v2, :cond_1

    .line 1098
    new-instance v2, Lyads/zg5;

    invoke-direct {v2}, Lyads/zg5;-><init>()V

    .line 1099
    sput-object v2, Lyads/zg5;->l:Lyads/zg5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1100
    :cond_1
    :goto_0
    monitor-exit v1

    move-object v1, v2

    goto :goto_2

    :goto_1
    monitor-exit v1

    throw p0

    .line 1101
    :cond_2
    :goto_2
    invoke-virtual {v1}, Lyads/zg5;->e()Ljava/lang/Boolean;

    move-result-object v1

    .line 1102
    iget-object v2, v0, Lyads/fe5;->O:Ljava/lang/Boolean;

    .line 1103
    invoke-static {v1, v2}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1104
    iget-object v1, p0, Lyads/re5;->c:Lyads/u50;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lyads/u50;->b(Lyads/fe5;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1105
    iget-object p0, p0, Lyads/re5;->c:Lyads/u50;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lyads/u50;->a(Lyads/fe5;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_3

    :cond_3
    const/4 p0, 0x0

    return p0

    :cond_4
    :goto_3
    const/4 p0, 0x1

    return p0
.end method
