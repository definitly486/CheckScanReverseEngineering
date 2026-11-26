.class public final Lyads/h8;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lyads/n7;)Lyads/r7;
    .locals 11

    new-instance v0, Lyads/r7;

    iget v1, p0, Lyads/n7;->e:I

    iget-boolean v2, p0, Lyads/n7;->a:Z

    iget-boolean v3, p0, Lyads/n7;->f:Z

    iget-object v4, p0, Lyads/n7;->h:Ljava/util/Map;

    move-object v5, v4

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    sget-object v7, Lyads/l7;->c:Lyads/k7;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Lyads/l7;->e:Lg03;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Lyads/l7;

    iget-object v10, v10, Lyads/l7;->b:Ljava/lang/String;

    invoke-static {v10, v8}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    :goto_1
    check-cast v9, Lyads/l7;

    invoke-static {v9}, Lyads/k7;->a(Lyads/l7;)Lcom/monetization/ads/quality/base/model/configuration/AdQualityVerifiableNetwork;

    move-result-object v7

    if-eqz v7, :cond_0

    new-instance v8, Lyads/f8;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lyads/q7;

    iget v9, v9, Lyads/q7;->a:I

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lyads/q7;

    iget-boolean v6, v6, Lyads/q7;->b:Z

    invoke-direct {v8, v9, v6}, Lyads/f8;-><init>(IZ)V

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lyads/n7;->g:Ljava/util/Set;

    invoke-direct/range {v0 .. v5}, Lyads/r7;-><init>(IZZLjava/util/LinkedHashMap;Ljava/util/Set;)V

    return-object v0
.end method
