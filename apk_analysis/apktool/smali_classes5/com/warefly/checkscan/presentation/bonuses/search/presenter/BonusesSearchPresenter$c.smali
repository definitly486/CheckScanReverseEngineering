.class public final Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter$c;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;->onFavoritePromocode(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Z

.field public final synthetic g:I

.field public final synthetic h:Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;


# direct methods
.method public constructor <init>(ZILcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;)V
    .locals 0

    iput-boolean p1, p0, Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter$c;->f:Z

    iput p2, p0, Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter$c;->g:I

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter$c;->h:Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter$c;->g:I

    iget-boolean v1, p0, Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter$c;->f:Z

    if-eqz v1, :cond_0

    new-instance v2, Lkd$e$b$b;

    invoke-direct {v2, v0}, Lkd$e$b$b;-><init>(I)V

    invoke-virtual {v2}, Lkd;->a()V

    new-instance v2, Lmd;

    invoke-direct {v2, v0}, Lmd;-><init>(I)V

    invoke-virtual {v2}, Lkd;->a()V

    goto :goto_0

    :cond_0
    new-instance v2, Lkd$e$b$f;

    invoke-direct {v2, v0}, Lkd$e$b$f;-><init>(I)V

    invoke-virtual {v2}, Lkd;->a()V

    new-instance v2, Ltd;

    invoke-direct {v2, v0}, Ltd;-><init>(I)V

    invoke-virtual {v2}, Lkd;->a()V

    :goto_0
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter$c;->h:Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchView;

    if-eqz p0, :cond_1

    invoke-interface {p0, v1}, Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchView;->showFavouriteStatusChanged(Z)V

    :cond_1
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
