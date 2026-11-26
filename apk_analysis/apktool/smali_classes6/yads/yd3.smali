.class public final Lyads/yd3;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Ljava/util/Set;
    .locals 6

    invoke-static {p1}, Lyads/vk;->a(Ljava/util/List;)Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Lqn1;->x0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lyads/ak;

    iget-object v2, v2, Lyads/ak;->a:Ljava/lang/String;

    const-string v3, "feedback"

    invoke-static {v2, v3}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    check-cast v0, Lyads/ak;

    if-eqz v0, :cond_2

    iget-object p1, v0, Lyads/ak;->c:Ljava/lang/Object;

    goto :goto_1

    :cond_2
    move-object p1, v1

    :goto_1
    instance-of p1, p1, Lyads/mw2;

    sget-object v2, Lkx2;->b:Lkx2;

    if-eqz p1, :cond_9

    iget-object p1, v0, Lyads/ak;->c:Ljava/lang/Object;

    check-cast p1, Lyads/mw2;

    iget-object p1, p1, Lyads/mw2;->a:Lyads/rd3;

    invoke-static {p1}, Lu96;->j(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iget-object v0, v0, Lyads/ak;->d:Lyads/ot3;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lyads/ot3;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lyads/u0;

    invoke-interface {v4}, Lyads/u0;->a()Ljava/lang/String;

    move-result-object v4

    const-string v5, "divkit_adtune"

    invoke-static {v4, v5}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_4
    move-object v3, v1

    :goto_2
    check-cast v3, Lyads/u0;

    goto :goto_3

    :cond_5
    move-object v3, v1

    :goto_3
    instance-of v0, v3, Lyads/nn1;

    if-eqz v0, :cond_6

    move-object v1, v3

    check-cast v1, Lyads/nn1;

    :cond_6
    if-eqz v1, :cond_8

    iget-object v0, v1, Lyads/nn1;->b:Lyads/fo1;

    iget-object v0, v0, Lyads/fo1;->d:Ljava/util/ArrayList;

    if-nez v0, :cond_7

    goto :goto_4

    :cond_7
    move-object v2, v0

    :cond_8
    :goto_4
    invoke-static {v2, p1}, Lqn1;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v2

    :cond_9
    invoke-interface {p0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method
