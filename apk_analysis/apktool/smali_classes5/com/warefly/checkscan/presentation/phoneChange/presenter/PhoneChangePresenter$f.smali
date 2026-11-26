.class public final Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter$f;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter;->requestCode(Ljava/lang/String;)V
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
.field public final synthetic f:Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter$f;->f:Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter$f;->g:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lxv1;

    instance-of v0, p1, Lxv1$c;

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter$f;->f:Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter;

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter;->access$getFlowRouter$p(Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter;)Luf3;

    move-result-object v0

    check-cast p1, Lxv1$c;

    iget p1, p1, Lxv1$c;->a:I

    sget-object v1, Lgl3;->PHONE_CHANGE:Lgl3;

    new-instance v2, Lni7;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter$f;->g:Ljava/lang/String;

    invoke-direct {v2, p0, v1, p1}, Lni7;-><init>(Ljava/lang/String;Lgl3;I)V

    invoke-virtual {v0, v2}, Lo87;->h(Ldf7;)V

    goto :goto_0

    :cond_0
    instance-of p0, p1, Lxv1$b;

    if-eqz p0, :cond_1

    invoke-virtual {v1}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangeView;

    if-eqz p0, :cond_4

    invoke-static {v1}, Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter;->access$getResourceProvider$p(Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter;)Ls47;

    move-result-object p1

    const v0, 0x7f1402ad

    invoke-interface {p1, v0}, Ls47;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangeView;->showFailService(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    instance-of p0, p1, Lxv1$a;

    if-eqz p0, :cond_2

    invoke-virtual {v1}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangeView;

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangeView;->showUnEnableChangePhone()V

    goto :goto_0

    :cond_2
    instance-of p0, p1, Lxv1$d;

    if-eqz p0, :cond_3

    invoke-virtual {v1}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangeView;

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangeView;->showTimesNotExpired()V

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangeView;

    if-eqz p0, :cond_4

    invoke-static {v1}, Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter;->access$getResourceProvider$p(Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter;)Ls47;

    move-result-object p1

    const v0, 0x7f140610

    invoke-interface {p1, v0}, Ls47;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangeView;->showFailService(Ljava/lang/String;)V

    :cond_4
    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
