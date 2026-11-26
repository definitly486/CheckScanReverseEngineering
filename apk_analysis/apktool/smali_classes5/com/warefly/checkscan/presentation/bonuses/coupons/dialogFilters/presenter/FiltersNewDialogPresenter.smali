.class public final Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/presenter/FiltersNewDialogPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/view/FilterNewDialogView;",
        ">;"
    }
.end annotation


# instance fields
.field private final discountId:J

.field private final discountType:Z

.field private final interactor:Lp61;

.field private final pageId:I


# direct methods
.method public constructor <init>(ILp61;ZJ)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput p1, p0, Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/presenter/FiltersNewDialogPresenter;->pageId:I

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/presenter/FiltersNewDialogPresenter;->interactor:Lp61;

    iput-boolean p3, p0, Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/presenter/FiltersNewDialogPresenter;->discountType:Z

    iput-wide p4, p0, Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/presenter/FiltersNewDialogPresenter;->discountId:J

    return-void
.end method

.method public synthetic constructor <init>(ILp61;ZJILjh2;)V
    .locals 0

    const/4 p7, 0x1

    and-int/2addr p6, p7

    if-eqz p6, :cond_0

    move p1, p7

    .line 15
    :cond_0
    invoke-direct/range {p0 .. p5}, Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/presenter/FiltersNewDialogPresenter;-><init>(ILp61;ZJ)V

    return-void
.end method

