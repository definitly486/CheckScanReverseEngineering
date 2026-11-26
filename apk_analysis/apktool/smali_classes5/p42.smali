.class public final Lp42;
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

    iput p2, p0, Lp42;->f:I

    iput-object p1, p0, Lp42;->g:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    iget v1, v0, Lp42;->f:I

    const/4 v2, 0x0

    iget-object v0, v0, Lp42;->g:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    move-object/from16 v1, p1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/warefly/checkscan/auth/presentation/userCallVerification/view/VerificationUserCallFragment;

    iget-object v0, v0, Lcom/warefly/checkscan/auth/presentation/userCallVerification/view/VerificationUserCallFragment;->presenter:Lcom/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter;->onBackClicked()V

    sget-object v0, Lj59;->a:Lj59;

    return-object v0

    :cond_0
    const-string v0, "presenter"

    invoke-static {v0}, Laa4;->j(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    move-object/from16 v1, p1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/flows/desktop/view/DesktopFlowFragment;->q()Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;

    move-result-object v0

    sget-object v1, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$a;->Notifications:Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$a;

    invoke-virtual {v0, v1}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopPresenter;->onMenuItemClicked(Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$a;)V

    sget-object v0, Lj59;->a:Lj59;

    return-object v0

    :pswitch_1
    move-object/from16 v1, p1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Ljava/lang/Iterable;

    check-cast v0, Lq42;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lww3;

    invoke-virtual {v4}, Lww3;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lww3;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lww3;->i()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lww3;->g()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Lww3;->f()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4}, Lww3;->b()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4}, Lww3;->j()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4}, Lww3;->a()Z

    move-result v5

    const/4 v14, 0x0

    if-eqz v5, :cond_2

    iget-object v5, v0, Lq42;->b:Ljf6;

    invoke-interface {v5}, Ljf6;->A0()Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    move v5, v14

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Lww3;->a()Z

    move-result v5

    :goto_1
    invoke-virtual {v4}, Lww3;->c()Ljava/util/List;

    move-result-object v15

    check-cast v15, Ljava/lang/Iterable;

    instance-of v2, v15, Ljava/util/Collection;

    if-eqz v2, :cond_3

    move-object v2, v15

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Llb8;

    invoke-virtual {v15}, Llb8;->a()Lmb8;

    move-result-object v15

    sget-object v13, Lmb8;->AddToShoppingCart:Lmb8;

    if-ne v15, v13, :cond_4

    const/4 v14, 0x1

    :cond_5
    :goto_2
    invoke-virtual {v4}, Lww3;->c()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    move-object v15, v13

    check-cast v15, Llb8;

    invoke-virtual {v15}, Llb8;->a()Lmb8;

    move-result-object v15

    move-object/from16 p0, v0

    sget-object v0, Lmb8;->Order:Lmb8;

    if-ne v15, v0, :cond_6

    goto :goto_4

    :cond_6
    move-object/from16 v0, p0

    goto :goto_3

    :cond_7
    move-object/from16 p0, v0

    const/4 v13, 0x0

    :goto_4
    check-cast v13, Llb8;

    if-eqz v13, :cond_8

    invoke-virtual {v13}, Llb8;->b()Ljava/lang/String;

    move-result-object v0

    move-object v15, v0

    goto :goto_5

    :cond_8
    const/4 v15, 0x0

    :goto_5
    invoke-virtual {v4}, Lww3;->h()Ljava/lang/String;

    move-result-object v0

    const-class v2, Lg57;

    if-eqz v0, :cond_a

    invoke-static {v2, v0}, Lht3;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg57;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lg57;->b()Lh57;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_7

    :cond_9
    :goto_6
    move-object/from16 v16, v0

    goto :goto_8

    :cond_a
    :goto_7
    sget-object v0, Lh57;->NO_RESTRICTION:Lh57;

    goto :goto_6

    :goto_8
    invoke-virtual {v4}, Lww3;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-static {v2, v0}, Lht3;->b(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg57;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lg57;->a()Lzf;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lzf;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_a

    :cond_b
    :goto_9
    move-object/from16 v17, v0

    move v13, v5

    goto :goto_b

    :cond_c
    :goto_a
    const-string v0, ""

    goto :goto_9

    :goto_b
    new-instance v5, Lyw3;

    invoke-direct/range {v5 .. v17}, Lyw3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Lh57;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_d
    return-object v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
