.class public final Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesView;",
        ">;"
    }
.end annotation


# instance fields
.field private final catId:I

.field private final flowRouter:Luf3;

.field private final interactor:Lbm0;

.field private final isFavorite:Z

.field private promocodesController:Ls26;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls26<",
            "Ler6;",
            ">;"
        }
    .end annotation
.end field

.field private final query:Ljava/lang/String;


# direct methods
.method public constructor <init>(Luf3;Lbm0;ILjava/lang/String;Z)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter;->flowRouter:Luf3;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter;->interactor:Lbm0;

    iput p3, p0, Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter;->catId:I

    iput-object p4, p0, Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter;->query:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter;->isFavorite:Z

    return-void
.end method

.method public static final synthetic access$getCatId$p(Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter;)I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter;->catId:I

    return p0
.end method

.method public static final synthetic access$getInteractor$p(Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter;)Lbm0;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter;->interactor:Lbm0;

    return-object p0
.end method

.method public static final synthetic access$getPromocodesController$p(Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter;)Ls26;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter;->promocodesController:Ls26;

    return-object p0
.end method

.method public static final synthetic access$getQuery$p(Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter;->query:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$isFavorite$p(Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter;->isFavorite:Z

    return p0
.end method

.method private final loadPromocodes()V
    .locals 4

    new-instance v0, Ls26;

    new-instance v1, Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter$b;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter$b;-><init>(Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter;)V

    new-instance v2, Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter$a;

    new-instance v3, Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter$c;

    invoke-direct {v3, p0}, Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter$c;-><init>(Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter;)V

    invoke-direct {v2, v3}, Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter$a;-><init>(Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter$c;)V

    invoke-direct {v0, v1, v2}, Ls26;-><init>(Lnl3;Ls26$m;)V

    invoke-virtual {v0}, Ls26;->c()V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter;->promocodesController:Ls26;

    return-void
.end method


# virtual methods
.method public final loadMorePromocodes()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter;->promocodesController:Ls26;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ls26;->a()V

    :cond_0
    return-void
.end method

.method public final onBackPressed()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter;->flowRouter:Luf3;

    invoke-virtual {p0}, Lo87;->c()V

    return-void
.end method

.method public final onFavoriteClicked(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter;->interactor:Lbm0;

    invoke-virtual {v0, p1, p2}, Lbm0;->e(IZ)Lh08;

    move-result-object v0

    sget-object v1, Lne7;->c:Lhe7;

    invoke-virtual {v0, v1}, Lqp1;->i(Lhe7;)Lrq1;

    move-result-object v0

    invoke-static {}, Lrj;->a()Lju3;

    move-result-object v1

    invoke-virtual {v0, v1}, Lqp1;->f(Lhe7;)Llq1;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter$d;

    invoke-direct {v1, p2, p1, p0}, Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter$d;-><init>(ZILcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter;)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-static {v0, p1, v1, p2}, Lyb8;->g(Llq1;Lnl3;Lll3;I)Lcp2;

    move-result-object v0

    invoke-static {p0, v0, p1, p2, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->disposeOnDestroy$default(Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;Lcp2;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public onFirstViewAttach()V
    .locals 0

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter;->loadPromocodes()V

    return-void
.end method

.method public final onPromocodeClicked(I)V
    .locals 3

    iget v0, p0, Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter;->catId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Lvd;

    invoke-direct {v0, p1}, Lvd;-><init>(I)V

    invoke-virtual {v0}, Lkd;->a()V

    new-instance v0, Lpd;

    invoke-direct {v0, p1}, Lpd;-><init>(I)V

    invoke-virtual {v0}, Lkd;->a()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter;->query:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Lxd;

    invoke-direct {v0, p1}, Lxd;-><init>(I)V

    invoke-virtual {v0}, Lkd;->a()V

    new-instance v0, Lrd;

    invoke-direct {v0, p1}, Lrd;-><init>(I)V

    invoke-virtual {v0}, Lkd;->a()V

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/promocodes/presenter/PromocodesPresenter;->flowRouter:Luf3;

    new-instance v0, Lqf7;

    sget-object v1, Lsq0;->COUPON:Lsq0;

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lqf7;-><init>(ILsq0;I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Luf3;->c:Lo87;

    invoke-virtual {p0, v0}, Lo87;->d(Ldf7;)V

    return-void
.end method
