.class public final Le4;
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

    iput p2, p0, Le4;->f:I

    iput-object p1, p0, Le4;->g:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Le4;->f:I

    iget-object p0, p0, Le4;->g:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lcom/warefly/checkscan/auth/presentation/callVerification/view/VerificationCallFragment;

    invoke-virtual {p0}, Lcom/warefly/checkscan/auth/presentation/callVerification/view/VerificationCallFragment;->o()Lcom/warefly/checkscan/auth/presentation/callVerification/presenter/VerificationCallPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/auth/presentation/callVerification/presenter/VerificationCallPresenter;->onCallAgainAgainClicked()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_0
    check-cast p1, Ljava/util/List;

    check-cast p0, Lc4;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, p1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lc4;->l:Lb16;

    invoke-interface {v3, v2}, Lb16;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lc4;->b:Lj5;

    invoke-interface {p0, v0}, Lj5;->q(Ljava/util/ArrayList;)Lqp1;

    move-result-object p0

    new-instance v0, Ld4;

    invoke-direct {v0, p1}, Ld4;-><init>(Ljava/util/List;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lvq1;

    invoke-direct {p1, p0, v0}, Lvq1;-><init>(Lqp1;Ljava/util/concurrent/Callable;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lmz7;->e(Ljava/lang/Object;)Lo08;

    move-result-object p1

    :goto_1
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
