.class public final Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"

# interfaces
.implements Lgm7$a;
.implements Llm7;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeView;",
        ">;",
        "Lgm7$a;",
        "Llm7;"
    }
.end annotation


# instance fields
.field private final balanceInteractor:Lb40;

.field private final flowRouter:Luf3;

.field private final promocodesId:I

.field private promocodesPaginator:Ltf3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltf3<",
            "Lfr6;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILb40;Luf3;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput p1, p0, Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter;->promocodesId:I

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter;->balanceInteractor:Lb40;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter;->flowRouter:Luf3;

    return-void
.end method

.method public static final synthetic access$getBalanceInteractor$p(Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter;)Lb40;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter;->balanceInteractor:Lb40;

    return-object p0
.end method

.method public static final synthetic access$getPromocodesId$p(Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter;)I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter;->promocodesId:I

    return p0
.end method

.method public static final synthetic access$launchInPresenter(Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter;Lhd3;)Lmb4;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    move-result-object p0

    return-object p0
.end method

.method private final setUpPaginator()V
    .locals 5

    new-instance v0, Ltf3;

    new-instance v1, Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter$d;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter$d;-><init>(Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->getPresenterScope()Ly22;

    move-result-object v2

    new-instance v3, Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter$a;

    invoke-direct {v3, p0}, Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter$a;-><init>(Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter;)V

    iget-object v4, p0, Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter;->balanceInteractor:Lb40;

    iget-object v4, v4, Lb40;->h:Lz68;

    invoke-static {v4}, Lbf3;->b(Lxg5;)Lgy6;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Ltf3;-><init>(Lnl3;Ly22;Ltf3$d;Lhd3;)V

    invoke-virtual {v0}, Ltf3;->b()V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter;->promocodesPaginator:Ltf3;

    return-void
.end method


# virtual methods
.method public final loadNextPage()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter;->promocodesPaginator:Ltf3;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ltf3;->a()V

    :cond_0
    return-void
.end method

.method public final onBackPressed()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter;->flowRouter:Luf3;

    invoke-virtual {p0}, Lo87;->c()V

    return-void
.end method

.method public onConfirmExchangeClicked(I)V
    .locals 2

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter;->balanceInteractor:Lb40;

    iget-object v0, v0, Lb40;->a:Ln60;

    invoke-interface {v0, p1}, Ln60;->f(I)Lde3;

    move-result-object p1

    new-instance v0, Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter$b;-><init>(Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter;Le02;)V

    new-instance v1, Ldf3;

    invoke-direct {v1, p1, v0}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, v1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method

.method public onExchangeClicked(Lem7;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeView;->showApproveSheet(Lem7;)V

    :cond_0
    return-void
.end method

.method public onFirstViewAttach()V
    .locals 2

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    new-instance v0, Lkd$k0$a;

    const-string v1, "Click_block"

    invoke-direct {v0, v1}, Lkd$k0;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lkd;->c()V

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter;->setUpPaginator()V

    return-void
.end method

.method public onOrdClicked(Lb06;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeView;->showOrdDialog(Lb06;)V

    :cond_0
    return-void
.end method

.method public onPromocodeCopyClicked(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeView;->copyPromocode(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPromocodeUseClicked(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeView;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;->openUrl(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeView;

    if-eqz p0, :cond_1

    invoke-interface {p0, p2}, Lcom/warefly/checkscan/presentation/balance/promocodes/view/SelectPromocodeView;->copyPromocode(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onSelectPromocodeClicked(I)V
    .locals 3

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter;->balanceInteractor:Lb40;

    iget-object v0, v0, Lb40;->a:Ln60;

    invoke-interface {v0, p1}, Ln60;->y(I)Lde3;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter$c;-><init>(Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter;ILe02;)V

    new-instance p1, Ldf3;

    invoke-direct {p1, v0, v1}, Ldf3;-><init>(Lhd3;Lbm3;)V

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method

.method public final refreshPromocodes()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/promocodes/presenter/SelectPromocodePresenter;->promocodesPaginator:Ltf3;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ltf3;->b()V

    :cond_0
    return-void
.end method
