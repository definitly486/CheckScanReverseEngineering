.class public final Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter$r;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


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
        "Lll3<",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter$r;->f:Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter$r;->f:Lcom/warefly/checkscan/presentation/chequePage/presentation/ChequePagePresenter;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView;->showChequeAlert(Lkd1;)V

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
