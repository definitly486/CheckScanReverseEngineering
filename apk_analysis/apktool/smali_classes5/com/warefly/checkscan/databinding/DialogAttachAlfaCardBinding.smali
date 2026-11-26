.class public final Lcom/warefly/checkscan/databinding/DialogAttachAlfaCardBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final bottomWebView:Landroid/webkit/WebView;

.field public final btnClose:Landroid/widget/ImageView;

.field public final guideline:Landroidx/constraintlayout/widget/Guideline;

.field public final guideline1:Landroidx/constraintlayout/widget/Guideline;

.field public final guidelineHorizontal:Landroidx/constraintlayout/widget/Guideline;

.field public final header:Landroid/view/View;

.field public final layoutRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final topWebView:Landroid/webkit/WebView;

.field public final tvTitle:Landroid/widget/TextView;

.field public final viewLoading:Lcom/warefly/checkscan/design/resources/databinding/LayoutPreviewsLoadingBinding;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/webkit/WebView;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroid/view/View;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/webkit/WebView;Landroid/widget/TextView;Lcom/warefly/checkscan/design/resources/databinding/LayoutPreviewsLoadingBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/databinding/DialogAttachAlfaCardBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lcom/warefly/checkscan/databinding/DialogAttachAlfaCardBinding;->bottomWebView:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/warefly/checkscan/databinding/DialogAttachAlfaCardBinding;->btnClose:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/warefly/checkscan/databinding/DialogAttachAlfaCardBinding;->guideline:Landroidx/constraintlayout/widget/Guideline;

    iput-object p5, p0, Lcom/warefly/checkscan/databinding/DialogAttachAlfaCardBinding;->guideline1:Landroidx/constraintlayout/widget/Guideline;

    iput-object p6, p0, Lcom/warefly/checkscan/databinding/DialogAttachAlfaCardBinding;->guidelineHorizontal:Landroidx/constraintlayout/widget/Guideline;

    iput-object p7, p0, Lcom/warefly/checkscan/databinding/DialogAttachAlfaCardBinding;->header:Landroid/view/View;

    iput-object p8, p0, Lcom/warefly/checkscan/databinding/DialogAttachAlfaCardBinding;->layoutRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p9, p0, Lcom/warefly/checkscan/databinding/DialogAttachAlfaCardBinding;->topWebView:Landroid/webkit/WebView;

    iput-object p10, p0, Lcom/warefly/checkscan/databinding/DialogAttachAlfaCardBinding;->tvTitle:Landroid/widget/TextView;

    iput-object p11, p0, Lcom/warefly/checkscan/databinding/DialogAttachAlfaCardBinding;->viewLoading:Lcom/warefly/checkscan/design/resources/databinding/LayoutPreviewsLoadingBinding;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/DialogAttachAlfaCardBinding;
    .locals 14

    const v0, 0x7f0a00ee

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/webkit/WebView;

    if-eqz v4, :cond_0

    const v0, 0x7f0a0127

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    const v0, 0x7f0a02df

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroidx/constraintlayout/widget/Guideline;

    if-eqz v6, :cond_0

    const v0, 0x7f0a02e0

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroidx/constraintlayout/widget/Guideline;

    if-eqz v7, :cond_0

    const v0, 0x7f0a02e6

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroidx/constraintlayout/widget/Guideline;

    if-eqz v8, :cond_0

    const v0, 0x7f0a02eb

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_0

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0a06bb

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/webkit/WebView;

    if-eqz v11, :cond_0

    const v0, 0x7f0a0814

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    const v0, 0x7f0a0862

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/warefly/checkscan/design/resources/databinding/LayoutPreviewsLoadingBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/design/resources/databinding/LayoutPreviewsLoadingBinding;

    move-result-object v13

    new-instance v2, Lcom/warefly/checkscan/databinding/DialogAttachAlfaCardBinding;

    move-object v10, v3

    invoke-direct/range {v2 .. v13}, Lcom/warefly/checkscan/databinding/DialogAttachAlfaCardBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/webkit/WebView;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroid/view/View;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/webkit/WebView;Landroid/widget/TextView;Lcom/warefly/checkscan/design/resources/databinding/LayoutPreviewsLoadingBinding;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/warefly/checkscan/databinding/DialogAttachAlfaCardBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-static {p0, v0, v1}, Lcom/warefly/checkscan/databinding/DialogAttachAlfaCardBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/DialogAttachAlfaCardBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/DialogAttachAlfaCardBinding;
    .locals 2

    const v0, 0x7f0d0064

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/warefly/checkscan/databinding/DialogAttachAlfaCardBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/DialogAttachAlfaCardBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/databinding/DialogAttachAlfaCardBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/warefly/checkscan/databinding/DialogAttachAlfaCardBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method
