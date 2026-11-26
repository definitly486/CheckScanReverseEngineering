.class public final Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/presenter/FiltersNewDialogPresenter$e;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/presenter/FiltersNewDialogPresenter;->subFilterClick(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Ljava/util/List<",
        "+",
        "Lvy4;",
        ">;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/presenter/FiltersNewDialogPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/presenter/FiltersNewDialogPresenter;IZI)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/presenter/FiltersNewDialogPresenter$e;->f:Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/presenter/FiltersNewDialogPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Ljava/util/Collection;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p1, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/presenter/FiltersNewDialogPresenter$e;->f:Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/presenter/FiltersNewDialogPresenter;

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/presenter/FiltersNewDialogPresenter;->access$getInteractor$p(Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/presenter/FiltersNewDialogPresenter;)Lp61;

    move-result-object v0

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/presenter/FiltersNewDialogPresenter;->access$getDiscountId$p(Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/presenter/FiltersNewDialogPresenter;)J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lp61;->e:Lon2;

    invoke-interface {v0, v1, v2, p1}, Lon2;->b(JLjava/util/ArrayList;)V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/view/FilterNewDialogView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/coupons/dialogFilters/view/FilterNewDialogView;->setUpdatedList(Ljava/util/List;)V

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lvy4;

    const/4 p0, 0x0

    throw p0
.end method
