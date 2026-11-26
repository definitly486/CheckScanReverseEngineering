.class public final Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;

.field public final synthetic c:Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$i;->b:Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$i;->c:Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 11

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$i;->c:Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;

    iget-object v1, p1, Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;->viewPreview:Landroidx/camera/view/PreviewView;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$i;->b:Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;->o()Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;

    move-result-object v6

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object p2

    const-class v0, Lla3;

    const/4 v2, 0x0

    invoke-static {v0, p2, v2, v2}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object p2

    move-object v8, p2

    check-cast v8, Lla3;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object p2

    const-class v0, Llb5;

    invoke-static {v0, p2, v2, v2}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object p2

    move-object v7, p2

    check-cast v7, Llb5;

    iget-object v9, p1, Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;->ivScannerFrame:Landroid/widget/ImageView;

    new-instance v0, Lu11;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$d;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$d;-><init>(Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;)V

    new-instance v3, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$e;

    invoke-direct {v3, p0}, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$e;-><init>(Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;)V

    new-instance v4, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$f;

    invoke-direct {v4, p0}, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$f;-><init>(Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;)V

    new-instance v5, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$g;

    invoke-direct {v5, p0, p1}, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$g;-><init>(Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;)V

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$h;->f:Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$h;

    invoke-direct/range {v0 .. v10}, Lu11;-><init>(Landroidx/camera/view/PreviewView;Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$d;Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$e;Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$f;Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment$g;Lcom/warefly/checkscan/presentation/scanner/presenter/ScannerPresenter;Llb5;Lla3;Landroid/view/View;Lnl3;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;->k:Lu11;

    return-void
.end method
