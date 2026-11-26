.class public final synthetic Lud7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic b:Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lud7;->b:Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;

    iput p2, p0, Lud7;->c:I

    iput p3, p0, Lud7;->d:I

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 3

    sget-object p1, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;->o:[Lze4;

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result p1

    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->displayCutout()I

    move-result v0

    or-int/2addr p1, v0

    invoke-virtual {p2, p1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p1

    iget-object p2, p0, Lud7;->b:Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;

    invoke-virtual {p2}, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;->n()Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;->glTop:Landroidx/constraintlayout/widget/Guideline;

    iget v1, p1, Landroidx/core/graphics/Insets;->top:I

    iget v2, p0, Lud7;->c:I

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineBegin(I)V

    invoke-virtual {p2}, Lcom/warefly/checkscan/presentation/scanner/view/ScannerFragment;->n()Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;

    move-result-object p2

    iget-object p2, p2, Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;->ivGallery:Landroid/widget/ImageView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget p1, p1, Landroidx/core/graphics/Insets;->bottom:I

    iget p0, p0, Lud7;->d:I

    add-int/2addr p0, p1

    iput p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object p0, Landroidx/core/view/WindowInsetsCompat;->CONSUMED:Landroidx/core/view/WindowInsetsCompat;

    return-object p0

    :cond_0
    const-string p0, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {p0}, Lo2;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
