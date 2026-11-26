.class public final Lcom/warefly/checkscan/bonuses/databinding/FragmentBonusesNewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final includeSearch:Lcom/warefly/checkscan/bonuses/databinding/ItemRvSearchButtonBinding;

.field public final includeSearchWithBadges:Lcom/warefly/checkscan/bonuses/databinding/LayoutBonusesToolbarBinding;

.field private final rootView:Landroid/widget/FrameLayout;

.field public final rvContent:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method private constructor <init>(Landroid/widget/FrameLayout;Lcom/warefly/checkscan/bonuses/databinding/ItemRvSearchButtonBinding;Lcom/warefly/checkscan/bonuses/databinding/LayoutBonusesToolbarBinding;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/bonuses/databinding/FragmentBonusesNewBinding;->rootView:Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/warefly/checkscan/bonuses/databinding/FragmentBonusesNewBinding;->includeSearch:Lcom/warefly/checkscan/bonuses/databinding/ItemRvSearchButtonBinding;

    iput-object p3, p0, Lcom/warefly/checkscan/bonuses/databinding/FragmentBonusesNewBinding;->includeSearchWithBadges:Lcom/warefly/checkscan/bonuses/databinding/LayoutBonusesToolbarBinding;

    iput-object p4, p0, Lcom/warefly/checkscan/bonuses/databinding/FragmentBonusesNewBinding;->rvContent:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/warefly/checkscan/bonuses/databinding/FragmentBonusesNewBinding;
    .locals 4

    const v0, 0x7f0a0330

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v1}, Lcom/warefly/checkscan/bonuses/databinding/ItemRvSearchButtonBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/bonuses/databinding/ItemRvSearchButtonBinding;

    move-result-object v0

    const v1, 0x7f0a0331

    invoke-static {p0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/warefly/checkscan/bonuses/databinding/LayoutBonusesToolbarBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/bonuses/databinding/LayoutBonusesToolbarBinding;

    move-result-object v1

    const v2, 0x7f0a05c3

    invoke-static {p0, v2}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v3, :cond_0

    new-instance v2, Lcom/warefly/checkscan/bonuses/databinding/FragmentBonusesNewBinding;

    check-cast p0, Landroid/widget/FrameLayout;

    invoke-direct {v2, p0, v0, v1, v3}, Lcom/warefly/checkscan/bonuses/databinding/FragmentBonusesNewBinding;-><init>(Landroid/widget/FrameLayout;Lcom/warefly/checkscan/bonuses/databinding/ItemRvSearchButtonBinding;Lcom/warefly/checkscan/bonuses/databinding/LayoutBonusesToolbarBinding;Landroidx/recyclerview/widget/RecyclerView;)V

    return-object v2

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :cond_2
    :goto_0
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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/warefly/checkscan/bonuses/databinding/FragmentBonusesNewBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-static {p0, v0, v1}, Lcom/warefly/checkscan/bonuses/databinding/FragmentBonusesNewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/bonuses/databinding/FragmentBonusesNewBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/bonuses/databinding/FragmentBonusesNewBinding;
    .locals 2

    const v0, 0x7f0d00ac

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/warefly/checkscan/bonuses/databinding/FragmentBonusesNewBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/bonuses/databinding/FragmentBonusesNewBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/bonuses/databinding/FragmentBonusesNewBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/FrameLayout;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/warefly/checkscan/bonuses/databinding/FragmentBonusesNewBinding;->rootView:Landroid/widget/FrameLayout;

    return-object p0
.end method
