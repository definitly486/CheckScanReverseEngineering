.class public final Lcom/warefly/checkscan/databinding/FragmentScankitBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final barrierControls:Landroidx/constraintlayout/widget/Barrier;

.field public final btnBack:Landroid/widget/ImageView;

.field public final btnByHand:Landroid/widget/TextView;

.field public final btnFlash:Landroidx/appcompat/widget/AppCompatImageView;

.field public final btnGallery:Landroidx/appcompat/widget/AppCompatImageView;

.field public final btnTryNewScanner:Landroid/widget/TextView;

.field public final frameScankit:Landroid/widget/FrameLayout;

.field public final ivDot:Landroidx/appcompat/widget/AppCompatImageView;

.field public final ivScanner:Landroidx/appcompat/widget/AppCompatImageView;

.field public final permissionRationale:Lcom/warefly/checkscan/databinding/CameraPermissionRationaleLayoutBinding;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final tvFlash:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/Barrier;Landroid/widget/ImageView;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/TextView;Landroid/widget/FrameLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Lcom/warefly/checkscan/databinding/CameraPermissionRationaleLayoutBinding;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/databinding/FragmentScankitBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lcom/warefly/checkscan/databinding/FragmentScankitBinding;->barrierControls:Landroidx/constraintlayout/widget/Barrier;

    iput-object p3, p0, Lcom/warefly/checkscan/databinding/FragmentScankitBinding;->btnBack:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/warefly/checkscan/databinding/FragmentScankitBinding;->btnByHand:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/warefly/checkscan/databinding/FragmentScankitBinding;->btnFlash:Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p6, p0, Lcom/warefly/checkscan/databinding/FragmentScankitBinding;->btnGallery:Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p7, p0, Lcom/warefly/checkscan/databinding/FragmentScankitBinding;->btnTryNewScanner:Landroid/widget/TextView;

    iput-object p8, p0, Lcom/warefly/checkscan/databinding/FragmentScankitBinding;->frameScankit:Landroid/widget/FrameLayout;

    iput-object p9, p0, Lcom/warefly/checkscan/databinding/FragmentScankitBinding;->ivDot:Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p10, p0, Lcom/warefly/checkscan/databinding/FragmentScankitBinding;->ivScanner:Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p11, p0, Lcom/warefly/checkscan/databinding/FragmentScankitBinding;->permissionRationale:Lcom/warefly/checkscan/databinding/CameraPermissionRationaleLayoutBinding;

    iput-object p12, p0, Lcom/warefly/checkscan/databinding/FragmentScankitBinding;->tvFlash:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/FragmentScankitBinding;
    .locals 15

    const v0, 0x7f0a00d0

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroidx/constraintlayout/widget/Barrier;

    if-eqz v4, :cond_0

    const v0, 0x7f0a0107

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    const v0, 0x7f0a0113

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    const v0, 0x7f0a0150

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v7, :cond_0

    const v0, 0x7f0a0152

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v8, :cond_0

    const v0, 0x7f0a01b8

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    const v0, 0x7f0a02ac

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/FrameLayout;

    if-eqz v10, :cond_0

    const v0, 0x7f0a037b

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v11, :cond_0

    const v0, 0x7f0a03be

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v12, :cond_0

    const v0, 0x7f0a055e

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/warefly/checkscan/databinding/CameraPermissionRationaleLayoutBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/CameraPermissionRationaleLayoutBinding;

    move-result-object v13

    const v0, 0x7f0a0741

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    new-instance v2, Lcom/warefly/checkscan/databinding/FragmentScankitBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct/range {v2 .. v14}, Lcom/warefly/checkscan/databinding/FragmentScankitBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/Barrier;Landroid/widget/ImageView;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Landroid/widget/TextView;Landroid/widget/FrameLayout;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/appcompat/widget/AppCompatImageView;Lcom/warefly/checkscan/databinding/CameraPermissionRationaleLayoutBinding;Landroid/widget/TextView;)V

    return-object v2

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Missing required view with ID: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lo2;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/warefly/checkscan/databinding/FragmentScankitBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-static {p0, v0, v1}, Lcom/warefly/checkscan/databinding/FragmentScankitBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/FragmentScankitBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/FragmentScankitBinding;
    .locals 2

    const v0, 0x7f0d00eb

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/warefly/checkscan/databinding/FragmentScankitBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/FragmentScankitBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/databinding/FragmentScankitBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentScankitBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method
