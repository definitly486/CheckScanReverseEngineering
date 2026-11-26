.class public final Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter$t;
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
        "Ljava/util/Map<",
        "Lc81;",
        "+",
        "Ljava/util/List<",
        "+",
        "Lvg6;",
        ">;>;",
        "Ljava/util/List<",
        "+",
        "Lra4;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;

.field public final synthetic g:Lhd1;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;Lhd1;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter$t;->f:Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter$t;->g:Lhd1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter$t;->g:Lhd1;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter$t;->f:Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;

    invoke-static {p0, v0, p1}, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;->access$getTitledChequeItemsWithOffersPlaceholders(Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;Lhd1;Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;->addDecoratorsAfterProducts(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
