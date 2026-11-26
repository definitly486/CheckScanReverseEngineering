.class public final Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment$h;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;->setOnlineShopInfo(Lqx5;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Landroid/view/View;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;

.field public final synthetic g:Lqx5;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;Lqx5;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment$h;->f:Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment$h;->g:Lqx5;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment$h;->f:Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;

    invoke-virtual {p1}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment;->o()Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;

    move-result-object p1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewFragment$h;->g:Lqx5;

    iget-object v0, p0, Lqx5;->j:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    iget-object p0, p0, Lqx5;->i:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0, v0}, Lqn1;->h0(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;->showAllTerm(Ljava/util/List;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
