.class public final Lcom/warefly/checkscan/bonuses/databinding/LayoutBonusesToolbarBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnNotifications:Landroid/widget/ImageView;

.field public final btnProfile:Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;

.field public final btnSearch:Lcom/google/android/material/card/MaterialCardView;

.field public final ivBellRedDot:Landroid/widget/ImageView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final toolbarContent:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final tvSearch:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;Lcom/google/android/material/card/MaterialCardView;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/bonuses/databinding/LayoutBonusesToolbarBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lcom/warefly/checkscan/bonuses/databinding/LayoutBonusesToolbarBinding;->btnNotifications:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/warefly/checkscan/bonuses/databinding/LayoutBonusesToolbarBinding;->btnProfile:Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;

    iput-object p4, p0, Lcom/warefly/checkscan/bonuses/databinding/LayoutBonusesToolbarBinding;->btnSearch:Lcom/google/android/material/card/MaterialCardView;

    iput-object p5, p0, Lcom/warefly/checkscan/bonuses/databinding/LayoutBonusesToolbarBinding;->ivBellRedDot:Landroid/widget/ImageView;

    iput-object p6, p0, Lcom/warefly/checkscan/bonuses/databinding/LayoutBonusesToolbarBinding;->toolbarContent:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p7, p0, Lcom/warefly/checkscan/bonuses/databinding/LayoutBonusesToolbarBinding;->tvSearch:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/warefly/checkscan/bonuses/databinding/LayoutBonusesToolbarBinding;
    .locals 10

    const v0, 0x7f0a017d

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    const v0, 0x7f0a0189

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;

    if-eqz v5, :cond_0

    const v0, 0x7f0a0199

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/google/android/material/card/MaterialCardView;

    if-eqz v6, :cond_0

    const v0, 0x7f0a035a

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0a07d2

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    new-instance v2, Lcom/warefly/checkscan/bonuses/databinding/LayoutBonusesToolbarBinding;

    move-object v8, v3

    invoke-direct/range {v2 .. v9}, Lcom/warefly/checkscan/bonuses/databinding/LayoutBonusesToolbarBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;Lcom/google/android/material/card/MaterialCardView;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/warefly/checkscan/bonuses/databinding/LayoutBonusesToolbarBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-static {p0, v0, v1}, Lcom/warefly/checkscan/bonuses/databinding/LayoutBonusesToolbarBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/bonuses/databinding/LayoutBonusesToolbarBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/bonuses/databinding/LayoutBonusesToolbarBinding;
    .locals 2

    const v0, 0x7f0d027a

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/warefly/checkscan/bonuses/databinding/LayoutBonusesToolbarBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/bonuses/databinding/LayoutBonusesToolbarBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/bonuses/databinding/LayoutBonusesToolbarBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/warefly/checkscan/bonuses/databinding/LayoutBonusesToolbarBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method
