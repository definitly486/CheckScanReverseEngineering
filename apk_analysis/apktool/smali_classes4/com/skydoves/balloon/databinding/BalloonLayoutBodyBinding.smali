.class public final Lcom/skydoves/balloon/databinding/BalloonLayoutBodyBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final balloon:Landroid/widget/FrameLayout;

.field public final balloonArrow:Landroid/widget/ImageView;

.field public final balloonCard:Lcom/skydoves/balloon/radius/RadiusLayout;

.field public final balloonContent:Landroid/widget/FrameLayout;

.field public final balloonText:Lcom/skydoves/balloon/vectortext/VectorTextView;

.field public final balloonWrapper:Landroid/widget/FrameLayout;

.field private final rootView:Landroid/widget/FrameLayout;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Lcom/skydoves/balloon/radius/RadiusLayout;Landroid/widget/FrameLayout;Lcom/skydoves/balloon/vectortext/VectorTextView;Landroid/widget/FrameLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/skydoves/balloon/databinding/BalloonLayoutBodyBinding;->rootView:Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/skydoves/balloon/databinding/BalloonLayoutBodyBinding;->balloon:Landroid/widget/FrameLayout;

    iput-object p3, p0, Lcom/skydoves/balloon/databinding/BalloonLayoutBodyBinding;->balloonArrow:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/skydoves/balloon/databinding/BalloonLayoutBodyBinding;->balloonCard:Lcom/skydoves/balloon/radius/RadiusLayout;

    iput-object p5, p0, Lcom/skydoves/balloon/databinding/BalloonLayoutBodyBinding;->balloonContent:Landroid/widget/FrameLayout;

    iput-object p6, p0, Lcom/skydoves/balloon/databinding/BalloonLayoutBodyBinding;->balloonText:Lcom/skydoves/balloon/vectortext/VectorTextView;

    iput-object p7, p0, Lcom/skydoves/balloon/databinding/BalloonLayoutBodyBinding;->balloonWrapper:Landroid/widget/FrameLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/skydoves/balloon/databinding/BalloonLayoutBodyBinding;
    .locals 8

    move-object v1, p0

    check-cast v1, Landroid/widget/FrameLayout;

    const v0, 0x7f0a00b8

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    const v0, 0x7f0a00b9

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/skydoves/balloon/radius/RadiusLayout;

    if-eqz v4, :cond_0

    const v0, 0x7f0a00ba

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/FrameLayout;

    if-eqz v5, :cond_0

    const v0, 0x7f0a00bb

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/skydoves/balloon/vectortext/VectorTextView;

    if-eqz v6, :cond_0

    const v0, 0x7f0a00bc

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/FrameLayout;

    if-eqz v7, :cond_0

    new-instance v0, Lcom/skydoves/balloon/databinding/BalloonLayoutBodyBinding;

    move-object v2, v1

    invoke-direct/range {v0 .. v7}, Lcom/skydoves/balloon/databinding/BalloonLayoutBodyBinding;-><init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Lcom/skydoves/balloon/radius/RadiusLayout;Landroid/widget/FrameLayout;Lcom/skydoves/balloon/vectortext/VectorTextView;Landroid/widget/FrameLayout;)V

    return-object v0

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/skydoves/balloon/databinding/BalloonLayoutBodyBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-static {p0, v0, v1}, Lcom/skydoves/balloon/databinding/BalloonLayoutBodyBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/skydoves/balloon/databinding/BalloonLayoutBodyBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/skydoves/balloon/databinding/BalloonLayoutBodyBinding;
    .locals 2

    const v0, 0x7f0d0022

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/skydoves/balloon/databinding/BalloonLayoutBodyBinding;->bind(Landroid/view/View;)Lcom/skydoves/balloon/databinding/BalloonLayoutBodyBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/skydoves/balloon/databinding/BalloonLayoutBodyBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/skydoves/balloon/databinding/BalloonLayoutBodyBinding;->rootView:Landroid/widget/FrameLayout;

    return-object p0
.end method
