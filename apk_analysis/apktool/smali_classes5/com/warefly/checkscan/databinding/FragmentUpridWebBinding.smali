.class public final Lcom/warefly/checkscan/databinding/FragmentUpridWebBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnBackPlastic:Landroid/widget/TextView;

.field public final layoutRoot:Landroid/widget/FrameLayout;

.field private final rootView:Landroid/widget/FrameLayout;

.field public final topWebView:Landroid/webkit/WebView;

.field public final viewLoading:Lcom/warefly/checkscan/design/resources/databinding/LayoutPreviewsLoadingBinding;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/FrameLayout;Landroid/webkit/WebView;Lcom/warefly/checkscan/design/resources/databinding/LayoutPreviewsLoadingBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/databinding/FragmentUpridWebBinding;->rootView:Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/warefly/checkscan/databinding/FragmentUpridWebBinding;->btnBackPlastic:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/warefly/checkscan/databinding/FragmentUpridWebBinding;->layoutRoot:Landroid/widget/FrameLayout;

    iput-object p4, p0, Lcom/warefly/checkscan/databinding/FragmentUpridWebBinding;->topWebView:Landroid/webkit/WebView;

    iput-object p5, p0, Lcom/warefly/checkscan/databinding/FragmentUpridWebBinding;->viewLoading:Lcom/warefly/checkscan/design/resources/databinding/LayoutPreviewsLoadingBinding;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/FragmentUpridWebBinding;
    .locals 8

    const v0, 0x7f0a010d

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    move-object v3, p0

    check-cast v3, Landroid/widget/FrameLayout;

    const v0, 0x7f0a06bb

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/webkit/WebView;

    if-eqz v6, :cond_0

    const v0, 0x7f0a0862

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcom/warefly/checkscan/design/resources/databinding/LayoutPreviewsLoadingBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/design/resources/databinding/LayoutPreviewsLoadingBinding;

    move-result-object v7

    new-instance v2, Lcom/warefly/checkscan/databinding/FragmentUpridWebBinding;

    move-object v5, v3

    invoke-direct/range {v2 .. v7}, Lcom/warefly/checkscan/databinding/FragmentUpridWebBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/TextView;Landroid/widget/FrameLayout;Landroid/webkit/WebView;Lcom/warefly/checkscan/design/resources/databinding/LayoutPreviewsLoadingBinding;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/warefly/checkscan/databinding/FragmentUpridWebBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-static {p0, v0, v1}, Lcom/warefly/checkscan/databinding/FragmentUpridWebBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/FragmentUpridWebBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/FragmentUpridWebBinding;
    .locals 2

    const v0, 0x7f0d0101

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/warefly/checkscan/databinding/FragmentUpridWebBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/FragmentUpridWebBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/databinding/FragmentUpridWebBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentUpridWebBinding;->rootView:Landroid/widget/FrameLayout;

    return-object p0
.end method
