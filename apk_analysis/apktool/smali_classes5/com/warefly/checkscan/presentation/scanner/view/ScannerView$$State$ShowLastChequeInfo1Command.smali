.class public Lcom/warefly/checkscan/presentation/scanner/view/ScannerView$$State$ShowLastChequeInfo1Command;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/scanner/view/ScannerView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowLastChequeInfo1Command"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/scanner/view/ScannerView;",
        ">;"
    }
.end annotation


# instance fields
.field public final count:I

.field public final info:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/scanner/view/ScannerView$$State;Ljava/lang/String;I)V
    .locals 1

    const-string p1, "showLastChequeInfo"

    const-class v0, Li9;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/scanner/view/ScannerView$$State$ShowLastChequeInfo1Command;->info:Ljava/lang/String;

    iput p3, p0, Lcom/warefly/checkscan/presentation/scanner/view/ScannerView$$State$ShowLastChequeInfo1Command;->count:I

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/scanner/view/ScannerView;)V
    .locals 1

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/scanner/view/ScannerView$$State$ShowLastChequeInfo1Command;->info:Ljava/lang/String;

    iget p0, p0, Lcom/warefly/checkscan/presentation/scanner/view/ScannerView$$State$ShowLastChequeInfo1Command;->count:I

    invoke-interface {p1, v0, p0}, Lcom/warefly/checkscan/presentation/scanner/view/ScannerView;->showLastChequeInfo(Ljava/lang/String;I)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    .line 8
    check-cast p1, Lcom/warefly/checkscan/presentation/scanner/view/ScannerView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/scanner/view/ScannerView$$State$ShowLastChequeInfo1Command;->apply(Lcom/warefly/checkscan/presentation/scanner/view/ScannerView;)V

    return-void
.end method
