.class public Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView$$State$ShowShareChequeCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowShareChequeCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView;",
        ">;"
    }
.end annotation


# instance fields
.field public final cheque:Lhd1;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView$$State;Lhd1;)V
    .locals 1

    const-string p1, "showShareCheque"

    const-class v0, La28;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView$$State$ShowShareChequeCommand;->cheque:Lhd1;

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView;)V
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView$$State$ShowShareChequeCommand;->cheque:Lhd1;

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView;->showShareCheque(Lhd1;)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView$$State$ShowShareChequeCommand;->apply(Lcom/warefly/checkscan/presentation/chequePage/view/ChequePageView;)V

    return-void
.end method
