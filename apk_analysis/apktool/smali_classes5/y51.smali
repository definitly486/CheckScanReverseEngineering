.class public final Ly51;
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

    iput p2, p0, Ly51;->f:I

    iput-object p1, p0, Ly51;->g:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Ly51;->f:I

    iget-object p0, p0, Ly51;->g:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/cheques/view/ChequesFragment;->o()Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/cheques/presenter/ChequesPresenter;->onStatisticsClicked()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_0
    check-cast p1, Ljava/util/List;

    check-cast p0, Ld61;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/lang/Iterable;

    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm10;

    invoke-virtual {v0}, Lm10;->a()Ll10;

    move-result-object v0

    sget-object v1, Ll10;->ADVANCE:Ll10;

    if-ne v0, v1, :cond_1

    iget-object p1, p0, Ld61;->a:Lo51;

    invoke-interface {p1}, Lo51;->a()Lmz7;

    move-result-object p1

    iget-object v0, p0, Ld61;->b:Lzt6;

    invoke-interface {v0}, Lzt6;->a()Lmz7;

    move-result-object v0

    new-instance v1, Lkl0;

    sget-object v2, Lw51;->f:Lw51;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lkl0;-><init>(Ljava/lang/Object;I)V

    invoke-static {p1, v0, v1}, Lmz7;->j(Lmz7;Lmz7;Lli0;)Lmz7;

    move-result-object p1

    new-instance v0, Lx51;

    invoke-direct {v0, p0}, Lx51;-><init>(Ld61;)V

    new-instance p0, Lll0;

    invoke-direct {p0, v0, v3}, Lll0;-><init>(Ljava/lang/Object;I)V

    new-instance v0, Lh08;

    invoke-direct {v0, p1, p0}, Lh08;-><init>(Lmz7;Lxl3;)V

    goto :goto_1

    :cond_2
    :goto_0
    sget-object v0, Laq1;->b:Laq1;

    :goto_1
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
