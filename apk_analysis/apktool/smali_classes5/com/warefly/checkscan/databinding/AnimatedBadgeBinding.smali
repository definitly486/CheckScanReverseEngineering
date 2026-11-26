.class public final Lcom/warefly/checkscan/databinding/AnimatedBadgeBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final menuItemBadge:Landroid/widget/ImageView;

.field private final rootView:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/databinding/AnimatedBadgeBinding;->rootView:Landroid/view/View;

    iput-object p2, p0, Lcom/warefly/checkscan/databinding/AnimatedBadgeBinding;->menuItemBadge:Landroid/widget/ImageView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/AnimatedBadgeBinding;
    .locals 2

    const v0, 0x7f0a048a

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    new-instance v0, Lcom/warefly/checkscan/databinding/AnimatedBadgeBinding;

    invoke-direct {v0, p0, v1}, Lcom/warefly/checkscan/databinding/AnimatedBadgeBinding;-><init>(Landroid/view/View;Landroid/widget/ImageView;)V

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

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/warefly/checkscan/databinding/AnimatedBadgeBinding;
    .locals 1

    if-eqz p1, :cond_0

    const v0, 0x7f0d001e

    invoke-virtual {p0, v0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-static {p1}, Lcom/warefly/checkscan/databinding/AnimatedBadgeBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/AnimatedBadgeBinding;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "parent"

    invoke-static {p0}, Lo2;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/AnimatedBadgeBinding;->rootView:Landroid/view/View;

    return-object p0
.end method
