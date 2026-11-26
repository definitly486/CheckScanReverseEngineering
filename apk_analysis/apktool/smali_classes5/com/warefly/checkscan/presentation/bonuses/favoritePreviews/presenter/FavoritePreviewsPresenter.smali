.class public final Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/presenter/FavoritePreviewsPresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"

# interfaces
.implements Lbv7;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/presenter/FavoritePreviewsPresenter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/view/FavoritePreviewsView;",
        ">;",
        "Lbv7;"
    }
.end annotation


# instance fields
.field private final args:Lc63;

.field private favoritesPaginator:Ltf3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltf3<",
            "Lcs0;",
            ">;"
        }
    .end annotation
.end field

.field private final flowRouter:Luf3;

.field private final interactor:Lbm0;


# direct methods
.method public constructor <init>(Luf3;Lbm0;Lc63;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/presenter/FavoritePreviewsPresenter;->flowRouter:Luf3;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/presenter/FavoritePreviewsPresenter;->interactor:Lbm0;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/presenter/FavoritePreviewsPresenter;->args:Lc63;

    return-void
.end method

.method public static final synthetic access$getInteractor$p(Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/presenter/FavoritePreviewsPresenter;)Lbm0;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/presenter/FavoritePreviewsPresenter;->interactor:Lbm0;

    return-object p0
.end method

.method public static final synthetic access$launchInPresenter(Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/presenter/FavoritePreviewsPresenter;Lhd3;)Lmb4;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    move-result-object p0

    return-object p0
.end method

.method private final sendSelectedFrom(I)V
    .locals 0

    new-instance p0, Lkd$e$a$a$f$d;

    invoke-direct {p0, p1}, Lkd$e$a$a$f$d;-><init>(I)V

    invoke-virtual {p0}, Lkd;->a()V

    new-instance p0, Lkd$e$d$g$f;

    invoke-direct {p0, p1}, Lkd$e$d$g$f;-><init>(I)V

    invoke-virtual {p0}, Lkd;->a()V

    return-void
.end method

.method private final sendTopFromList(I)V
    .locals 0

    new-instance p0, Lkd$e$c$h$a;

    invoke-direct {p0, p1}, Lkd$e$c$h$a;-><init>(I)V

    invoke-virtual {p0}, Lkd;->a()V

    return-void
.end method

.method private final setUpFavoritesPaginator()V
    .locals 5

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->getPresenterScope()Ly22;

    move-result-object v0

    new-instance v1, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/presenter/FavoritePreviewsPresenter$a;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/presenter/FavoritePreviewsPresenter$a;-><init>(Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/presenter/FavoritePreviewsPresenter;)V

    iget-object v2, p0, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/presenter/FavoritePreviewsPresenter;->interactor:Lbm0;

    iget-object v2, v2, Lbm0;->g:Lgy6;

    new-instance v3, Ltf3;

    new-instance v4, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/presenter/FavoritePreviewsPresenter$c;

    invoke-direct {v4, p0}, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/presenter/FavoritePreviewsPresenter$c;-><init>(Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/presenter/FavoritePreviewsPresenter;)V

    invoke-direct {v3, v4, v0, v1, v2}, Ltf3;-><init>(Lnl3;Ly22;Ltf3$d;Lhd3;)V

    invoke-virtual {v3}, Ltf3;->b()V

    iput-object v3, p0, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/presenter/FavoritePreviewsPresenter;->favoritesPaginator:Ltf3;

    return-void
.end method


# virtual methods
.method public final onBackPressed()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/presenter/FavoritePreviewsPresenter;->flowRouter:Luf3;

    invoke-virtual {p0}, Lo87;->c()V

    return-void
.end method

.method public onConfirmAdultClick()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/presenter/FavoritePreviewsPresenter;->interactor:Lbm0;

    iget-object p0, p0, Lbm0;->a:Lrp0;

    invoke-interface {p0}, Lrp0;->e()V

    return-void
.end method

.method public onFavouriteClick(IZ)V
    .locals 5

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/presenter/FavoritePreviewsPresenter;->interactor:Lbm0;

    iget-object v1, v0, Lbm0;->f:Lz68;

    invoke-virtual {v1}, Lz68;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Len1;

    if-eqz v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Len1;

    iget-object v4, v4, Len1;->a:Ldn1;

    iget v4, v4, Ldn1;->a:I

    if-ne v4, p1, :cond_2

    goto :goto_1

    :cond_3
    move-object v2, v3

    :goto_1
    check-cast v2, Len1;

    if-eqz v2, :cond_4

    iget-object v1, v2, Len1;->a:Ldn1;

    iget-boolean v1, v1, Ldn1;->c:Z

    iget-object v2, v0, Lbm0;->a:Lrp0;

    xor-int/lit8 v1, v1, 0x1

    invoke-interface {v2, p1, v1}, Lrp0;->a(IZ)Ltb7;

    move-result-object v1

    new-instance v2, Lmn0;

    invoke-direct {v2, v0, p1, v3}, Lmn0;-><init>(Lbm0;ILe02;)V

    new-instance p1, Ldf3;

    invoke-direct {p1, v1, v2}, Ldf3;-><init>(Lhd3;Lbm3;)V

    goto :goto_2

    :cond_4
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance v0, Lrd3;

    invoke-direct {v0, p1}, Lrd3;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_2
    new-instance v0, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/presenter/FavoritePreviewsPresenter$b;

    invoke-direct {v0, p0, p2, v3}, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/presenter/FavoritePreviewsPresenter$b;-><init>(Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/presenter/FavoritePreviewsPresenter;ZLe02;)V

    new-instance p2, Ldf3;

    invoke-direct {p2, p1, v0}, Ldf3;-><init>(Lhd3;Lbm3;)V

    const-string p1, "onFavouriteClick"

    const/4 v0, 0x2

    invoke-static {p2, p1, v3, v0}, Lm13;->c(Lhd3;Ljava/lang/String;Lnl3;I)Lde3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;->launchInPresenter(Lhd3;)Lmb4;

    return-void
.end method

.method public onFirstViewAttach()V
    .locals 2

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/presenter/FavoritePreviewsPresenter;->args:Lc63;

    iget-object v0, v0, Lc63;->a:Ljava/lang/String;

    invoke-static {v0}, Lta8;->M(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/view/FavoritePreviewsView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/presenter/FavoritePreviewsPresenter;->args:Lc63;

    iget-object v1, v1, Lc63;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/view/FavoritePreviewsView;->setToolbarTitle(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/presenter/FavoritePreviewsPresenter;->setUpFavoritesPaginator()V

    return-void
.end method

.method public onOrdClick(Lb06;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/view/FavoritePreviewsView;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/view/FavoritePreviewsView;->showOrdBottomSheet(Lb06;)V

    :cond_0
    return-void
.end method

.method public final onScrollEnd()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/presenter/FavoritePreviewsPresenter;->favoritesPaginator:Ltf3;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ltf3;->a()V

    :cond_0
    return-void
.end method

.method public onShopClick(I)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/presenter/FavoritePreviewsPresenter;->sendTopFromList(I)V

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/presenter/FavoritePreviewsPresenter;->sendSelectedFrom(I)V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/presenter/FavoritePreviewsPresenter;->flowRouter:Luf3;

    new-instance v0, Llf7;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Llf7;-><init>(J)V

    invoke-virtual {p0, v0}, Lo87;->d(Ldf7;)V

    return-void
.end method
