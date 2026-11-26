.class public final Lyads/jo1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/q84;

.field public final b:Lyads/eb1;

.field public final c:Lyads/rb1;

.field public final d:Lyads/go1;

.field public final e:Lyads/vo;


# direct methods
.method public constructor <init>(Lyads/q84;)V
    .locals 4

    new-instance v0, Lyads/eb1;

    invoke-direct {v0, p1}, Lyads/eb1;-><init>(Lyads/q84;)V

    new-instance v1, Lyads/rb1;

    invoke-direct {v1}, Lyads/rb1;-><init>()V

    new-instance v2, Lyads/go1;

    invoke-direct {v2}, Lyads/go1;-><init>()V

    new-instance v3, Lyads/vo;

    invoke-direct {v3}, Lyads/vo;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/jo1;->a:Lyads/q84;

    iput-object v0, p0, Lyads/jo1;->b:Lyads/eb1;

    iput-object v1, p0, Lyads/jo1;->c:Lyads/rb1;

    iput-object v2, p0, Lyads/jo1;->d:Lyads/go1;

    iput-object v3, p0, Lyads/jo1;->e:Lyads/vo;

    return-void
.end method


# virtual methods
.method public final a(Lyads/mn0;Z)Lyads/fo1;
    .locals 12

    const-string v0, "templates"

    invoke-static {}, Lcom/monetization/ads/core/divkit/DivKitFeature;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    sget-object v1, Lyads/tn0;->b:[Lyads/tn0;

    const-string v1, "divkit"

    iget-object v3, p1, Lyads/mn0;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :try_start_0
    iget-object v4, p1, Lyads/mn0;->b:Ljava/lang/String;

    iget-object v1, p1, Lyads/mn0;->c:Ljava/lang/String;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lyads/jo1;->e:Lyads/vo;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lyads/vo;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_3

    :cond_0
    :goto_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "card"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    move-object v6, p2

    goto :goto_1

    :cond_1
    move-object v6, v2

    :goto_1
    iget-object v7, p1, Lyads/mn0;->d:Ljava/util/ArrayList;

    iget-object p2, p0, Lyads/jo1;->b:Lyads/eb1;

    invoke-virtual {p2, v5, v6}, Lyads/eb1;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lyads/db1;

    move-result-object v8

    iget-object p2, p0, Lyads/jo1;->c:Lyads/rb1;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v9, Lyads/qb1;

    invoke-direct {v9, p2}, Lyads/qb1;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lyads/jo1;->d:Lyads/go1;

    invoke-virtual {p2, v5}, Lyads/go1;->a(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object p2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lyads/sn1;

    sget-object v10, Lyads/go1;->a:Ljava/util/List;

    iget-object v3, v3, Lyads/sn1;->b:Ljava/lang/String;

    invoke-interface {v10, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-static {v0}, Lqn1;->y0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v10

    if-eqz v8, :cond_4

    new-instance v3, Lyads/fo1;

    new-instance v11, Lyads/nn0;

    iget-object p1, p1, Lyads/mn0;->e:Ljava/util/LinkedHashMap;

    invoke-direct {v11, p1}, Lyads/nn0;-><init>(Ljava/util/LinkedHashMap;)V

    invoke-direct/range {v3 .. v11}, Lyads/fo1;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/ArrayList;Lyads/db1;Lyads/qb1;Ljava/util/Set;Lyads/nn0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v3

    :goto_3
    iget-object p0, p0, Lyads/jo1;->a:Lyads/q84;

    const-string p2, "Failed to parse DivKit design"

    invoke-virtual {p0, p2, p1}, Lyads/q84;->reportError(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    return-object v2
.end method
