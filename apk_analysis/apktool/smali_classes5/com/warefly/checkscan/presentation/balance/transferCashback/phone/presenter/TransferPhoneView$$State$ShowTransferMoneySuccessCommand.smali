.class public Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView$$State$ShowTransferMoneySuccessCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowTransferMoneySuccessCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView;",
        ">;"
    }
.end annotation


# instance fields
.field public final sumText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView$$State;Ljava/lang/String;)V
    .locals 1

    const-string p1, "showTransferMoneySuccess"

    const-class v0, Lk9;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView$$State$ShowTransferMoneySuccessCommand;->sumText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView;)V
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView$$State$ShowTransferMoneySuccessCommand;->sumText:Ljava/lang/String;

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView;->showTransferMoneySuccess(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView$$State$ShowTransferMoneySuccessCommand;->apply(Lcom/warefly/checkscan/presentation/balance/transferCashback/phone/presenter/TransferPhoneView;)V

    return-void
.end method
