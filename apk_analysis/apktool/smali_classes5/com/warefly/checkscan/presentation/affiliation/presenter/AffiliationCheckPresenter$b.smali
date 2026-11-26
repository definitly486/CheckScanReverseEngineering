.class public final Lcom/warefly/checkscan/presentation/affiliation/presenter/AffiliationCheckPresenter$b;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/affiliation/presenter/AffiliationCheckPresenter;->checkLink()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Lbh6;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/affiliation/presenter/AffiliationCheckPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/affiliation/presenter/AffiliationCheckPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/affiliation/presenter/AffiliationCheckPresenter$b;->f:Lcom/warefly/checkscan/presentation/affiliation/presenter/AffiliationCheckPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lbh6;

    instance-of v0, p1, Lbh6$a;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/affiliation/presenter/AffiliationCheckPresenter$b;->f:Lcom/warefly/checkscan/presentation/affiliation/presenter/AffiliationCheckPresenter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckView;

    if-eqz p0, :cond_4

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckView;->showResultDialog(Lbh6;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lbh6$b;->a:Lbh6$b;

    invoke-static {p1, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckView;

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckView;->showUnexpectedError()V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lbh6$c;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckView;

    if-eqz p0, :cond_4

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckView;->showResultDialog(Lbh6;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lbh6$d;->a:Lbh6$d;

    invoke-static {p1, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckView;

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckView;->showNotFoundError()V

    goto :goto_0

    :cond_3
    sget-object v0, Lbh6$e;->a:Lbh6$e;

    invoke-static {p1, v0}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckView;

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckView;->showNotValidLinkError()V

    :cond_4
    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
