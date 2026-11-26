.class public final Lcom/warefly/checkscan/databinding/LayoutWithdrawalLimitIncreaseMethodBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroidx/cardview/widget/CardView;

.field public final tvMethodDescription:Landroid/widget/TextView;

.field public final tvMethodMake:Landroid/widget/TextView;

.field public final tvMethodTitle:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/cardview/widget/CardView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/databinding/LayoutWithdrawalLimitIncreaseMethodBinding;->rootView:Landroidx/cardview/widget/CardView;

    iput-object p2, p0, Lcom/warefly/checkscan/databinding/LayoutWithdrawalLimitIncreaseMethodBinding;->tvMethodDescription:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/warefly/checkscan/databinding/LayoutWithdrawalLimitIncreaseMethodBinding;->tvMethodMake:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/warefly/checkscan/databinding/LayoutWithdrawalLimitIncreaseMethodBinding;->tvMethodTitle:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/LayoutWithdrawalLimitIncreaseMethodBinding;
    .locals 4

    const v0, 0x7f0a0777

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    const v0, 0x7f0a0778

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    const v0, 0x7f0a0779

    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    new-instance v0, Lcom/warefly/checkscan/databinding/LayoutWithdrawalLimitIncreaseMethodBinding;

    check-cast p0, Landroidx/cardview/widget/CardView;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/warefly/checkscan/databinding/LayoutWithdrawalLimitIncreaseMethodBinding;-><init>(Landroidx/cardview/widget/CardView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/warefly/checkscan/databinding/LayoutWithdrawalLimitIncreaseMethodBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-static {p0, v0, v1}, Lcom/warefly/checkscan/databinding/LayoutWithdrawalLimitIncreaseMethodBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/LayoutWithdrawalLimitIncreaseMethodBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/LayoutWithdrawalLimitIncreaseMethodBinding;
    .locals 2

    const v0, 0x7f0d02ad

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/warefly/checkscan/databinding/LayoutWithdrawalLimitIncreaseMethodBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/LayoutWithdrawalLimitIncreaseMethodBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/databinding/LayoutWithdrawalLimitIncreaseMethodBinding;->getRoot()Landroidx/cardview/widget/CardView;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroidx/cardview/widget/CardView;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/warefly/checkscan/databinding/LayoutWithdrawalLimitIncreaseMethodBinding;->rootView:Landroidx/cardview/widget/CardView;

    return-object p0
.end method
