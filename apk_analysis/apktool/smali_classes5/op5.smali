.class public final Lop5;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lop5;->f:I

    iput-object p1, p0, Lop5;->g:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    iget v1, v0, Lop5;->f:I

    const/4 v2, 0x1

    iget-object v0, v0, Lop5;->g:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    move-object/from16 v1, p1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/warefly/checkscan/presentation/webview/WebViewReplenishmentActivity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    sget-object v0, Lj59;->a:Lj59;

    return-object v0

    :pswitch_0
    move-object/from16 v1, p1

    check-cast v1, Ljava/util/List;

    check-cast v0, Lpp5;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v3, v1

    check-cast v3, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v3, v5}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v7, 0x0

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lto5;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Lto5;->e()I

    move-result v9

    invoke-virtual {v5}, Lto5;->h()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5}, Lto5;->b()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5}, Lto5;->c()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5}, Lto5;->j()Z

    move-result v13

    invoke-virtual {v5}, Lto5;->i()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v5}, Lto5;->a()Ljava/lang/Boolean;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    :cond_0
    move v14, v7

    invoke-virtual {v5}, Lto5;->d()Lto5$b;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lto5$b;->b()Ljava/lang/String;

    move-result-object v7

    move-object v15, v7

    goto :goto_1

    :cond_1
    const/4 v15, 0x0

    :goto_1
    invoke-virtual {v5}, Lto5;->f()Lto5$a;

    move-result-object v7

    if-eqz v7, :cond_2

    new-instance v8, Lcp5$a;

    invoke-virtual {v7}, Lto5$a;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7}, Lto5$a;->b()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v6, v7}, Lcp5$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v16, v8

    goto :goto_2

    :cond_2
    const/16 v16, 0x0

    :goto_2
    invoke-virtual {v5}, Lto5;->g()Lc06;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lc06;->f()Lb06;

    move-result-object v6

    move-object/from16 v17, v6

    goto :goto_3

    :cond_3
    const/16 v17, 0x0

    :goto_3
    invoke-virtual {v5}, Lto5;->d()Lto5$b;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lto5$b;->a()Ljava/lang/Float;

    move-result-object v6

    move-object/from16 v19, v6

    goto :goto_4

    :cond_4
    const/16 v19, 0x0

    :goto_4
    new-instance v8, Lcp5;

    invoke-direct/range {v8 .. v19}, Lcp5;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Lcp5$a;Lb06;Ljava/lang/String;Ljava/lang/Float;)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    iget-object v3, v0, Lpp5;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v4, v7

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, -0x1

    if-eqz v5, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lto5;

    invoke-virtual {v5}, Lto5;->j()Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_6

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_7
    move v4, v6

    :goto_6
    iget-boolean v1, v0, Lpp5;->c:Z

    if-nez v1, :cond_8

    if-eq v4, v6, :cond_8

    move v1, v2

    goto :goto_7

    :cond_8
    move v1, v7

    :goto_7
    if-eqz v1, :cond_9

    new-instance v5, Lbp5;

    const-string v8, "\u041d\u043e\u0432\u044b\u0435"

    invoke-direct {v5, v8}, Lbp5;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iput-boolean v2, v0, Lpp5;->c:Z

    :cond_9
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpz3;

    instance-of v8, v5, Lcp5;

    if-eqz v8, :cond_a

    check-cast v5, Lcp5;

    goto :goto_9

    :cond_a
    const/4 v5, 0x0

    :goto_9
    if-eqz v5, :cond_b

    iget-boolean v5, v5, Lcp5;->e:Z

    if-ne v5, v2, :cond_b

    goto :goto_a

    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_c
    move v7, v6

    :goto_a
    iget-boolean v4, v0, Lpp5;->b:Z

    if-nez v4, :cond_e

    if-eq v7, v6, :cond_e

    new-instance v4, Lbp5;

    const-string v5, "\u041f\u0440\u043e\u0441\u043c\u043e\u0442\u0440\u0435\u043d\u043d\u044b\u0435"

    invoke-direct {v4, v5}, Lbp5;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    if-eqz v1, :cond_d

    new-instance v1, Ldd9;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v3, v7, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_d
    iput-boolean v2, v0, Lpp5;->b:Z

    :cond_e
    return-object v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
