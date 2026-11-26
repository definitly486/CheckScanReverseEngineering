.class public final Lcom/warefly/checkscan/profile/databinding/ItemRvProfileInviteCodeBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnCopy:Landroid/widget/TextView;

.field public final btnShare:Lcom/warefly/checkscan/core/ui/LoadingButton;

.field public final llCode:Landroid/widget/LinearLayout;

.field private final rootView:Lcom/google/android/material/card/MaterialCardView;

.field public final tvInviteCode:Landroid/widget/TextView;

.field public final tvTitle:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/google/android/material/card/MaterialCardView;Landroid/widget/TextView;Lcom/warefly/checkscan/core/ui/LoadingButton;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileInviteCodeBinding;->rootView:Lcom/google/android/material/card/MaterialCardView;

    iput-object p2, p0, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileInviteCodeBinding;->btnCopy:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileInviteCodeBinding;->btnShare:Lcom/warefly/checkscan/core/ui/LoadingButton;

    iput-object p4, p0, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileInviteCodeBinding;->llCode:Landroid/widget/LinearLayout;

    iput-object p5, p0, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileInviteCodeBinding;->tvInviteCode:Landroid/widget/TextView;

    iput-object p6, p0, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileInviteCodeBinding;->tvTitle:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/warefly/checkscan/profile/databinding/ItemRvProfileInviteCodeBinding;
    .locals 9

    const v0, 0x7f0a0138

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    const v0, 0x7f0a01a5

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/warefly/checkscan/core/ui/LoadingButton;

    if-eqz v5, :cond_0

    const v0, 0x7f0a042d

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_0

    const v0, 0x7f0a0765

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    const v0, 0x7f0a0814

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    new-instance v2, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileInviteCodeBinding;

    move-object v3, p0

    check-cast v3, Lcom/google/android/material/card/MaterialCardView;

    invoke-direct/range {v2 .. v8}, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileInviteCodeBinding;-><init>(Lcom/google/android/material/card/MaterialCardView;Landroid/widget/TextView;Lcom/warefly/checkscan/core/ui/LoadingButton;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/warefly/checkscan/profile/databinding/ItemRvProfileInviteCodeBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-static {p0, v0, v1}, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileInviteCodeBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/profile/databinding/ItemRvProfileInviteCodeBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/profile/databinding/ItemRvProfileInviteCodeBinding;
    .locals 2

    const v0, 0x7f0d01fe

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileInviteCodeBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/profile/databinding/ItemRvProfileInviteCodeBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileInviteCodeBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Lcom/google/android/material/card/MaterialCardView;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/warefly/checkscan/profile/databinding/ItemRvProfileInviteCodeBinding;->rootView:Lcom/google/android/material/card/MaterialCardView;

    return-object p0
.end method
