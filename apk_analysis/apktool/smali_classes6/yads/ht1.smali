.class public final Lyads/ht1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/ct4;


# instance fields
.field public final a:Lyads/et4;

.field public final b:Lyads/px;

.field public final c:Lyads/px;

.field public final d:Lyads/lv5;


# direct methods
.method public constructor <init>(Lyads/et4;Lyads/px;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/ht1;->a:Lyads/et4;

    iput-object p2, p0, Lyads/ht1;->b:Lyads/px;

    iput-object p2, p0, Lyads/ht1;->c:Lyads/px;

    new-instance p1, Lmi2;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/ht1;->d:Lyads/lv5;

    return-void
.end method

.method public static final a(Lyads/ct4;ZLorg/json/JSONObject;)Lyads/q72;
    .locals 0

    .line 159
    sget-object p1, Lyads/gv;->a:Lyads/tq3;

    .line 160
    iget-object p1, p1, Lyads/tq3;->t9:Lcl4;

    .line 161
    invoke-interface {p1}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyads/gn1;

    .line 162
    invoke-virtual {p1, p0, p2}, Lyads/gn1;->b(Lyads/ys4;Lorg/json/JSONObject;)Lyads/q72;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Lyads/et4;
    .locals 0

    .line 158
    iget-object p0, p0, Lyads/ht1;->a:Lyads/et4;

    return-object p0
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 9

    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    :try_start_0
    invoke-static {p0, p1}, Lyads/yq3;->a(Lyads/ht1;Lorg/json/JSONObject;)Ljava/util/LinkedHashMap;

    move-result-object v2

    iget-object v3, p0, Lyads/ht1;->b:Lyads/px;

    iget-object v3, v3, Lyads/px;->a:Lyads/gf3;

    iget-object v3, v3, Lyads/gf3;->a:Landroidx/collection/ArrayMap;

    invoke-virtual {v0, v3}, Landroidx/collection/ArrayMap;->putAll(Ljava/util/Map;)V

    new-instance v3, Lyads/ov5;

    invoke-direct {v3, v0}, Lyads/ov5;-><init>(Landroidx/collection/ArrayMap;)V

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v6, Lyads/dt4;

    new-instance v7, Lyads/mv5;

    iget-object v8, p0, Lyads/ht1;->a:Lyads/et4;

    invoke-direct {v7, v5, v8}, Lyads/mv5;-><init>(Ljava/lang/String;Lyads/et4;)V

    invoke-direct {v6, v3, v7}, Lyads/dt4;-><init>(Lyads/ov5;Lyads/mv5;)V

    iget-object v7, p0, Lyads/ht1;->d:Lyads/lv5;

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    check-cast v7, Lmi2;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x1

    invoke-static {v6, v7, v8}, Lyads/ht1;->a(Lyads/ct4;ZLorg/json/JSONObject;)Lyads/q72;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lyads/ft4; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception v4

    :try_start_2
    iget-object v6, p0, Lyads/ht1;->a:Lyads/et4;

    invoke-interface {v6, v4, v5}, Lyads/et4;->a(Ljava/lang/Exception;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lyads/ht1;->a:Lyads/et4;

    invoke-interface {v1, p1}, Lyads/et4;->b(Ljava/lang/Exception;)V

    :cond_1
    iget-object p0, p0, Lyads/ht1;->b:Lyads/px;

    invoke-virtual {v0}, Landroidx/collection/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lyads/px;->a:Lyads/gf3;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/xq3;

    iget-object v1, v1, Lyads/gf3;->a:Landroidx/collection/ArrayMap;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    return-void
.end method

.method public final b()Lyads/pv5;
    .locals 0

    iget-object p0, p0, Lyads/ht1;->c:Lyads/px;

    return-object p0
.end method
