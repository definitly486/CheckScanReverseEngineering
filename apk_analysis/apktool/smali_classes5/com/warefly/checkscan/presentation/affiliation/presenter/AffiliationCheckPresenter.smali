.class public final Lcom/warefly/checkscan/presentation/affiliation/presenter/AffiliationCheckPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckView;",
        ">;"
    }
.end annotation


# instance fields
.field private final admitadInteractor:Lx9;

.field private final flowRouter:Luf3;

.field private isCheckingInProgress:Z

.field private link:Ljava/lang/String;

.field private final linkCheckerId:I

.field private final shopId:I


# direct methods
.method public constructor <init>(IILx9;Luf3;)V
    .locals 0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput p1, p0, Lcom/warefly/checkscan/presentation/affiliation/presenter/AffiliationCheckPresenter;->linkCheckerId:I

    iput p2, p0, Lcom/warefly/checkscan/presentation/affiliation/presenter/AffiliationCheckPresenter;->shopId:I

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/affiliation/presenter/AffiliationCheckPresenter;->admitadInteractor:Lx9;

    iput-object p4, p0, Lcom/warefly/checkscan/presentation/affiliation/presenter/AffiliationCheckPresenter;->flowRouter:Luf3;

    return-void
.end method

.method private static final checkLink$lambda$1$lambda$0(Lcom/warefly/checkscan/presentation/affiliation/presenter/AffiliationCheckPresenter;)V
    .locals 2

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckView;->setLinkCheckingLoading(Z)V

    :cond_0
    iput-boolean v1, p0, Lcom/warefly/checkscan/presentation/affiliation/presenter/AffiliationCheckPresenter;->isCheckingInProgress:Z

    return-void
.end method

.method public static synthetic e(Lcom/warefly/checkscan/presentation/affiliation/presenter/AffiliationCheckPresenter;)V
    .locals 0

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/affiliation/presenter/AffiliationCheckPresenter;->checkLink$lambda$1$lambda$0(Lcom/warefly/checkscan/presentation/affiliation/presenter/AffiliationCheckPresenter;)V

    return-void
.end method


# virtual methods
.method public final checkLink()V
    .locals 6

    iget-boolean v0, p0, Lcom/warefly/checkscan/presentation/affiliation/presenter/AffiliationCheckPresenter;->isCheckingInProgress:Z

    if-nez v0, :cond_1

    sget-object v0, Lkd$e$a$b$a;->e:Lkd$e$a$b$a;

    invoke-virtual {v0}, Lkd;->a()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/affiliation/presenter/AffiliationCheckPresenter;->link:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v1

    check-cast v1, Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckView;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-interface {v1, v2}, Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckView;->setLinkCheckingLoading(Z)V

    :cond_0
    iput-boolean v2, p0, Lcom/warefly/checkscan/presentation/affiliation/presenter/AffiliationCheckPresenter;->isCheckingInProgress:Z

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/affiliation/presenter/AffiliationCheckPresenter;->admitadInteractor:Lx9;

    iget v3, p0, Lcom/warefly/checkscan/presentation/affiliation/presenter/AffiliationCheckPresenter;->linkCheckerId:I

    iget v4, p0, Lcom/warefly/checkscan/presentation/affiliation/presenter/AffiliationCheckPresenter;->shopId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v1, Lx9;->a:Laa;

    iget-object v1, v1, Lx9;->b:Ljf6;

    invoke-interface {v1}, Ljf6;->O0()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v5, v0, v3, v4, v1}, Laa;->h(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;)Le08;

    move-result-object v0

    sget-object v1, Lne7;->c:Lhe7;

    invoke-virtual {v0, v1}, Lmz7;->i(Lhe7;)Le18;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmz7;->f(Lhe7;)Lr08;

    move-result-object v0

    new-instance v1, Lhb;

    invoke-direct {v1, p0}, Lhb;-><init>(Lcom/warefly/checkscan/presentation/affiliation/presenter/AffiliationCheckPresenter;)V

    new-instance v3, Luz7;

    invoke-direct {v3, v0, v1}, Luz7;-><init>(Lmz7;Lh6;)V

    new-instance v0, Lcom/warefly/checkscan/presentation/affiliation/presenter/AffiliationCheckPresenter$a;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/affiliation/presenter/AffiliationCheckPresenter$a;-><init>(Lcom/warefly/checkscan/presentation/affiliation/presenter/AffiliationCheckPresenter;)V

    new-instance v1, Lcom/warefly/checkscan/presentation/affiliation/presenter/AffiliationCheckPresenter$b;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/affiliation/presenter/AffiliationCheckPresenter$b;-><init>(Lcom/warefly/checkscan/presentation/affiliation/presenter/AffiliationCheckPresenter;)V

    invoke-static {v3, v0, v1}, Lyb8;->d(Lmz7;Lnl3;Lnl3;)Lrx1;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v2, v1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final clearLinkInput()V
    .locals 1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckView;->clearInput()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/affiliation/presenter/AffiliationCheckPresenter;->link:Ljava/lang/String;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckView;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckView;->setNoError()V

    :cond_1
    return-void
.end method

.method public final copyPasteLink()V
    .locals 0

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckView;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckView;->pasteFromClipboard()V

    :cond_0
    return-void
.end method

.method public final onBackPressed()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/affiliation/presenter/AffiliationCheckPresenter;->flowRouter:Luf3;

    invoke-virtual {p0}, Lo87;->c()V

    return-void
.end method

.method public final showHowToCopyLink()V
    .locals 0

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckView;

    invoke-interface {p0}, Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckView;->showHowToCopyDialog()V

    return-void
.end method

.method public final validateLinkFormat(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v2

    check-cast v2, Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckView;

    if-eqz v2, :cond_0

    invoke-interface {v2, v1}, Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckView;->enableCheckButton(Z)V

    :cond_0
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v2

    check-cast v2, Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckView;

    if-eqz v2, :cond_1

    invoke-interface {v2, v1}, Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckView;->showClearButton(Z)V

    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckView;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/warefly/checkscan/presentation/affiliation/view/AffiliationCheckView;->setNoError()V

    :cond_2
    iput-object p1, p0, Lcom/warefly/checkscan/presentation/affiliation/presenter/AffiliationCheckPresenter;->link:Ljava/lang/String;

    return-void
.end method
