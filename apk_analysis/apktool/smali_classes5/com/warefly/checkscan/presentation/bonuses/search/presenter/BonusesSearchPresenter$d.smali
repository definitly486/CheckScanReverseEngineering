.class public final Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter$d;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;->onFavouriteClick(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Ljava/lang/Boolean;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;

.field public final synthetic g:Z


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;Z)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter$d;->f:Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;

    iput-boolean p2, p0, Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter$d;->g:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter$d;->f:Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter;

    invoke-virtual {p1}, Lih5;->getViewState()Ljh5;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchView;

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Lcom/warefly/checkscan/presentation/bonuses/search/presenter/BonusesSearchPresenter$d;->g:Z

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchView;->showFavouriteStatusChanged(Z)V

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
