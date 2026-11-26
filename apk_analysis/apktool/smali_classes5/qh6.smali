.class public final Lqh6;
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

    iput p2, p0, Lqh6;->f:I

    iput-object p1, p0, Lqh6;->g:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lqh6;->f:I

    iget-object p0, p0, Lqh6;->g:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lyi9;

    iget-object p0, p0, Lyi9;->b:Lcom/warefly/checkscan/presentation/balance/main/presenter/BalancePresenter;

    invoke-interface {p0}, Lyi9$a;->onWithdrawalTransferButtonClicked()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_0
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lcom/warefly/checkscan/auth/presentation/emailVerification/view/VerificationEmailFragment;

    invoke-virtual {p0}, Lcom/warefly/checkscan/auth/presentation/emailVerification/view/VerificationEmailFragment;->o()Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter;->onBackClicked()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lcom/warefly/checkscan/products/presentation/product/view/ProductFragment;

    invoke-virtual {p0}, Lcom/warefly/checkscan/products/presentation/product/view/ProductFragment;->o()Lcom/warefly/checkscan/products/presentation/product/presenter/ProductPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/products/presentation/product/presenter/ProductPresenter;->onScanClicked()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
