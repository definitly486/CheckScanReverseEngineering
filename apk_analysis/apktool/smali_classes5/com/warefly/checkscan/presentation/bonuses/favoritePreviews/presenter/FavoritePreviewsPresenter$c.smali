.class public final Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/presenter/FavoritePreviewsPresenter$c;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/presenter/FavoritePreviewsPresenter;->setUpFavoritesPaginator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Ljava/lang/Integer;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/presenter/FavoritePreviewsPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/presenter/FavoritePreviewsPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/presenter/FavoritePreviewsPresenter$c;->f:Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/presenter/FavoritePreviewsPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/presenter/FavoritePreviewsPresenter$c;->f:Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/presenter/FavoritePreviewsPresenter;

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/presenter/FavoritePreviewsPresenter;->access$getInteractor$p(Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/presenter/FavoritePreviewsPresenter;)Lbm0;

    move-result-object v0

    iget-object v1, v0, Lbm0;->a:Lrp0;

    iget v2, v0, Lbm0;->e:I

    invoke-interface {v1, p1, v2}, Lrp0;->n(II)Ltb7;

    move-result-object v1

    new-instance v2, Lgm0;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p1, v3}, Lgm0;-><init>(Lbm0;ILe02;)V

    invoke-static {v1, v2}, Lse3;->a(Lhd3;Lbm3;)Lj91;

    move-result-object p1

    const-string v0, "loadFavorites"

    const/4 v1, 0x2

    invoke-static {p1, v0, v3, v1}, Lm13;->c(Lhd3;Ljava/lang/String;Lnl3;I)Lde3;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/presenter/FavoritePreviewsPresenter;->access$launchInPresenter(Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/presenter/FavoritePreviewsPresenter;Lhd3;)Lmb4;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
