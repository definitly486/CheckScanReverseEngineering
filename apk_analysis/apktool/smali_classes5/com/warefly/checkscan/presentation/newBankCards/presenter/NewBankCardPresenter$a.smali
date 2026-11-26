.class public final Lcom/warefly/checkscan/presentation/newBankCards/presenter/NewBankCardPresenter$a;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/newBankCards/presenter/NewBankCardPresenter;->onFirstViewAttach()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Lcp2;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/newBankCards/presenter/NewBankCardPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/newBankCards/presenter/NewBankCardPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/newBankCards/presenter/NewBankCardPresenter$a;->f:Lcom/warefly/checkscan/presentation/newBankCards/presenter/NewBankCardPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcp2;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/newBankCards/presenter/NewBankCardPresenter$a;->f:Lcom/warefly/checkscan/presentation/newBankCards/presenter/NewBankCardPresenter;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/newBankCards/view/NewBankCardsView;

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/warefly/checkscan/presentation/newBankCards/view/NewBankCardsView;->handleProgress(Z)V

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
