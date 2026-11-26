.class public final Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter$n;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;->requestVerificationPhone(Ljava/lang/String;)V
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
.field public final synthetic f:Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter$n;->f:Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter$n;->g:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lxv1;

    instance-of v0, p1, Lxv1$c;

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter$n;->f:Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;->access$eventUpgradeFormOpened(Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;)V

    invoke-static {v1}, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;->access$getFlowRouter$p(Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter;)Luf3;

    move-result-object v0

    new-instance v1, Loi7;

    sget-object v2, Lgl3;->ISSUE_CARD:Lgl3;

    check-cast p1, Lxv1$c;

    iget p1, p1, Lxv1$c;->a:I

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/createCard/presenter/CreateCardPresenter$n;->g:Ljava/lang/String;

    invoke-direct {v1, p0, v2, p1}, Loi7;-><init>(Ljava/lang/String;Lgl3;I)V

    const/4 p0, 0x1

    new-array p0, p0, [Llk3;

    const/4 p1, 0x0

    aput-object v1, p0, p1

    invoke-virtual {v0, p0}, Luf3;->j([Llk3;)V

    goto :goto_0

    :cond_0
    instance-of p0, p1, Lxv1$b;

    if-eqz p0, :cond_1

    invoke-virtual {v1}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardView;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardView;->showPhoneUsedError()V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardView;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/createCard/view/CreateCardView;->showTimeConfirmError()V

    :cond_2
    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
