.class public final Lcom/warefly/checkscan/bonuses/databinding/ItemRvShopsPreviewRectangleBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnFave:Landroid/widget/ImageView;

.field public final guide:Landroidx/constraintlayout/widget/Guideline;

.field public final ivLogo:Landroid/widget/ImageView;

.field public final ivPowerCode:Landroid/widget/ImageView;

.field public final ofdBarrier:Landroidx/constraintlayout/widget/Barrier;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final tvOfd:Landroidx/appcompat/widget/AppCompatTextView;

.field public final tvTitle:Landroid/widget/TextView;

.field public final tvValue:Landroid/widget/TextView;

.field public final viewDivider:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/Guideline;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/Barrier;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/bonuses/databinding/ItemRvShopsPreviewRectangleBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lcom/warefly/checkscan/bonuses/databinding/ItemRvShopsPreviewRectangleBinding;->btnFave:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/warefly/checkscan/bonuses/databinding/ItemRvShopsPreviewRectangleBinding;->guide:Landroidx/constraintlayout/widget/Guideline;

    iput-object p4, p0, Lcom/warefly/checkscan/bonuses/databinding/ItemRvShopsPreviewRectangleBinding;->ivLogo:Landroid/widget/ImageView;

    iput-object p5, p0, Lcom/warefly/checkscan/bonuses/databinding/ItemRvShopsPreviewRectangleBinding;->ivPowerCode:Landroid/widget/ImageView;

    iput-object p6, p0, Lcom/warefly/checkscan/bonuses/databinding/ItemRvShopsPreviewRectangleBinding;->ofdBarrier:Landroidx/constraintlayout/widget/Barrier;

    iput-object p7, p0, Lcom/warefly/checkscan/bonuses/databinding/ItemRvShopsPreviewRectangleBinding;->tvOfd:Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p8, p0, Lcom/warefly/checkscan/bonuses/databinding/ItemRvShopsPreviewRectangleBinding;->tvTitle:Landroid/widget/TextView;

    iput-object p9, p0, Lcom/warefly/checkscan/bonuses/databinding/ItemRvShopsPreviewRectangleBinding;->tvValue:Landroid/widget/TextView;

    iput-object p10, p0, Lcom/warefly/checkscan/bonuses/databinding/ItemRvShopsPreviewRectangleBinding;->viewDivider:Landroid/view/View;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/warefly/checkscan/bonuses/databinding/ItemRvShopsPreviewRectangleBinding;
    .locals 13

    const v0, 0x7f0a014a

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    const v0, 0x7f0a02dd

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/constraintlayout/widget/Guideline;

    if-eqz v5, :cond_0

    const v0, 0x7f0a0394

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    const v0, 0x7f0a03b0

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    const v0, 0x7f0a0521

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroidx/constraintlayout/widget/Barrier;

    if-eqz v8, :cond_0

    const v0, 0x7f0a0797

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v9, :cond_0

    const v0, 0x7f0a0814

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    const v0, 0x7f0a0826

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    const v0, 0x7f0a0856

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_0

    new-instance v2, Lcom/warefly/checkscan/bonuses/databinding/ItemRvShopsPreviewRectangleBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct/range {v2 .. v12}, Lcom/warefly/checkscan/bonuses/databinding/ItemRvShopsPreviewRectangleBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/Guideline;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/Barrier;Landroidx/appcompat/widget/AppCompatTextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/warefly/checkscan/bonuses/databinding/ItemRvShopsPreviewRectangleBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-static {p0, v0, v1}, Lcom/warefly/checkscan/bonuses/databinding/ItemRvShopsPreviewRectangleBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/bonuses/databinding/ItemRvShopsPreviewRectangleBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/bonuses/databinding/ItemRvShopsPreviewRectangleBinding;
    .locals 2

    const v0, 0x7f0d0228

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/warefly/checkscan/bonuses/databinding/ItemRvShopsPreviewRectangleBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/bonuses/databinding/ItemRvShopsPreviewRectangleBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/bonuses/databinding/ItemRvShopsPreviewRectangleBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/warefly/checkscan/bonuses/databinding/ItemRvShopsPreviewRectangleBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method
