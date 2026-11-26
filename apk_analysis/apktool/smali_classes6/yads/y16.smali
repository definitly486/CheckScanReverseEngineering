.class public final Lyads/y16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    const-string p0, "OMIDLIB"

    sget-object v1, Lyads/a26;->g:Lyads/a26;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v1, Lyads/a26;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lyads/tp6;->c:Lyads/tp6;

    iget-object v0, v0, Lyads/tp6;->b:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyads/dp6;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, v1, Lyads/a26;->f:J

    iget-object v0, v1, Lyads/a26;->d:Lyads/ap6;

    invoke-virtual {v0}, Lyads/ap6;->a()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    iget-object v0, v1, Lyads/a26;->c:Lyads/ip6;

    iget-object v8, v0, Lyads/ip6;->b:Lyads/qp6;

    iget-object v0, v1, Lyads/a26;->d:Lyads/ap6;

    iget-object v0, v0, Lyads/ap6;->f:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    const/4 v9, 0x0

    if-lez v0, :cond_2

    iget-object v0, v1, Lyads/a26;->d:Lyads/ap6;

    iget-object v0, v0, Lyads/ap6;->f:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v8, v9}, Lyads/qp6;->a(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v5

    iget-object v0, v1, Lyads/a26;->d:Lyads/ap6;

    iget-object v0, v0, Lyads/ap6;->c:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v3, v1, Lyads/a26;->c:Lyads/ip6;

    iget-object v3, v3, Lyads/ip6;->a:Lyads/yp6;

    iget-object v4, v1, Lyads/a26;->d:Lyads/ap6;

    iget-object v4, v4, Lyads/ap6;->g:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_1

    invoke-virtual {v3, v0}, Lyads/yp6;->a(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v3

    :try_start_0
    const-string v0, "adSessionId"

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v11, "Error with setting ad session id"

    invoke-static {p0, v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    :try_start_1
    const-string v0, "notVisibleReason"

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    const-string v4, "Error with setting not visible reason"

    invoke-static {p0, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    invoke-static {v5, v3}, Lyads/rp6;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    :cond_1
    invoke-static {v5}, Lyads/rp6;->a(Lorg/json/JSONObject;)V

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v3, v1, Lyads/a26;->e:Lyads/lp6;

    iget-object v0, v3, Lyads/lp6;->b:Lyads/sp6;

    new-instance v2, Lyads/eq6;

    invoke-direct/range {v2 .. v7}, Lyads/eq6;-><init>(Lyads/lp6;Ljava/util/HashSet;Lorg/json/JSONObject;J)V

    invoke-virtual {v0, v2}, Lyads/sp6;->a(Lyads/mp6;)V

    goto :goto_1

    :cond_2
    iget-object p0, v1, Lyads/a26;->d:Lyads/ap6;

    iget-object p0, p0, Lyads/ap6;->e:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result p0

    const/4 v0, 0x0

    if-lez p0, :cond_7

    invoke-virtual {v8, v9}, Lyads/qp6;->a(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v5

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lyads/tp6;->c:Lyads/tp6;

    if-eqz v2, :cond_5

    iget-object v2, v2, Lyads/tp6;->b:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x3

    new-instance v4, Ljava/util/IdentityHashMap;

    invoke-direct {v4, v3}, Ljava/util/IdentityHashMap;-><init>(I)V

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lyads/dp6;

    iget-object v3, v3, Lyads/dp6;->d:Lyads/cp6;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_3

    invoke-static {v3}, Lyads/mq6;->d(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v4, v3}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {v4, v3, v3}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Lyads/mq6;->b(Landroid/view/View;)F

    move-result v9

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v10

    :goto_5
    if-lez v10, :cond_4

    add-int/lit8 v11, v10, -0x1

    invoke-virtual {p0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    invoke-static {v11}, Lyads/mq6;->b(Landroid/view/View;)F

    move-result v11

    cmpl-float v11, v11, v9

    if-lez v11, :cond_4

    add-int/lit8 v10, v10, -0x1

    goto :goto_5

    :cond_4
    invoke-virtual {p0, v10, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v3, v8, Lyads/qp6;->a:Lyads/yp6;

    invoke-virtual {v1, v2, v3, v5, v0}, Lyads/a26;->a(Landroid/view/View;Lyads/yp6;Lorg/json/JSONObject;Z)V

    goto :goto_6

    :cond_6
    invoke-static {v5}, Lyads/rp6;->a(Lorg/json/JSONObject;)V

    iget-object v3, v1, Lyads/a26;->e:Lyads/lp6;

    iget-object p0, v1, Lyads/a26;->d:Lyads/ap6;

    iget-object v4, p0, Lyads/ap6;->e:Ljava/util/HashSet;

    iget-object p0, v3, Lyads/lp6;->b:Lyads/sp6;

    new-instance v2, Lyads/hq6;

    invoke-direct/range {v2 .. v7}, Lyads/hq6;-><init>(Lyads/lp6;Ljava/util/HashSet;Lorg/json/JSONObject;J)V

    invoke-virtual {p0, v2}, Lyads/sp6;->a(Lyads/mp6;)V

    goto :goto_7

    :cond_7
    iget-object p0, v1, Lyads/a26;->e:Lyads/lp6;

    iget-object v2, p0, Lyads/lp6;->b:Lyads/sp6;

    new-instance v3, Lyads/zp6;

    invoke-direct {v3, p0}, Lyads/zp6;-><init>(Lyads/lp6;)V

    invoke-virtual {v2, v3}, Lyads/sp6;->a(Lyads/mp6;)V

    :goto_7
    iget-object p0, v1, Lyads/a26;->d:Lyads/ap6;

    iget-object v2, p0, Lyads/ap6;->a:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    iget-object v2, p0, Lyads/ap6;->b:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    iget-object v2, p0, Lyads/ap6;->c:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    iget-object v2, p0, Lyads/ap6;->d:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    iget-object v2, p0, Lyads/ap6;->e:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    iget-object v2, p0, Lyads/ap6;->f:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    iget-object v2, p0, Lyads/ap6;->g:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    iput-boolean v0, p0, Lyads/ap6;->j:Z

    iget-object p0, p0, Lyads/ap6;->h:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    iget-object p0, v1, Lyads/a26;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_9

    iget-object p0, v1, Lyads/a26;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_8

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_9
    :goto_8
    sget-object p0, Lyads/qq6;->d:Lyads/qq6;

    invoke-virtual {p0}, Lyads/qq6;->a()V

    return-void
.end method