.method public static final synthetic access$checkHaveSecondLevelSub(Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/presenter/FiltersNewDialogPresenter;Lnb8;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/presenter/FiltersNewDialogPresenter;->checkHaveSecondLevelSub(Lnb8;)V

    return-void
.end method

.method public static final synthetic access$checkHaveSubFilters(Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/presenter/FiltersNewDialogPresenter;Lvy4;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/presenter/FiltersNewDialogPresenter;->checkHaveSubFilters(Lvy4;)V

    return-void
.end method

.method public static final synthetic access$getDiscountId$p(Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/presenter/FiltersNewDialogPresenter;)J
    .locals 2

    iget-wide v0, p0, Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/presenter/FiltersNewDialogPresenter;->discountId:J

    return-wide v0
.end method

.method public static final synthetic access$getInteractor$p(Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/presenter/FiltersNewDialogPresenter;)Lp61;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/presenter/FiltersNewDialogPresenter;->interactor:Lp61;

    return-object p0
.end method

.method public static final synthetic access$getPageId$p(Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/presenter/FiltersNewDialogPresenter;)I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/presenter/FiltersNewDialogPresenter;->pageId:I

    return p0
.end method

.method private final checkHaveSecondLevelSub(Lnb8;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/view/FilterNewDialogView;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private final checkHaveSubFilters(Lvy4;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/view/FilterNewDialogView;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method private final setFilters()V
    .locals 6

    iget-boolean v0, p0, Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/presenter/FiltersNewDialogPresenter;->discountType:Z

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/presenter/FiltersNewDialogPresenter;->interactor:Lp61;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-wide v4, p0, Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/presenter/FiltersNewDialogPresenter;->discountId:J

    iget-object v0, v1, Lp61;->e:Lon2;

    invoke-interface {v0, v4, v5}, Lon2;->a(J)Lo08;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/presenter/FiltersNewDialogPresenter$c;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/presenter/FiltersNewDialogPresenter$c;-><init>(Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/presenter/FiltersNewDialogPresenter;)V

    invoke-static {v0, v3, v1, v2}, Lyb8;->f(Lmz7;Lnl3;Lnl3;I)Lrx1;

    move-result-object v0

    invoke-static {p0, v0, v3, v2, v3}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    :cond_0
    iget v0, p0, Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/presenter/FiltersNewDialogPresenter;->pageId:I

    iget-object v1, v1, Lp61;->b:Lwk7;

    invoke-interface {v1, v0}, Lwk7;->b(I)Lo08;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/presenter/FiltersNewDialogPresenter$d;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/presenter/FiltersNewDialogPresenter$d;-><init>(Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/presenter/FiltersNewDialogPresenter;)V

    invoke-static {v0, v3, v1, v2}, Lyb8;->f(Lmz7;Lnl3;Lnl3;I)Lrx1;

    move-result-object v0

    invoke-static {p0, v0, v3, v2, v3}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final onFilterClick(IZ)V
    .locals 6

    iget-boolean v0, p0, Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/presenter/FiltersNewDialogPresenter;->discountType:Z

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/presenter/FiltersNewDialogPresenter;->interactor:Lp61;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-wide v4, p0, Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/presenter/FiltersNewDialogPresenter;->discountId:J

    iget-object v0, v1, Lp61;->e:Lon2;

    invoke-interface {v0, v4, v5}, Lon2;->a(J)Lo08;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/presenter/FiltersNewDialogPresenter$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/presenter/FiltersNewDialogPresenter$a;-><init>(Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/presenter/FiltersNewDialogPresenter;IZ)V

    invoke-static {v0, v3, v1, v2}, Lyb8;->f(Lmz7;Lnl3;Lnl3;I)Lrx1;

    move-result-object p1

    invoke-static {p0, p1, v3, v2, v3}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    :cond_0
    iget v0, p0, Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/presenter/FiltersNewDialogPresenter;->pageId:I

    iget-object v1, v1, Lp61;->b:Lwk7;

    invoke-interface {v1, v0}, Lwk7;->b(I)Lo08;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/presenter/FiltersNewDialogPresenter$b;

    invoke-direct {v1, p0, p1, p2}, Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/presenter/FiltersNewDialogPresenter$b;-><init>(Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/presenter/FiltersNewDialogPresenter;IZ)V

    invoke-static {v0, v3, v1, v2}, Lyb8;->f(Lmz7;Lnl3;Lnl3;I)Lrx1;

    move-result-object p1

    invoke-static {p0, p1, v3, v2, v3}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public onFirstViewAttach()V
    .locals 0

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/presenter/FiltersNewDialogPresenter;->setFilters()V

    return-void
.end method

.method public final onSimpleFilterClick(ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/view/FilterNewDialogView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/view/FilterNewDialogView;->showSelectedFilterCategory(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final subFilterClick(IIZ)V
    .locals 6

    iget-boolean v0, p0, Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/presenter/FiltersNewDialogPresenter;->discountType:Z

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/presenter/FiltersNewDialogPresenter;->interactor:Lp61;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-wide v4, p0, Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/presenter/FiltersNewDialogPresenter;->discountId:J

    iget-object v0, v1, Lp61;->e:Lon2;

    invoke-interface {v0, v4, v5}, Lon2;->a(J)Lo08;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/presenter/FiltersNewDialogPresenter$e;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/presenter/FiltersNewDialogPresenter$e;-><init>(Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/presenter/FiltersNewDialogPresenter;IZI)V

    invoke-static {v0, v3, v1, v2}, Lyb8;->f(Lmz7;Lnl3;Lnl3;I)Lrx1;

    move-result-object p1

    invoke-static {p0, p1, v3, v2, v3}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    :cond_0
    iget v0, p0, Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/presenter/FiltersNewDialogPresenter;->pageId:I

    iget-object v1, v1, Lp61;->b:Lwk7;

    invoke-interface {v1, v0}, Lwk7;->b(I)Lo08;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/presenter/FiltersNewDialogPresenter$f;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/presenter/FiltersNewDialogPresenter$f;-><init>(Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/presenter/FiltersNewDialogPresenter;IZI)V

    invoke-static {v0, v3, v1, v2}, Lyb8;->f(Lmz7;Lnl3;Lnl3;I)Lrx1;

    move-result-object p1

    invoke-static {p0, p1, v3, v2, v3}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method
