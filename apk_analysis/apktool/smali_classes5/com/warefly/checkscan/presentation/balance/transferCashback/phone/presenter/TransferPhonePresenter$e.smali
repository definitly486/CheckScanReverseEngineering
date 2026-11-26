.class public final Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter$e;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter;->loadInfo()V
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
.field public final synthetic f:Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter$e;->f:Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Throwable;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter$e;->f:Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhonePresenter;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView;

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView;->showErrorInfoNotLoaded(ZZ)V

    :cond_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
