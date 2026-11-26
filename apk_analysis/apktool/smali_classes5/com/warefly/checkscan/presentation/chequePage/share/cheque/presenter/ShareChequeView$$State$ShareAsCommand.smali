.class public Lcom/warefly/checkscan/presentation/chequePage/share/cheque/presenter/ShareChequeView$$State$ShareAsCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/chequePage/share/cheque/presenter/ShareChequeView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShareAsCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/chequePage/share/cheque/presenter/ShareChequeView;",
        ">;"
    }
.end annotation


# instance fields
.field public final cheque:Lhd1;

.field public final option:Lcom/warefly/checkscan/presentation/chequePage/share/cheque/presenter/ShareChequeView$a;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/chequePage/share/cheque/presenter/ShareChequeView$$State;Lcom/warefly/checkscan/presentation/chequePage/share/cheque/presenter/ShareChequeView$a;Lhd1;)V
    .locals 1

    const-string p1, "shareAs"

    const-class v0, Lhx5;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/chequePage/share/cheque/presenter/ShareChequeView$$State$ShareAsCommand;->option:Lcom/warefly/checkscan/presentation/chequePage/share/cheque/presenter/ShareChequeView$a;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/chequePage/share/cheque/presenter/ShareChequeView$$State$ShareAsCommand;->cheque:Lhd1;

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/chequePage/share/cheque/presenter/ShareChequeView;)V
    .locals 1

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/chequePage/share/cheque/presenter/ShareChequeView$$State$ShareAsCommand;->option:Lcom/warefly/checkscan/presentation/chequePage/share/cheque/presenter/ShareChequeView$a;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/chequePage/share/cheque/presenter/ShareChequeView$$State$ShareAsCommand;->cheque:Lhd1;

    invoke-interface {p1, v0, p0}, Lcom/warefly/checkscan/presentation/chequePage/share/cheque/presenter/ShareChequeView;->shareAs(Lcom/warefly/checkscan/presentation/chequePage/share/cheque/presenter/ShareChequeView$a;Lhd1;)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    .line 8
    check-cast p1, Lcom/warefly/checkscan/presentation/chequePage/share/cheque/presenter/ShareChequeView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/chequePage/share/cheque/presenter/ShareChequeView$$State$ShareAsCommand;->apply(Lcom/warefly/checkscan/presentation/chequePage/share/cheque/presenter/ShareChequeView;)V

    return-void
.end method
