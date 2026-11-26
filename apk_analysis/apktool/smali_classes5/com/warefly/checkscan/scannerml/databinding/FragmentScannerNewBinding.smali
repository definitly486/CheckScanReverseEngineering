.class public final Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final barrierTopButtons:Landroidx/constraintlayout/widget/Barrier;

.field public final btnLoad:Landroidx/appcompat/widget/AppCompatTextView;

.field public final btnManual:Landroidx/appcompat/widget/AppCompatTextView;

.field public final glTop:Landroidx/constraintlayout/widget/Guideline;

.field public final groupCheques:Landroidx/constraintlayout/widget/Group;

.field public final ivBrandlink:Landroid/widget/ImageView;

.field public final ivClose:Landroid/widget/ImageView;

.field public final ivFlash:Landroid/widget/ImageView;

.field public final ivGallery:Landroid/widget/ImageView;

.field public final ivInfo:Landroid/widget/ImageView;

.field public final ivScannerFrame:Landroid/widget/ImageView;

.field public final message:Lcom/warefly/checkscan/scannerml/databinding/ItemMessageBinding;

.field public final messageError:Lcom/warefly/checkscan/scannerml/databinding/ItemMessageErrorBinding;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final rvContent:Landroidx/recyclerview/widget/RecyclerView;

.field public final tvChequeInfo:Lcom/warefly/checkscan/scannerml/databinding/ItemChequeWithCountBinding;

.field public final viewPreview:Landroidx/camera/view/PreviewView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/Barrier;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Group;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/warefly/checkscan/scannerml/databinding/ItemMessageBinding;Lcom/warefly/checkscan/scannerml/databinding/ItemMessageErrorBinding;Landroidx/recyclerview/widget/RecyclerView;Lcom/warefly/checkscan/scannerml/databinding/ItemChequeWithCountBinding;Landroidx/camera/view/PreviewView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;->barrierTopButtons:Landroidx/constraintlayout/widget/Barrier;

    iput-object p3, p0, Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;->btnLoad:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p4, p0, Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;->btnManual:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p5, p0, Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;->glTop:Landroidx/constraintlayout/widget/Guideline;

    iput-object p6, p0, Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;->groupCheques:Landroidx/constraintlayout/widget/Group;

    iput-object p7, p0, Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;->ivBrandlink:Landroid/widget/ImageView;

    iput-object p8, p0, Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;->ivClose:Landroid/widget/ImageView;

    iput-object p9, p0, Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;->ivFlash:Landroid/widget/ImageView;

    iput-object p10, p0, Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;->ivGallery:Landroid/widget/ImageView;

    iput-object p11, p0, Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;->ivInfo:Landroid/widget/ImageView;

    iput-object p12, p0, Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;->ivScannerFrame:Landroid/widget/ImageView;

    iput-object p13, p0, Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;->message:Lcom/warefly/checkscan/scannerml/databinding/ItemMessageBinding;

    iput-object p14, p0, Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;->messageError:Lcom/warefly/checkscan/scannerml/databinding/ItemMessageErrorBinding;

    iput-object p15, p0, Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;->rvContent:Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 p1, p16

    iput-object p1, p0, Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;->tvChequeInfo:Lcom/warefly/checkscan/scannerml/databinding/ItemChequeWithCountBinding;

    move-object/from16 p1, p17

    iput-object p1, p0, Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;->viewPreview:Landroidx/camera/view/PreviewView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;
    .locals 21

    move-object/from16 v0, p0

    const v1, 0x7f0a00d9

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroidx/constraintlayout/widget/Barrier;

    if-eqz v5, :cond_0

    const v1, 0x7f0a0168

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v6, :cond_0

    const v1, 0x7f0a0171

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v7, :cond_0

    const v1, 0x7f0a02b6

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroidx/constraintlayout/widget/Guideline;

    if-eqz v8, :cond_0

    const v1, 0x7f0a02c3

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroidx/constraintlayout/widget/Group;

    if-eqz v9, :cond_0

    const v1, 0x7f0a0360

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/ImageView;

    if-eqz v10, :cond_0

    const v1, 0x7f0a0371

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/ImageView;

    if-eqz v11, :cond_0

    const v1, 0x7f0a037e

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/ImageView;

    if-eqz v12, :cond_0

    const v1, 0x7f0a037f

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/ImageView;

    if-eqz v13, :cond_0

    const v1, 0x7f0a038e

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/ImageView;

    if-eqz v14, :cond_0

    const v1, 0x7f0a03bf

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/ImageView;

    if-eqz v15, :cond_0

    const v1, 0x7f0a048c

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/warefly/checkscan/scannerml/databinding/ItemMessageBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/scannerml/databinding/ItemMessageBinding;

    move-result-object v16

    const v1, 0x7f0a048e

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/warefly/checkscan/scannerml/databinding/ItemMessageErrorBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/scannerml/databinding/ItemMessageErrorBinding;

    move-result-object v17

    const v1, 0x7f0a05c3

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v18, :cond_0

    const v1, 0x7f0a06fc

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/warefly/checkscan/scannerml/databinding/ItemChequeWithCountBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/scannerml/databinding/ItemChequeWithCountBinding;

    move-result-object v19

    const v1, 0x7f0a0868

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroidx/camera/view/PreviewView;

    if-eqz v20, :cond_0

    new-instance v3, Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct/range {v3 .. v20}, Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/Barrier;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/appcompat/widget/AppCompatTextView;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Group;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Lcom/warefly/checkscan/scannerml/databinding/ItemMessageBinding;Lcom/warefly/checkscan/scannerml/databinding/ItemMessageErrorBinding;Landroidx/recyclerview/widget/RecyclerView;Lcom/warefly/checkscan/scannerml/databinding/ItemChequeWithCountBinding;Landroidx/camera/view/PreviewView;)V

    return-object v3

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo2;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-static {p0, v0, v1}, Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;
    .locals 2

    const v0, 0x7f0d00ee

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/warefly/checkscan/scannerml/databinding/FragmentScannerNewBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method
