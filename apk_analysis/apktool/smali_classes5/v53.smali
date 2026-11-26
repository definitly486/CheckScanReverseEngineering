.class public final Lv53;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lll3<",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/favorite/view/FavoriteFragment;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/favorite/view/FavoriteFragment;)V
    .locals 0

    iput-object p1, p0, Lv53;->f:Lcom/warefly/checkscan/presentation/favorite/view/FavoriteFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lv53;->f:Lcom/warefly/checkscan/presentation/favorite/view/FavoriteFragment;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/favorite/view/FavoriteFragment;->o()Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/favorite/presenter/FavoritePresenter;->onMorePromocodes()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
