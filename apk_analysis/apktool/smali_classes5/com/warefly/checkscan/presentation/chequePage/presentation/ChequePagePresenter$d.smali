.class public final Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter$d;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;->loadBanners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Ljava/util/List<",
        "+",
        "Lhc0$b;",
        ">;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter$d;->f:Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter$d;->f:Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;->access$prepareAutoScroll(Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;Ljava/util/List;)V

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView;

    if-eqz p0, :cond_0

    new-instance v0, Lxv7;

    invoke-direct {v0, p1}, Lxv7;-><init>(Ljava/util/List;)V

    invoke-interface {p0, v0}, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView;->showBanners(Lxv7;)V

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
