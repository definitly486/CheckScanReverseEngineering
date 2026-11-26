.class public final Lyads/c5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/gw3;

.field public final b:Lyads/cn;


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lyads/gw3;

    invoke-direct {v0}, Lyads/gw3;-><init>()V

    new-instance v1, Lyads/cn;

    invoke-direct {v1}, Lyads/cn;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/c5;->a:Lyads/gw3;

    iput-object v1, p0, Lyads/c5;->b:Lyads/cn;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 198
    const-string v0, "https://"

    .line 199
    invoke-static {v0, p0}, Lbj;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lyads/c5;->a:Lyads/gw3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lyads/hw3;->f:Lyads/hw3;

    iget-object v0, v0, Lyads/hw3;->b:Ljava/lang/String;

    invoke-static {p1, v0}, Lyads/gw3;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_b

    iget-object p0, p0, Lyads/c5;->b:Lyads/cn;

    iget-object v0, p0, Lyads/cn;->a:Lyads/v93;

    iget-object v0, v0, Lyads/v93;->a:Lyads/zg5;

    invoke-virtual {v0, p1}, Lyads/zg5;->a(Landroid/content/Context;)Lyads/fe5;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v2, v0, Lyads/fe5;->Y:Ljava/lang/String;

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    sget-object v3, Lyads/hw3;->g:Lyads/hw3;

    iget-object v3, v3, Lyads/hw3;->b:Ljava/lang/String;

    invoke-static {p1, v3}, Lyads/gw3;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_3

    const-string v3, ","

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lta8;->Y(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    move-object v3, v1

    :goto_1
    if-nez v3, :cond_4

    iget-object v3, v0, Lyads/fe5;->B0:Ljava/util/List;

    :cond_4
    invoke-static {v2}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {v3, p1}, Lqn1;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_3

    :cond_5
    :goto_2
    sget-object p1, Lkx2;->b:Lkx2;

    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_a

    invoke-static {p1}, Lqn1;->P(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lyads/b56;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-static {v4}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/2addr v5, v2

    if-ne v5, v2, :cond_7

    iget-object v5, p0, Lyads/cn;->b:Lyads/u93;

    sget-object v6, Lyads/u93;->b:Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v6, 0x3e8

    invoke-virtual {v5, v6, v4}, Lyads/u93;->a(ILjava/lang/String;)Z

    move-result v4

    goto :goto_4

    :cond_7
    const/4 v4, 0x0

    :goto_4
    if-eqz v4, :cond_6

    move-object v1, v3

    :cond_8
    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_9

    invoke-static {p1}, Lqn1;->b0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :goto_5
    move-object v0, p0

    goto :goto_6

    :cond_9
    move-object v0, v1

    goto :goto_6

    :cond_a
    invoke-static {p1}, Lqn1;->V(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_5

    :goto_6
    if-nez v0, :cond_b

    const-string v0, "yandex.com/ads"

    :cond_b
    invoke-static {v0}, Lyads/c5;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
