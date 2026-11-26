.class public final Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/presenter/FavoritePreviewsPresenter$b;
.super Lpg8;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation runtime Lbd2;
    c = "com.warefly.checkscan.presentation.bonuses.favoritePreviews.presenter.FavoritePreviewsPresenter$onFavouriteClick$1"
    f = "FavoritePreviewsPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/presenter/FavoritePreviewsPresenter;->onFavouriteClick(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpg8;",
        "Lbm3<",
        "Ljava/lang/Boolean;",
        "Le02<",
        "-",
        "Lj59;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic l:Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/presenter/FavoritePreviewsPresenter;

.field public final synthetic m:Z


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/presenter/FavoritePreviewsPresenter;ZLe02;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/presenter/FavoritePreviewsPresenter;",
            "Z",
            "Le02<",
            "-",
            "Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/presenter/FavoritePreviewsPresenter$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/presenter/FavoritePreviewsPresenter$b;->l:Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/presenter/FavoritePreviewsPresenter;

    iput-boolean p2, p0, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/presenter/FavoritePreviewsPresenter$b;->m:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lpg8;-><init>(ILe02;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Le02;)Le02;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Le02<",
            "*>;)",
            "Le02<",
            "Lj59;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/presenter/FavoritePreviewsPresenter$b;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/presenter/FavoritePreviewsPresenter$b;->l:Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/presenter/FavoritePreviewsPresenter;

    iget-boolean p0, p0, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/presenter/FavoritePreviewsPresenter$b;->m:Z

    invoke-direct {p1, v0, p0, p2}, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/presenter/FavoritePreviewsPresenter$b;-><init>(Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/presenter/FavoritePreviewsPresenter;ZLe02;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    check-cast p2, Le02;

    invoke-virtual {p0, p1, p2}, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/presenter/FavoritePreviewsPresenter$b;->create(Ljava/lang/Object;Le02;)Le02;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/presenter/FavoritePreviewsPresenter$b;

    sget-object p1, Lj59;->a:Lj59;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/presenter/FavoritePreviewsPresenter$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, La32;->COROUTINE_SUSPENDED:La32;

    invoke-static {p1}, Lr57;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/presenter/FavoritePreviewsPresenter$b;->l:Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/presenter/FavoritePreviewsPresenter;

    invoke-virtual {p1}, Lih5;->getViewState()Ljh5;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/view/FavoritePreviewsView;

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/presenter/FavoritePreviewsPresenter$b;->m:Z

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/view/FavoritePreviewsView;->showFavouriteStatusChanged(Z)V

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
