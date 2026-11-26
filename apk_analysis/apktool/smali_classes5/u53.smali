.class public final Lu53;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lbm3<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/favorite/view/FavoriteFragment;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/favorite/view/FavoriteFragment;)V
    .locals 0

    iput-object p1, p0, Lu53;->f:Lcom/warefly/checkscan/presentation/favorite/view/FavoriteFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget-object p0, p0, Lu53;->f:Lcom/warefly/checkscan/presentation/favorite/view/FavoriteFragment;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/favorite/view/FavoriteFragment;->o()Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;->onFavoritePromocode(IZ)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
