.class public final Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter$v;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;->showCheque(Lhd1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Ljava/lang/Throwable;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;

.field public final synthetic g:Lhd1;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;Lhd1;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter$v;->f:Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter$v;->g:Lhd1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Ljava/lang/Throwable;

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter$v;->f:Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;

    invoke-virtual {p1}, Lih5;->getViewState()Ljh5;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter$v;->g:Lhd1;

    invoke-virtual {p0}, Lhd1;->c()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkn1;->q(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvg6;

    new-instance v2, Luh6;

    invoke-direct {v2, v1}, Luh6;-><init>(Lvg6;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView;->showChequeProducts(Ljava/util/List;)V

    :cond_1
    invoke-interface {p1}, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView;->showCouldntGetCategoriesOfCheque()V

    :cond_2
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
