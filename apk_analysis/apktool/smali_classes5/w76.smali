.class public final Lw76;
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

    iput p2, p0, Lw76;->f:I

    iput-object p1, p0, Lw76;->g:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lw76;->f:I

    iget-object p0, p0, Lw76;->g:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lwi9;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/dialogs/WithdrawalCardsDialog;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/withdrawalMethods/dialogs/WithdrawalCardsDialog;->e:Lnl3;

    invoke-interface {p0, p1}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_0
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lcom/warefly/checkscan/auth/presentation/smsVerification/view/VerificationSmsFragment;

    invoke-virtual {p0}, Lcom/warefly/checkscan/auth/presentation/smsVerification/view/VerificationSmsFragment;->o()Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter;->onSendCodeAgainClicked()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_1
    check-cast p1, Ljava/lang/String;

    check-cast p0, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment;

    invoke-virtual {p0}, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment;->o()Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter;->onPhoneChanged(Ljava/lang/String;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
