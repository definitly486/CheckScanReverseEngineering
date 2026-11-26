.class public Lcom/tapjoy/internal/e1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J

.field public final c:Lcom/tapjoy/internal/u1;

.field public final d:Lcom/tapjoy/internal/j1;

.field public final e:Lcom/tapjoy/internal/z0;

.field public final f:Lcom/tapjoy/internal/s1;

.field public final g:Lcom/tapjoy/internal/y1;

.field public final h:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>()V
    .locals 3

    .line 113
    new-instance v0, Lcom/tapjoy/internal/z0;

    invoke-direct {v0}, Lcom/tapjoy/internal/z0;-><init>()V

    .line 114
    new-instance v1, Lcom/tapjoy/internal/s1;

    invoke-direct {v1}, Lcom/tapjoy/internal/s1;-><init>()V

    .line 115
    new-instance v2, Lcom/tapjoy/internal/y1;

    invoke-direct {v2}, Lcom/tapjoy/internal/y1;-><init>()V

    .line 116
    invoke-direct {p0, v0, v1, v2}, Lcom/tapjoy/internal/e1;-><init>(Lcom/tapjoy/internal/z0;Lcom/tapjoy/internal/s1;Lcom/tapjoy/internal/y1;)V

    return-void
.end method

.method public constructor <init>(Lcom/tapjoy/internal/z0;Lcom/tapjoy/internal/s1;Lcom/tapjoy/internal/y1;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/internal/e1;->a:Ljava/lang/String;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tapjoy/internal/e1;->b:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/internal/e1;->c:Lcom/tapjoy/internal/u1;

    iput-object v0, p0, Lcom/tapjoy/internal/e1;->d:Lcom/tapjoy/internal/j1;

    iput-object p1, p0, Lcom/tapjoy/internal/e1;->e:Lcom/tapjoy/internal/z0;

    iput-object p2, p0, Lcom/tapjoy/internal/e1;->f:Lcom/tapjoy/internal/s1;

    iput-object p3, p0, Lcom/tapjoy/internal/e1;->g:Lcom/tapjoy/internal/y1;

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tapjoy/TapjoyConnectCore;->getHostURL()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/tapjoy/internal/e1;->h:Ljava/lang/String;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/tapjoy/internal/e1;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    iput-wide p1, p0, Lcom/tapjoy/internal/e1;->b:J

    :try_start_0
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tapjoy/TapjoyConnectCore;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object p2, Lcom/tapjoy/TJTracking;->INSTANCE:Lcom/tapjoy/TJTracking;

    invoke-virtual {p2, p1}, Lcom/tapjoy/TJTracking;->fetchAdvertisingID(Landroid/content/Context;)Ljava/util/concurrent/Future;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Error fetching advertising ID: "

    invoke-static {p2, p1}, Ljg;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    new-instance p1, Lcom/tapjoy/internal/u1;

    iget-wide p2, p0, Lcom/tapjoy/internal/e1;->b:J

    invoke-direct {p1, p2, p3}, Lcom/tapjoy/internal/u1;-><init>(J)V

    iput-object p1, p0, Lcom/tapjoy/internal/e1;->c:Lcom/tapjoy/internal/u1;

    new-instance p1, Lcom/tapjoy/internal/j1;

    invoke-direct {p1}, Lcom/tapjoy/internal/j1;-><init>()V

    iput-object p1, p0, Lcom/tapjoy/internal/e1;->d:Lcom/tapjoy/internal/j1;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 2

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "accept"

    const-string v1, "application/json"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Content-Type"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public b()Lorg/json/JSONObject;
    .locals 13

    iget-object v0, p0, Lcom/tapjoy/internal/e1;->e:Lcom/tapjoy/internal/z0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iget-object v2, v0, Lcom/tapjoy/internal/z0;->a:Ljava/lang/String;

    const-string v3, "id"

    invoke-static {v1, v3, v2}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/tapjoy/internal/z0;->b:Ljava/lang/String;

    const-string v4, "unityads_idfi"

    invoke-static {v1, v4, v2}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/tapjoy/internal/z0;->c:Ljava/lang/String;

    const-string v4, "auid"

    invoke-static {v1, v4, v2}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/tapjoy/internal/z0;->d:Ljava/lang/String;

    const-string v4, "version"

    invoke-static {v1, v4, v2}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/tapjoy/internal/z0;->e:Ljava/lang/String;

    const-string v5, "pkg_id"

    invoke-static {v1, v5, v2}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/tapjoy/internal/z0;->g:Ljava/lang/String;

    const-string v5, "version_build"

    invoke-static {v1, v5, v2}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/tapjoy/internal/z0;->h:Ljava/lang/String;

    const-string v5, "group_id"

    invoke-static {v1, v5, v2}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/tapjoy/internal/z0;->i:Ljava/lang/String;

    const-string v5, "category"

    invoke-static {v1, v5, v2}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/tapjoy/internal/z0;->j:Lcom/tapjoy/internal/q1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, v0, Lcom/tapjoy/internal/q1;->a:Ljava/lang/String;

    const-string v5, "cp"

    invoke-static {v2, v5, v0}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "publisher"

    invoke-static {v1, v0, v2}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tapjoy/internal/e1;->d:Lcom/tapjoy/internal/j1;

    const-string v2, "type"

    const/4 v5, 0x0

    if-eqz v0, :cond_2

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    iget-object v7, v0, Lcom/tapjoy/internal/j1;->e:Ljava/lang/String;

    const-string v8, "name"

    invoke-static {v6, v8, v7}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v7, v0, Lcom/tapjoy/internal/j1;->b:Ljava/lang/String;

    invoke-static {v6, v2, v7}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v7, v0, Lcom/tapjoy/internal/j1;->f:Ljava/lang/Float;

    const-string v9, "volume"

    invoke-static {v6, v9, v7}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v7, v0, Lcom/tapjoy/internal/j1;->g:Ljava/lang/Float;

    const-string v9, "battery"

    invoke-static {v6, v9, v7}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v7, v0, Lcom/tapjoy/internal/j1;->h:Ljava/lang/Float;

    const-string v9, "brightness"

    invoke-static {v6, v9, v7}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v7, v0, Lcom/tapjoy/internal/j1;->i:Ljava/lang/Integer;

    const-string v9, "display_w"

    invoke-static {v6, v9, v7}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v7, v0, Lcom/tapjoy/internal/j1;->j:Ljava/lang/Integer;

    const-string v9, "display_h"

    invoke-static {v6, v9, v7}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v7, v0, Lcom/tapjoy/internal/j1;->k:Ljava/lang/Integer;

    const-string v9, "display_d"

    invoke-static {v6, v9, v7}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v7, v0, Lcom/tapjoy/internal/j1;->c:Ljava/lang/String;

    const-string v9, "connection_type"

    invoke-static {v6, v9, v7}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v7, v0, Lcom/tapjoy/internal/j1;->d:Ljava/lang/String;

    const-string v9, "connection_subtype"

    invoke-static {v6, v9, v7}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v7, v0, Lcom/tapjoy/internal/j1;->a:Ljava/lang/String;

    const-string v9, "managed_device_id"

    invoke-static {v6, v9, v7}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v7, v0, Lcom/tapjoy/internal/j1;->l:Lcom/tapjoy/internal/k1;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    iget-object v7, v7, Lcom/tapjoy/internal/k1;->a:Ljava/lang/String;

    const-string v10, "country_code"

    invoke-static {v9, v10, v7}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v7, "geo"

    invoke-static {v6, v7, v9}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v7, v0, Lcom/tapjoy/internal/j1;->n:Lcom/tapjoy/internal/n1;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    iget-object v10, v7, Lcom/tapjoy/internal/n1;->f:Ljava/lang/String;

    invoke-static {v9, v8, v10}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v8, v7, Lcom/tapjoy/internal/n1;->g:Ljava/lang/String;

    invoke-static {v9, v4, v8}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v8, v7, Lcom/tapjoy/internal/n1;->a:Ljava/lang/String;

    const-string v10, "language_code"

    invoke-static {v9, v10, v8}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v8, v7, Lcom/tapjoy/internal/n1;->h:Ljava/lang/String;

    const-string v10, "timezone"

    invoke-static {v9, v10, v8}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v8, v7, Lcom/tapjoy/internal/n1;->i:Ljava/lang/String;

    const-string v10, "theme"

    invoke-static {v9, v10, v8}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v8, v7, Lcom/tapjoy/internal/n1;->e:Ljava/lang/String;

    const-string v10, "advertising_id"

    invoke-static {v9, v10, v8}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v8, v7, Lcom/tapjoy/internal/n1;->d:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const-string v10, "ad_tracking_enabled"

    invoke-static {v9, v10, v8}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v8, v7, Lcom/tapjoy/internal/n1;->b:Ljava/lang/String;

    const-string v10, "store"

    invoke-static {v9, v10, v8}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v8, v7, Lcom/tapjoy/internal/n1;->c:Ljava/lang/Boolean;

    const-string v10, "store_view"

    invoke-static {v9, v10, v8}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v7, v7, Lcom/tapjoy/internal/n1;->j:Lcom/tapjoy/internal/x0;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    iget-object v10, v7, Lcom/tapjoy/internal/x0;->d:Ljava/lang/String;

    const-string v11, "android_id"

    invoke-static {v8, v11, v10}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v10, v7, Lcom/tapjoy/internal/x0;->e:Ljava/lang/String;

    const-string v11, "manufacturer"

    invoke-static {v8, v11, v10}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v10, v7, Lcom/tapjoy/internal/x0;->c:Ljava/lang/String;

    const-string v11, "app_set_id"

    invoke-static {v8, v11, v10}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v10, v7, Lcom/tapjoy/internal/x0;->f:Ljava/lang/String;

    const-string v11, "device_gps_version"

    invoke-static {v8, v11, v10}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v10, v7, Lcom/tapjoy/internal/x0;->g:Ljava/lang/String;

    const-string v11, "packaged_gps_version"

    invoke-static {v8, v11, v10}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v10, v7, Lcom/tapjoy/internal/x0;->i:Ljava/lang/Boolean;

    const-string v11, "ad_id_check_disabled"

    invoke-static {v8, v11, v10}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v10, v7, Lcom/tapjoy/internal/x0;->j:Ljava/lang/Boolean;

    const-string v11, "legacy_id_fallback_allowed"

    invoke-static {v8, v11, v10}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v10, v7, Lcom/tapjoy/internal/x0;->h:Ljava/lang/Boolean;

    const-string v11, "optout_adid"

    invoke-static {v8, v11, v10}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v10, v7, Lcom/tapjoy/internal/x0;->b:Ljava/lang/String;

    const-string v11, "installer"

    invoke-static {v8, v11, v10}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v10, v7, Lcom/tapjoy/internal/x0;->k:Ljava/lang/String;

    const-string v11, "pkg_sign"

    invoke-static {v8, v11, v10}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v10, v7, Lcom/tapjoy/internal/x0;->a:Ljava/lang/Integer;

    const-string v11, "screen_layout_size"

    invoke-static {v8, v11, v10}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v10, v7, Lcom/tapjoy/internal/x0;->l:Ljava/lang/Long;

    const-string v11, "avail_disk"

    invoke-static {v8, v11, v10}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v10, v7, Lcom/tapjoy/internal/x0;->m:Ljava/lang/Long;

    const-string v11, "total_disk"

    invoke-static {v8, v11, v10}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v10, v7, Lcom/tapjoy/internal/x0;->q:Ljava/lang/Integer;

    const-string v11, "target_sdk"

    invoke-static {v8, v11, v10}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v10, v7, Lcom/tapjoy/internal/x0;->p:Ljava/lang/Integer;

    const-string v11, "min_sdk"

    invoke-static {v8, v11, v10}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v10, v7, Lcom/tapjoy/internal/x0;->n:Ljava/lang/Boolean;

    const-string v11, "ad_unit_theme_changed"

    invoke-static {v8, v11, v10}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v7, v7, Lcom/tapjoy/internal/x0;->o:Ljava/lang/Boolean;

    const-string v10, "web_theme_changed"

    invoke-static {v8, v10, v7}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v7, "android"

    invoke-static {v9, v7, v8}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v7, "os"

    invoke-static {v6, v7, v9}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, v0, Lcom/tapjoy/internal/j1;->m:Lcom/tapjoy/internal/f1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    iget-object v9, v0, Lcom/tapjoy/internal/f1;->a:Ljava/lang/String;

    const-string v10, "carrier_name"

    invoke-static {v8, v10, v9}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v9, v0, Lcom/tapjoy/internal/f1;->b:Ljava/lang/String;

    const-string v10, "carrier_name_sim"

    invoke-static {v8, v10, v9}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v9, v0, Lcom/tapjoy/internal/f1;->f:Ljava/lang/String;

    const-string v10, "country_sim"

    invoke-static {v8, v10, v9}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v9, v0, Lcom/tapjoy/internal/f1;->c:Ljava/lang/String;

    const-string v10, "carrier_country_code"

    invoke-static {v8, v10, v9}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v9, v0, Lcom/tapjoy/internal/f1;->d:Ljava/lang/String;

    const/16 v10, 0xa

    if-eqz v9, :cond_0

    invoke-static {v10, v9}, Lqa8;->o(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_0

    :cond_0
    move-object v9, v5

    :goto_0
    const-string v11, "mobile_country_code"

    invoke-static {v8, v11, v9}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/tapjoy/internal/f1;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {v10, v0}, Lqa8;->o(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v5

    :goto_1
    const-string v9, "mobile_network_code"

    invoke-static {v8, v9, v0}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object v0

    const-string v7, "carriers"

    invoke-static {v6, v7, v0}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    move-object v6, v5

    :goto_2
    iget-object v0, p0, Lcom/tapjoy/internal/e1;->f:Lcom/tapjoy/internal/s1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    iget-object v8, v0, Lcom/tapjoy/internal/s1;->a:Ljava/lang/Boolean;

    const-string v9, "below_consent_age"

    invoke-static {v7, v9, v8}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v8, v0, Lcom/tapjoy/internal/s1;->b:Ljava/lang/Boolean;

    const-string v9, "gdpr"

    invoke-static {v7, v9, v8}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v8, v0, Lcom/tapjoy/internal/s1;->c:Ljava/lang/String;

    const-string v9, "cgdpr"

    invoke-static {v7, v9, v8}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v8, v0, Lcom/tapjoy/internal/s1;->d:Ljava/lang/String;

    const-string v9, "us_privacy"

    invoke-static {v7, v9, v8}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/tapjoy/internal/s1;->e:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v8, "package_usage_stats_consent"

    invoke-static {v7, v8, v0}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/tapjoy/internal/e1;->c:Lcom/tapjoy/internal/u1;

    const-string v8, "total_count"

    const-string v9, "last_at"

    if-eqz v0, :cond_4

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    iget-object v10, v0, Lcom/tapjoy/internal/u1;->b:Ljava/lang/Boolean;

    const-string v11, "debug"

    invoke-static {v5, v11, v10}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v10, v0, Lcom/tapjoy/internal/u1;->a:Ljava/lang/String;

    const-string v11, "verifier"

    invoke-static {v5, v11, v10}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v10, v0, Lcom/tapjoy/internal/u1;->c:Ljava/lang/String;

    invoke-static {v5, v2, v10}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/tapjoy/internal/u1;->d:Ljava/lang/Long;

    const-string v10, "installed"

    invoke-static {v5, v10, v2}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/tapjoy/internal/u1;->e:Ljava/lang/String;

    const-string v10, "plugin"

    invoke-static {v5, v10, v2}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/tapjoy/internal/u1;->f:Ljava/lang/String;

    const-string v10, "test_id"

    invoke-static {v5, v10, v2}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/tapjoy/internal/u1;->g:Ljava/lang/String;

    const-string v10, "install_id"

    invoke-static {v5, v10, v2}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/tapjoy/internal/u1;->h:Ljava/lang/String;

    invoke-static {v5, v4, v2}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/tapjoy/internal/u1;->i:Ljava/lang/String;

    const-string v4, "revision"

    invoke-static {v5, v4, v2}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/tapjoy/internal/u1;->j:Ljava/lang/String;

    const-string v4, "bridge_version"

    invoke-static {v5, v4, v2}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/tapjoy/internal/u1;->k:Lcom/tapjoy/internal/v1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iget-object v4, v0, Lcom/tapjoy/internal/v1;->a:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v4, v0, Lcom/tapjoy/internal/v1;->b:Ljava/lang/Long;

    const-string v10, "last_length"

    invoke-static {v2, v10, v4}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v4, v0, Lcom/tapjoy/internal/v1;->c:Ljava/lang/Long;

    invoke-static {v2, v9, v4}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v4, v0, Lcom/tapjoy/internal/v1;->d:Ljava/lang/Integer;

    invoke-static {v2, v8, v4}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v4, v0, Lcom/tapjoy/internal/v1;->e:Ljava/lang/Long;

    const-string v10, "total_length"

    invoke-static {v2, v10, v4}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v4, v0, Lcom/tapjoy/internal/v1;->f:Ljava/lang/Long;

    const-string v10, "duration"

    invoke-static {v2, v10, v4}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v4, v0, Lcom/tapjoy/internal/v1;->g:Ljava/lang/Integer;

    const-string v10, "fq7"

    invoke-static {v2, v10, v4}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/tapjoy/internal/v1;->h:Ljava/lang/Integer;

    const-string v4, "fq30"

    invoke-static {v2, v4, v0}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "session"

    invoke-static {v5, v0, v2}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    iget-object v0, p0, Lcom/tapjoy/internal/e1;->g:Lcom/tapjoy/internal/y1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iget-object v4, v0, Lcom/tapjoy/internal/y1;->a:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v4, v0, Lcom/tapjoy/internal/y1;->c:Ljava/lang/Integer;

    const-string v10, "segment"

    invoke-static {v2, v10, v4}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v4, v0, Lcom/tapjoy/internal/y1;->b:Ljava/lang/Integer;

    const-string v10, "level"

    invoke-static {v2, v10, v4}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v4, Lorg/json/JSONArray;

    iget-object v10, v0, Lcom/tapjoy/internal/y1;->d:Ljava/util/List;

    invoke-direct {v4, v10}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string v10, "tags"

    invoke-static {v2, v10, v4}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/tapjoy/internal/y1;->e:Lcom/tapjoy/internal/w0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    iget-object v10, v0, Lcom/tapjoy/internal/w0;->a:Ljava/lang/Long;

    const-string v11, "uptime"

    invoke-static {v4, v11, v10}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/tapjoy/internal/w0;->b:Lcom/tapjoy/internal/r1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    iget-object v11, v0, Lcom/tapjoy/internal/r1;->a:Ljava/lang/String;

    const-string v12, "currency_code"

    invoke-static {v10, v12, v11}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v11, v0, Lcom/tapjoy/internal/r1;->b:Ljava/lang/Double;

    const-string v12, "total_price"

    invoke-static {v10, v12, v11}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v11, v0, Lcom/tapjoy/internal/r1;->c:Ljava/lang/Long;

    invoke-static {v10, v9, v11}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v9, v0, Lcom/tapjoy/internal/r1;->d:Ljava/lang/Double;

    const-string v11, "last_price"

    invoke-static {v10, v11, v9}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/tapjoy/internal/r1;->e:Ljava/lang/Integer;

    invoke-static {v10, v8, v0}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "purchase"

    invoke-static {v4, v0, v10}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "analytics"

    invoke-static {v2, v0, v4}, Lcom/tapjoy/internal/u;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v4, p0, Lcom/tapjoy/internal/e1;->a:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "app"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "device"

    invoke-virtual {v0, v1, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "regs"

    invoke-virtual {v0, v1, v7}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sdk"

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "user"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-wide v1, p0, Lcom/tapjoy/internal/e1;->b:J

    const-string p0, "timestamp"

    invoke-virtual {v0, p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    return-object v0
.end method
