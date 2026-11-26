.class public final Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$g;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Ljava/lang/Integer;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;

.field public final synthetic g:Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;)V
    .locals 0

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$g;->f:Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$g;->g:Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$g;->f:Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;

    iget-object v0, v0, Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;->ivFlash:Landroid/widget/ImageView;

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$g;->g:Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;

    if-ne p1, v1, :cond_0

    sget-object p1, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;->o:[Lze4;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;->i:Lfh8;

    invoke-virtual {p0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;->o:[Lze4;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;->j:Lfh8;

    invoke-virtual {p0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setColorFilter(I)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
