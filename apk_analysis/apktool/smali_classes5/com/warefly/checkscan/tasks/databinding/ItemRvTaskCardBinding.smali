.class public final Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskCardBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final bottomSpacer:Landroid/widget/Space;

.field public final btnArrow:Landroid/widget/ImageView;

.field public final btnClaimReward:Lcom/warefly/checkscan/core/ui/LoadingButton;

.field public final clickableRv:Landroid/view/View;

.field public final fadeBackground:Landroid/view/View;

.field public final ivLogo:Landroid/widget/ImageView;

.field private final rootView:Lcom/google/android/material/card/MaterialCardView;

.field public final rvBadges:Landroidx/recyclerview/widget/RecyclerView;

.field public final tvCounter:Landroid/widget/TextView;

.field public final tvSubtitle:Landroid/widget/TextView;

.field public final tvTitle:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/google/android/material/card/MaterialCardView;Landroid/widget/Space;Landroid/widget/ImageView;Lcom/warefly/checkscan/core/ui/LoadingButton;Landroid/view/View;Landroid/view/View;Landroid/widget/ImageView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskCardBinding;->rootView:Lcom/google/android/material/card/MaterialCardView;

    iput-object p2, p0, Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskCardBinding;->bottomSpacer:Landroid/widget/Space;

    iput-object p3, p0, Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskCardBinding;->btnArrow:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskCardBinding;->btnClaimReward:Lcom/warefly/checkscan/core/ui/LoadingButton;

    iput-object p5, p0, Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskCardBinding;->clickableRv:Landroid/view/View;

    iput-object p6, p0, Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskCardBinding;->fadeBackground:Landroid/view/View;

    iput-object p7, p0, Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskCardBinding;->ivLogo:Landroid/widget/ImageView;

    iput-object p8, p0, Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskCardBinding;->rvBadges:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p9, p0, Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskCardBinding;->tvCounter:Landroid/widget/TextView;

    iput-object p10, p0, Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskCardBinding;->tvSubtitle:Landroid/widget/TextView;

    iput-object p11, p0, Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskCardBinding;->tvTitle:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskCardBinding;
    .locals 14

    const v0, 0x7f0a00ec

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/Space;

    if-eqz v4, :cond_0

    const v0, 0x7f0a0106

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    const v0, 0x7f0a0124

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/warefly/checkscan/core/ui/LoadingButton;

    if-eqz v6, :cond_0

    const v0, 0x7f0a01ff

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_0

    const v0, 0x7f0a028b

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_0

    const v0, 0x7f0a0394

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_0

    const v0, 0x7f0a05ae

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v10, :cond_0

    const v0, 0x7f0a070e

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    const v0, 0x7f0a07f9

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_0

    const v0, 0x7f0a0814

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    new-instance v2, Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskCardBinding;

    move-object v3, p0

    check-cast v3, Lcom/google/android/material/card/MaterialCardView;

    invoke-direct/range {v2 .. v13}, Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskCardBinding;-><init>(Lcom/google/android/material/card/MaterialCardView;Landroid/widget/Space;Landroid/widget/ImageView;Lcom/warefly/checkscan/core/ui/LoadingButton;Landroid/view/View;Landroid/view/View;Landroid/widget/ImageView;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskCardBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-static {p0, v0, v1}, Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskCardBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskCardBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskCardBinding;
    .locals 2

    const v0, 0x7f0d0231

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskCardBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskCardBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskCardBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Lcom/google/android/material/card/MaterialCardView;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/warefly/checkscan/tasks/databinding/ItemRvTaskCardBinding;->rootView:Lcom/google/android/material/card/MaterialCardView;

    return-object p0
.end method
