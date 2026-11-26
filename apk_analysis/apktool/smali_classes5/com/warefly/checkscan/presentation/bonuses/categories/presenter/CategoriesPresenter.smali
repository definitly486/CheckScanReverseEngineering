.class public final Lcom/warefly/checkscan/presentation/bonuses/categories/presenter/CategoriesPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/bonuses/categories/presenter/CategoriesPresenter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/bonuses/categories/presenter/CategoriesView;",
        ">;"
    }
.end annotation


# instance fields
.field private categoriesPaginator:Ls26;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls26<",
            "Lcs0;",
            ">;"
        }
    .end annotation
.end field

.field private flowRouter:Luf3;

.field private interactor:Lbm0;


# direct methods
.method public constructor <init>(Luf3;Lbm0;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/categories/presenter/CategoriesPresenter;->flowRouter:Luf3;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/bonuses/categories/presenter/CategoriesPresenter;->interactor:Lbm0;

    return-void
.end method

.method public static final synthetic access$getInteractor$p(Lcom/warefly/checkscan/presentation/bonuses/categories/presenter/CategoriesPresenter;)Lbm0;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/categories/presenter/CategoriesPresenter;->interactor:Lbm0;

    return-object p0
.end method

.method private final loadCategories()V
    .locals 4

    new-instance v0, Ls26;

    new-instance v1, Lcom/warefly/checkscan/presentation/bonuses/categories/presenter/CategoriesPresenter$b;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/bonuses/categories/presenter/CategoriesPresenter$b;-><init>(Lcom/warefly/checkscan/presentation/bonuses/categories/presenter/CategoriesPresenter;)V

    new-instance v2, Lcom/warefly/checkscan/presentation/bonuses/categories/presenter/CategoriesPresenter$a;

    new-instance v3, Lcom/warefly/checkscan/presentation/bonuses/categories/presenter/CategoriesPresenter$c;

    invoke-direct {v3, p0}, Lcom/warefly/checkscan/presentation/bonuses/categories/presenter/CategoriesPresenter$c;-><init>(Lcom/warefly/checkscan/presentation/bonuses/categories/presenter/CategoriesPresenter;)V

    invoke-direct {v2, v3}, Lcom/warefly/checkscan/presentation/bonuses/categories/presenter/CategoriesPresenter$a;-><init>(Lcom/warefly/checkscan/presentation/bonuses/categories/presenter/CategoriesPresenter$c;)V

    invoke-direct {v0, v1, v2}, Ls26;-><init>(Lnl3;Ls26$m;)V

    invoke-virtual {v0}, Ls26;->c()V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/categories/presenter/CategoriesPresenter;->categoriesPaginator:Ls26;

    return-void
.end method

.method private final sendCategoryFromListClicked(I)V
    .locals 1

    new-instance p0, Lkd$e$c$b$a;

    const-string v0, "Category_from_the list"

    invoke-static {p1, v0}, Lud;->c(ILjava/lang/String;)Ljava/util/Map;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-direct {p0, p1}, Lkd$e$c$b;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0}, Lkd;->c()V

    return-void
.end method


# virtual methods
.method public final loadMoreCategories()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/categories/presenter/CategoriesPresenter;->categoriesPaginator:Ls26;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ls26;->a()V

    :cond_0
    return-void
.end method

.method public final onBackPressed()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/categories/presenter/CategoriesPresenter;->flowRouter:Luf3;

    invoke-virtual {p0}, Lo87;->c()V

    return-void
.end method

.method public final onCategoryClicked(ILjava/lang/String;)V
    .locals 6

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/categories/presenter/CategoriesPresenter;->sendCategoryFromListClicked(I)V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/categories/presenter/CategoriesPresenter;->flowRouter:Luf3;

    new-instance v0, Lmh7;

    sget-object v4, Luv7;->Category:Luv7;

    const/16 v5, 0xc

    const/4 v3, 0x0

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lmh7;-><init>(ILjava/lang/String;Lkd$o0;Luv7;I)V

    const/4 p1, 0x1

    new-array p1, p1, [Llk3;

    const/4 p2, 0x0

    aput-object v0, p1, p2

    invoke-virtual {p0, p1}, Luf3;->j([Llk3;)V

    return-void
.end method

.method public onFirstViewAttach()V
    .locals 0

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/bonuses/categories/presenter/CategoriesPresenter;->loadCategories()V

    return-void
.end method
