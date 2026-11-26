.class public final Lcom/warefly/checkscan/presentation/balance/transferCashback/card/view/TransferCardDialog$e;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lfm3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/balance/transferCashback/card/view/TransferCardDialog;->showInfo(Laz8;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lfm3<",
        "Ljava/lang/CharSequence;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/balance/transferCashback/card/view/TransferCardDialog;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/balance/transferCashback/card/view/TransferCardDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/view/TransferCardDialog$e;->f:Lcom/warefly/checkscan/presentation/balance/transferCashback/card/view/TransferCardDialog;

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/CharSequence;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/view/TransferCardDialog$e;->f:Lcom/warefly/checkscan/presentation/balance/transferCashback/card/view/TransferCardDialog;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/view/TransferCardDialog;->f()Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardPresenter;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/card/presenter/TransferCardPresenter;->onTransferSumChanged(Ljava/lang/String;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
