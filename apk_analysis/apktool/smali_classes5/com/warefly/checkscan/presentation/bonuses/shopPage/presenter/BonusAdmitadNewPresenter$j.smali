.class public final Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter$j;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;->setFavouriteShop(JZ)V
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
.field public final synthetic f:Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;

.field public final synthetic g:Z

.field public final synthetic h:J


# direct methods
.method public constructor <init>(JLcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;Z)V
    .locals 0

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter$j;->f:Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;

    iput-boolean p4, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter$j;->g:Z

    iput-wide p1, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter$j;->h:J

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter$j;->f:Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter;

    invoke-virtual {v0}, Lih5;->getViewState()Ljh5;

    move-result-object v1

    check-cast v1, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewView;

    iget-boolean v2, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter$j;->g:Z

    if-eqz v1, :cond_0

    invoke-interface {v1, v2}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewView;->showFavoriteStatus(Z)V

    :cond_0
    invoke-virtual {v0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewView;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-interface {v0, v1, v2}, Lcom/warefly/checkscan/presentation/bonuses/shopPage/view/BonusAdmitadNewView;->showFavoriteStatusIsChanged(ZZ)V

    :cond_1
    iget-wide v0, p0, Lcom/warefly/checkscan/presentation/bonuses/shopPage/presenter/BonusAdmitadNewPresenter$j;->h:J

    if-eqz v2, :cond_2

    new-instance p0, Lkd$e$d$c;

    long-to-int v0, v0

    const-string v1, "Fave"

    invoke-static {v0, v1}, Lud;->c(ILjava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0, v2}, Lkd$e$d;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lkd;->a()V

    new-instance p0, Lkd$e$a$a$b;

    invoke-direct {p0, v0, v1}, Lkd$e$a$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lkd;->a()V

    goto :goto_0

    :cond_2
    new-instance p0, Lkd$e$d$l;

    long-to-int v0, v0

    const-string v1, "UnFave"

    invoke-static {v0, v1}, Lud;->c(ILjava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0, v2}, Lkd$e$d;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lkd;->a()V

    new-instance p0, Lkd$e$a$a$h;

    invoke-direct {p0, v0, v1}, Lkd$e$a$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lkd;->a()V

    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
