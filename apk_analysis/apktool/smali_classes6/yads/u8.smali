.class public final Lyads/u8;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/ib;

.field public final b:Lyads/kx4;

.field public final c:Lyads/gi0;

.field public final d:Lyads/rd5;


# direct methods
.method public constructor <init>()V
    .locals 4

    new-instance v0, Lyads/ib;

    invoke-direct {v0}, Lyads/ib;-><init>()V

    new-instance v1, Lyads/kx4;

    invoke-direct {v1}, Lyads/kx4;-><init>()V

    new-instance v2, Lyads/gi0;

    invoke-direct {v2}, Lyads/gi0;-><init>()V

    new-instance v3, Lyads/rd5;

    invoke-direct {v3}, Lyads/rd5;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/u8;->a:Lyads/ib;

    iput-object v1, p0, Lyads/u8;->b:Lyads/kx4;

    iput-object v2, p0, Lyads/u8;->c:Lyads/gi0;

    iput-object v3, p0, Lyads/u8;->d:Lyads/rd5;

    return-void
.end method


# virtual methods
.method public final a(Lyads/n8;)Lyads/h75;
    .locals 8

    new-instance v0, Lyads/h75;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lyads/h75;-><init>(Ljava/util/Map;I)V

    if-eqz p1, :cond_11

    iget-object v1, p1, Lyads/n8;->g:Ljava/util/Map;

    iget-object v3, p0, Lyads/u8;->a:Lyads/ib;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {v3}, Lv39;->e(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    if-nez v3, :cond_1

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    :cond_1
    if-eqz v1, :cond_4

    const-string v4, "adapter_network_name"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "adapter_version"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "adapter_network_sdk_version"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "adapter_network_name"

    if-eqz v4, :cond_2

    invoke-interface {v3, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v4, "adapter_version"

    if-eqz v5, :cond_3

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v4, "adapter_network_sdk_version"

    if-eqz v6, :cond_4

    invoke-interface {v3, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v4, p0, Lyads/u8;->b:Lyads/kx4;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lyads/jx4;->a:Lcl4;

    invoke-interface {v4}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyads/ix4;

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eqz v4, :cond_7

    const/4 v5, 0x1

    if-eq v4, v5, :cond_6

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    const-string v4, "unity"

    goto :goto_1

    :cond_5
    invoke-static {}, Lme0;->e()V

    return-object v2

    :cond_6
    const-string v4, "react-native"

    goto :goto_1

    :cond_7
    const-string v4, "flutter"

    goto :goto_1

    :cond_8
    if-eqz v1, :cond_9

    const-string v4, "plugin_type"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_1

    :cond_9
    move-object v4, v2

    :goto_1
    if-eqz v1, :cond_a

    const-string v5, "plugin_version"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_2

    :cond_a
    move-object v5, v2

    :goto_2
    new-instance v6, Luz4;

    invoke-direct {v6}, Luz4;-><init>()V

    if-eqz v4, :cond_b

    const-string v7, "plugin_type"

    invoke-virtual {v6, v7, v4}, Luz4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    if-eqz v5, :cond_c

    const-string v4, "plugin_version"

    invoke-virtual {v6, v4, v5}, Luz4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    invoke-virtual {v6}, Luz4;->b()Luz4;

    move-result-object v4

    iget-object v5, p0, Lyads/u8;->c:Lyads/gi0;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v1, :cond_e

    const-string v5, "ui_framework"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_d

    goto :goto_3

    :cond_d
    const-string v5, "ui_framework"

    invoke-static {v5, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_4

    :cond_e
    :goto_3
    sget-object v1, Lmx2;->b:Lmx2;

    :goto_4
    iget-object v5, p1, Lyads/n8;->l:Ljava/lang/String;

    iget-object p0, p0, Lyads/u8;->d:Lyads/rd5;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-static {v6}, Lv39;->e(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    goto :goto_5

    :cond_f
    move-object v6, v2

    :goto_5
    if-nez v6, :cond_10

    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    :cond_10
    iget-object p0, p0, Lyads/rd5;->a:Lyads/zg5;

    sget-object v7, Lyads/zg5;->k:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget-boolean p0, p0, Lyads/zg5;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    const-string v7, "app_ad_analytics_enabled"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {v6, v7, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, v0, Lyads/h75;->a:Ljava/util/Map;

    invoke-interface {p0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object p0, v0, Lyads/h75;->a:Ljava/util/Map;

    invoke-interface {p0, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object p0, v0, Lyads/h75;->a:Ljava/util/Map;

    invoke-interface {p0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const-string p0, "preload_type"

    invoke-virtual {v0, v5, p0}, Lyads/h75;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, v0, Lyads/h75;->a:Ljava/util/Map;

    invoke-interface {p0, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_6

    :catchall_0
    move-exception p0

    monitor-exit v7

    throw p0

    :cond_11
    :goto_6
    if-eqz p1, :cond_12

    iget-object v2, p1, Lyads/n8;->h:Ljava/lang/String;

    :cond_12
    if-eqz v2, :cond_14

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_13

    goto :goto_7

    :cond_13
    const-string p0, "openbidding"

    const-string p1, "integration_type"

    invoke-virtual {v0, p0, p1}, Lyads/h75;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_14
    :goto_7
    return-object v0
.end method
