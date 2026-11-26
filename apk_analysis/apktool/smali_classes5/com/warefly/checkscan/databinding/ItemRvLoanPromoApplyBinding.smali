.class public final Lcom/warefly/checkscan/databinding/ItemRvLoanPromoApplyBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnIssueLoan:Landroid/widget/TextView;

.field public final groupDisclaimers:Landroidx/constraintlayout/widget/Group;

.field public final ivBadge:Landroid/widget/ImageView;

.field public final ivHeaderLogo:Landroid/widget/ImageView;

.field public final ivPskInfo:Landroid/widget/ImageView;

.field public final llBadge:Landroid/widget/LinearLayout;

.field public final llPskContainer:Landroid/widget/LinearLayout;

.field public final mainCard:Lcom/google/android/material/card/MaterialCardView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final rvInfo:Landroidx/recyclerview/widget/RecyclerView;

.field public final topBorderBottom:Landroidx/constraintlayout/widget/Barrier;

.field public final tvBadge:Landroid/widget/TextView;

.field public final tvBankName:Landroid/widget/TextView;

.field public final tvCardType:Landroid/widget/TextView;

.field public final tvFooterDisclaimer:Landroid/widget/TextView;

.field public final tvPskRate:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroidx/constraintlayout/widget/Group;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/google/android/material/card/MaterialCardView;Landroidx/recyclerview/widget/RecyclerView;Landroidx/constraintlayout/widget/Barrier;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/databinding/ItemRvLoanPromoApplyBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lcom/warefly/checkscan/databinding/ItemRvLoanPromoApplyBinding;->btnIssueLoan:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/warefly/checkscan/databinding/ItemRvLoanPromoApplyBinding;->groupDisclaimers:Landroidx/constraintlayout/widget/Group;

    iput-object p4, p0, Lcom/warefly/checkscan/databinding/ItemRvLoanPromoApplyBinding;->ivBadge:Landroid/widget/ImageView;

    iput-object p5, p0, Lcom/warefly/checkscan/databinding/ItemRvLoanPromoApplyBinding;->ivHeaderLogo:Landroid/widget/ImageView;

    iput-object p6, p0, Lcom/warefly/checkscan/databinding/ItemRvLoanPromoApplyBinding;->ivPskInfo:Landroid/widget/ImageView;

    iput-object p7, p0, Lcom/warefly/checkscan/databinding/ItemRvLoanPromoApplyBinding;->llBadge:Landroid/widget/LinearLayout;

    iput-object p8, p0, Lcom/warefly/checkscan/databinding/ItemRvLoanPromoApplyBinding;->llPskContainer:Landroid/widget/LinearLayout;

    iput-object p9, p0, Lcom/warefly/checkscan/databinding/ItemRvLoanPromoApplyBinding;->mainCard:Lcom/google/android/material/card/MaterialCardView;

    iput-object p10, p0, Lcom/warefly/checkscan/databinding/ItemRvLoanPromoApplyBinding;->rvInfo:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p11, p0, Lcom/warefly/checkscan/databinding/ItemRvLoanPromoApplyBinding;->topBorderBottom:Landroidx/constraintlayout/widget/Barrier;

    iput-object p12, p0, Lcom/warefly/checkscan/databinding/ItemRvLoanPromoApplyBinding;->tvBadge:Landroid/widget/TextView;

    iput-object p13, p0, Lcom/warefly/checkscan/databinding/ItemRvLoanPromoApplyBinding;->tvBankName:Landroid/widget/TextView;

    iput-object p14, p0, Lcom/warefly/checkscan/databinding/ItemRvLoanPromoApplyBinding;->tvCardType:Landroid/widget/TextView;

    iput-object p15, p0, Lcom/warefly/checkscan/databinding/ItemRvLoanPromoApplyBinding;->tvFooterDisclaimer:Landroid/widget/TextView;

    move-object/from16 p1, p16

    iput-object p1, p0, Lcom/warefly/checkscan/databinding/ItemRvLoanPromoApplyBinding;->tvPskRate:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/ItemRvLoanPromoApplyBinding;
    .locals 20

    move-object/from16 v0, p0

    const v1, 0x7f0a0164

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    const v1, 0x7f0a02c8

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroidx/constraintlayout/widget/Group;

    if-eqz v6, :cond_0

    const v1, 0x7f0a0354

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    const v1, 0x7f0a0384

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    const v1, 0x7f0a03b7

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_0

    const v1, 0x7f0a0429

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/LinearLayout;

    if-eqz v10, :cond_0

    const v1, 0x7f0a0432

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/LinearLayout;

    if-eqz v11, :cond_0

    const v1, 0x7f0a043e

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/google/android/material/card/MaterialCardView;

    if-eqz v12, :cond_0

    const v1, 0x7f0a05ca

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v13, :cond_0

    const v1, 0x7f0a06b5

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroidx/constraintlayout/widget/Barrier;

    if-eqz v14, :cond_0

    const v1, 0x7f0a06d1

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_0

    const v1, 0x7f0a06d7

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_0

    const v1, 0x7f0a06f2

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_0

    const v1, 0x7f0a0744

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_0

    const v1, 0x7f0a07bb

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_0

    new-instance v3, Lcom/warefly/checkscan/databinding/ItemRvLoanPromoApplyBinding;

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct/range {v3 .. v19}, Lcom/warefly/checkscan/databinding/ItemRvLoanPromoApplyBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroidx/constraintlayout/widget/Group;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/google/android/material/card/MaterialCardView;Landroidx/recyclerview/widget/RecyclerView;Landroidx/constraintlayout/widget/Barrier;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v3

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo2;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/warefly/checkscan/databinding/ItemRvLoanPromoApplyBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-static {p0, v0, v1}, Lcom/warefly/checkscan/databinding/ItemRvLoanPromoApplyBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/ItemRvLoanPromoApplyBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/ItemRvLoanPromoApplyBinding;
    .locals 2

    const v0, 0x7f0d01e5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/warefly/checkscan/databinding/ItemRvLoanPromoApplyBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/ItemRvLoanPromoApplyBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/databinding/ItemRvLoanPromoApplyBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/warefly/checkscan/databinding/ItemRvLoanPromoApplyBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method
