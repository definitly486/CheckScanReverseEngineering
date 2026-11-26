.class public final Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter$l;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;->requestCodeOld()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Lxv1;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter$l;->f:Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lxv1;

    instance-of v0, p1, Lxv1$c;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter$l;->f:Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneView;->showTimeForRepeatCode()V

    :cond_0
    check-cast p1, Lxv1$c;

    iget p1, p1, Lxv1$c;->a:I

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;->access$showFields(Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;I)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lxv1$b;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneView;

    if-eqz p0, :cond_4

    invoke-interface {p0, v2, v1, v2}, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneView;->showError(ZZZ)V

    goto :goto_0

    :cond_2
    instance-of p1, p1, Lxv1$a;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneView;

    if-eqz p0, :cond_4

    invoke-interface {p0, v2, v2, v1}, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneView;->showError(ZZZ)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneView;

    if-eqz p0, :cond_4

    invoke-interface {p0, v1, v2, v2}, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneView;->showError(ZZZ)V

    :cond_4
    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
