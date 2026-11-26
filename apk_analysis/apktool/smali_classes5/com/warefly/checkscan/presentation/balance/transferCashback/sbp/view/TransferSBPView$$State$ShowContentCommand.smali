.class public Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/view/TransferSBPView$$State$ShowContentCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/view/TransferSBPView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowContentCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/view/TransferSBPView;",
        ">;"
    }
.end annotation


# instance fields
.field public final content:Lu09;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/view/TransferSBPView$$State;Lu09;)V
    .locals 1

    const-string p1, "showContent"

    const-class v0, Lk9;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/view/TransferSBPView$$State$ShowContentCommand;->content:Lu09;

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/view/TransferSBPView;)V
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/view/TransferSBPView$$State$ShowContentCommand;->content:Lu09;

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/view/TransferSBPView;->showContent(Lu09;)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/view/TransferSBPView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/view/TransferSBPView$$State$ShowContentCommand;->apply(Lcom/warefly/checkscan/presentation/balance/transferCashback/sbp/view/TransferSBPView;)V

    return-void
.end method
