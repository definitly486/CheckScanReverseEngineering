.class public Lcom/warefly/checkscan/presentation/scanner/view/ScannerView$$State$HandleChequesListVisibleCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/scanner/view/ScannerView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HandleChequesListVisibleCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/scanner/view/ScannerView;",
        ">;"
    }
.end annotation


# instance fields
.field public final isVisible:Z


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/scanner/view/ScannerView$$State;Z)V
    .locals 1

    const-string p1, "handleChequesListVisible"

    const-class v0, Li9;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-boolean p2, p0, Lcom/warefly/checkscan/presentation/scanner/view/ScannerView$$State$HandleChequesListVisibleCommand;->isVisible:Z

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/scanner/view/ScannerView;)V
    .locals 0

    .line 6
    iget-boolean p0, p0, Lcom/warefly/checkscan/presentation/scanner/view/ScannerView$$State$HandleChequesListVisibleCommand;->isVisible:Z

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/presentation/scanner/view/ScannerView;->handleChequesListVisible(Z)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/scanner/view/ScannerView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/scanner/view/ScannerView$$State$HandleChequesListVisibleCommand;->apply(Lcom/warefly/checkscan/presentation/scanner/view/ScannerView;)V

    return-void
.end method
