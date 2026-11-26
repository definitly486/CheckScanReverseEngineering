.class public final Lrj1;
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

    iput p2, p0, Lrj1;->f:I

    iput-object p1, p0, Lrj1;->g:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lrj1;->f:I

    iget-object p0, p0, Lrj1;->g:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lcom/warefly/checkscan/auth/presentation/smsVerification/view/VerificationSmsFragment;

    invoke-virtual {p0}, Lcom/warefly/checkscan/auth/presentation/smsVerification/view/VerificationSmsFragment;->o()Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter;->onBackClicked()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_0
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment;

    invoke-virtual {p0}, Lcom/warefly/checkscan/auth/presentation/main/view/PhoneSignUpFragment;->o()Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/auth/presentation/main/presenter/PhoneSignUpPresenter;->onNextClicked()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_1
    check-cast p1, Ljava/lang/Boolean;

    check-cast p0, Lcom/warefly/checkscan/presentation/CiceroneActivity;

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/CiceroneActivity;->r:Lrx1;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lrx1;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/CiceroneActivity;->w()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/CiceroneActivity;->t()Lcom/warefly/checkscan/presentation/a;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/a;->d:Lo87;

    sget-object p1, Lif7;->a:Lif7;

    invoke-virtual {p0, p1}, Lo87;->g(Ldf7;)V

    :cond_1
    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
