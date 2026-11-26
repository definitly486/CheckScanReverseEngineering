.class public final Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/presenter/AddChequePresenter$d;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/presenter/AddChequePresenter;->requestChequeAgain()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Lgf9;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/presenter/AddChequePresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/presenter/AddChequePresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/presenter/AddChequePresenter$d;->f:Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/presenter/AddChequePresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lgf9;

    new-instance v0, Lkd$g$d$c;

    const-string v1, "CQ_TRY_AGAIN"

    invoke-direct {v0, v1}, Lkd$g$d;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lkd;->a()V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/presenter/AddChequePresenter$d;->f:Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/presenter/AddChequePresenter;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/view/AddChequeView;->finishLoadingFNSStatus()V

    :cond_0
    invoke-virtual {p1}, Lgf9;->e()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1}, Lgf9;->f()Lnz6;

    move-result-object p1

    sget-object v1, Lnz6;->CHEQUE_RECEIVED:Lnz6;

    if-ne p1, v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/presenter/AddChequePresenter;->access$openReceivedCheque(Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/presenter/AddChequePresenter;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/flows/specifyPlace/addCheque/presenter/AddChequePresenter;->onBackPressed()V

    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
