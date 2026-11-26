.class public final Lyads/s44;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# instance fields
.field public b:I

.field public final synthetic c:Lcom/monetization/ads/mediation/base/initialize/a;

.field public final synthetic d:Landroid/content/Context;

.field public final synthetic e:Lyads/dt;


# direct methods
.method public constructor <init>(Lcom/monetization/ads/mediation/base/initialize/a;Landroid/content/Context;Lyads/dt;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/s44;->c:Lcom/monetization/ads/mediation/base/initialize/a;

    iput-object p2, p0, Lyads/s44;->d:Landroid/content/Context;

    iput-object p3, p0, Lyads/s44;->e:Lyads/dt;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 2

    new-instance p1, Lyads/s44;

    iget-object v0, p0, Lyads/s44;->c:Lcom/monetization/ads/mediation/base/initialize/a;

    iget-object v1, p0, Lyads/s44;->d:Landroid/content/Context;

    iget-object p0, p0, Lyads/s44;->e:Lyads/dt;

    invoke-direct {p1, v0, v1, p0, p2}, Lyads/s44;-><init>(Lcom/monetization/ads/mediation/base/initialize/a;Landroid/content/Context;Lyads/dt;Le02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly22;

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lyads/s44;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lyads/s44;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lyads/s44;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    sget-object v1, La32;->COROUTINE_SUSPENDED:La32;

    iget v2, v0, Lyads/s44;->b:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v4, :cond_0

    invoke-static/range {p1 .. p1}, Lr57;->b(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lah;->f(Ljava/lang/String;)V

    return-object v3

    :cond_1
    invoke-static/range {p1 .. p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object v2, v0, Lyads/s44;->c:Lcom/monetization/ads/mediation/base/initialize/a;

    iget-object v5, v0, Lyads/s44;->d:Landroid/content/Context;

    iget-object v6, v0, Lyads/s44;->e:Lyads/dt;

    iput v4, v0, Lyads/s44;->b:I

    sget-object v4, Lcom/monetization/ads/mediation/base/initialize/a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lcom/monetization/ads/mediation/base/initialize/a;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, v2, Lcom/monetization/ads/mediation/base/initialize/a;->b:Lyads/bt;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v6, Lyads/dt;->c:Lyads/o74;

    if-eqz v4, :cond_2

    iget-object v4, v4, Lyads/o74;->c:Ljava/util/List;

    if-eqz v4, :cond_2

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lyads/h74;

    iget-object v7, v7, Lyads/h74;->c:Ljava/util/List;

    invoke-static {v7, v6}, Lnn1;->s(Ljava/lang/Iterable;Ljava/util/Collection;)V

    goto :goto_0

    :cond_2
    sget-object v6, Lkx2;->b:Lkx2;

    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v6, v7}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lyads/l74;

    iget-object v8, v2, Lcom/monetization/ads/mediation/base/initialize/a;->c:Lyads/vy4;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, Lyads/x54;

    iget-object v10, v7, Lyads/l74;->b:Ljava/lang/String;

    iget-object v11, v7, Lyads/l74;->c:Ljava/util/Map;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v9 .. v17}, Lyads/x54;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lyads/j5;Ljava/util/Map;Lyads/cb5;)V

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object v6, v2, Lcom/monetization/ads/mediation/base/initialize/a;->e:Lyads/i34;

    invoke-virtual {v6, v4}, Lyads/i34;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    new-instance v6, Lyads/w44;

    invoke-direct {v6, v4, v2, v5, v3}, Lyads/w44;-><init>(Ljava/util/ArrayList;Lcom/monetization/ads/mediation/base/initialize/a;Landroid/content/Context;Le02;)V

    invoke-static {v6, v0}, Lrm9;->c(Lbm3;Le02;)Ljava/lang/Object;

    move-result-object v0

    sget-object v2, La32;->COROUTINE_SUSPENDED:La32;

    if-ne v0, v2, :cond_5

    goto :goto_2

    :cond_5
    sget-object v0, Lj59;->a:Lj59;

    :goto_2
    if-ne v0, v2, :cond_6

    goto :goto_3

    :cond_6
    sget-object v0, Lj59;->a:Lj59;

    goto :goto_3

    :cond_7
    sget-object v0, Lj59;->a:Lj59;

    :goto_3
    if-ne v0, v1, :cond_8

    return-object v1

    :cond_8
    :goto_4
    sget-object v0, Lj59;->a:Lj59;

    return-object v0
.end method
