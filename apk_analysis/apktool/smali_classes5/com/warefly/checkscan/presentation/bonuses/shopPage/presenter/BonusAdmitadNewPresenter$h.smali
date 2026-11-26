.class public final Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter$h;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;->setFavouriteCoupon(JZ)V
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

.field public final synthetic g:J

.field public final synthetic h:Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;


# direct methods
.method public constructor <init>(JLcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;Z)V
    .locals 0

    iput-boolean p4, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter$h;->f:Z

    iput-wide p1, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter$h;->g:J

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter$h;->h:Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-wide v0, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter$h;->g:J

    iget-boolean v2, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter$h;->f:Z

    if-eqz v2, :cond_0

    new-instance v3, Lkd$e$b$b;

    long-to-int v0, v0

    invoke-direct {v3, v0}, Lkd$e$b$b;-><init>(I)V

    invoke-virtual {v3}, Lkd;->a()V

    new-instance v1, Lmd;

    invoke-direct {v1, v0}, Lmd;-><init>(I)V

    invoke-virtual {v1}, Lkd;->a()V

    goto :goto_0

    :cond_0
    new-instance v3, Lkd$e$b$f;

    long-to-int v0, v0

    invoke-direct {v3, v0}, Lkd$e$b$f;-><init>(I)V

    invoke-virtual {v3}, Lkd;->a()V

    new-instance v1, Ltd;

    invoke-direct {v1, v0}, Ltd;-><init>(I)V

    invoke-virtual {v1}, Lkd;->a()V

    :goto_0
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter$h;->h:Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewView;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-interface {v0, v1, v2}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewView;->showFavoriteStatusIsChanged(ZZ)V

    :cond_1
    invoke-static {p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;->access$getShopBlockType$p(Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;)Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter$k;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter$k;->a()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
