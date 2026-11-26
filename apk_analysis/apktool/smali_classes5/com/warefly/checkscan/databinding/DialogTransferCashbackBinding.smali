.class public final Lcom/warefly/checkscan/databinding/DialogTransferCashbackBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnClose:Landroid/widget/ImageView;

.field public final btnTransfer:Lcom/warefly/checkscan/core/ui/LoadingButton;

.field public final couponMetroView:Lcom/warefly/checkscan/databinding/LayoutCouponPromocodesBinding;

.field public final etPhone:Lcom/google/android/material/textfield/TextInputEditText;

.field public final etSum:Lcom/google/android/material/textfield/TextInputEditText;

.field public final etTransferDestination:Lcom/google/android/material/textfield/TextInputEditText;

.field public final layoutHint:Landroid/widget/LinearLayout;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final rvPromocodes:Landroidx/recyclerview/widget/RecyclerView;

.field public final tilPhone:Lcom/google/android/material/textfield/TextInputLayout;

.field public final tilSum:Lcom/google/android/material/textfield/TextInputLayout;

.field public final tilTransferDestination:Lcom/google/android/material/textfield/TextInputLayout;

.field public final tvDescription:Landroid/widget/TextView;

.field public final tvHintPhone:Landroid/widget/TextView;

.field public final tvHintTransferPhone:Landroid/widget/TextView;

.field public final tvRules:Landroid/widget/TextView;

.field public final tvTitle:Landroid/widget/TextView;

.field public final view:Landroid/view/View;

.field public final view2:Landroid/view/View;

.field public final view3:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Lcom/warefly/checkscan/core/ui/LoadingButton;Lcom/warefly/checkscan/databinding/LayoutCouponPromocodesBinding;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/databinding/DialogTransferCashbackBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lcom/warefly/checkscan/databinding/DialogTransferCashbackBinding;->btnClose:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/warefly/checkscan/databinding/DialogTransferCashbackBinding;->btnTransfer:Lcom/warefly/checkscan/core/ui/LoadingButton;

    iput-object p4, p0, Lcom/warefly/checkscan/databinding/DialogTransferCashbackBinding;->couponMetroView:Lcom/warefly/checkscan/databinding/LayoutCouponPromocodesBinding;

    iput-object p5, p0, Lcom/warefly/checkscan/databinding/DialogTransferCashbackBinding;->etPhone:Lcom/google/android/material/textfield/TextInputEditText;

    iput-object p6, p0, Lcom/warefly/checkscan/databinding/DialogTransferCashbackBinding;->etSum:Lcom/google/android/material/textfield/TextInputEditText;

    iput-object p7, p0, Lcom/warefly/checkscan/databinding/DialogTransferCashbackBinding;->etTransferDestination:Lcom/google/android/material/textfield/TextInputEditText;

    iput-object p8, p0, Lcom/warefly/checkscan/databinding/DialogTransferCashbackBinding;->layoutHint:Landroid/widget/LinearLayout;

    iput-object p9, p0, Lcom/warefly/checkscan/databinding/DialogTransferCashbackBinding;->rvPromocodes:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p10, p0, Lcom/warefly/checkscan/databinding/DialogTransferCashbackBinding;->tilPhone:Lcom/google/android/material/textfield/TextInputLayout;

    iput-object p11, p0, Lcom/warefly/checkscan/databinding/DialogTransferCashbackBinding;->tilSum:Lcom/google/android/material/textfield/TextInputLayout;

    iput-object p12, p0, Lcom/warefly/checkscan/databinding/DialogTransferCashbackBinding;->tilTransferDestination:Lcom/google/android/material/textfield/TextInputLayout;

    iput-object p13, p0, Lcom/warefly/checkscan/databinding/DialogTransferCashbackBinding;->tvDescription:Landroid/widget/TextView;

    iput-object p14, p0, Lcom/warefly/checkscan/databinding/DialogTransferCashbackBinding;->tvHintPhone:Landroid/widget/TextView;

    iput-object p15, p0, Lcom/warefly/checkscan/databinding/DialogTransferCashbackBinding;->tvHintTransferPhone:Landroid/widget/TextView;

    move-object/from16 p1, p16

    iput-object p1, p0, Lcom/warefly/checkscan/databinding/DialogTransferCashbackBinding;->tvRules:Landroid/widget/TextView;

    move-object/from16 p1, p17

    iput-object p1, p0, Lcom/warefly/checkscan/databinding/DialogTransferCashbackBinding;->tvTitle:Landroid/widget/TextView;

    move-object/from16 p1, p18

    iput-object p1, p0, Lcom/warefly/checkscan/databinding/DialogTransferCashbackBinding;->view:Landroid/view/View;

    move-object/from16 p1, p19

    iput-object p1, p0, Lcom/warefly/checkscan/databinding/DialogTransferCashbackBinding;->view2:Landroid/view/View;

    move-object/from16 p1, p20

    iput-object p1, p0, Lcom/warefly/checkscan/databinding/DialogTransferCashbackBinding;->view3:Landroid/view/View;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/DialogTransferCashbackBinding;
    .locals 24

    move-object/from16 v0, p0

    const v1, 0x7f0a0127

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    const v1, 0x7f0a01b2

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/warefly/checkscan/core/ui/LoadingButton;

    if-eqz v6, :cond_0

    const v1, 0x7f0a0221

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/warefly/checkscan/databinding/LayoutCouponPromocodesBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/LayoutCouponPromocodesBinding;

    move-result-object v7

    const v1, 0x7f0a0281

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v8, :cond_0

    const v1, 0x7f0a0283

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v9, :cond_0

    const v1, 0x7f0a0285

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v10, :cond_0

    const v1, 0x7f0a03fe

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/LinearLayout;

    if-eqz v11, :cond_0

    const v1, 0x7f0a05d8

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v12, :cond_0

    const v1, 0x7f0a0699

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v13, :cond_0

    const v1, 0x7f0a069a

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v14, :cond_0

    const v1, 0x7f0a069b

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v15, :cond_0

    const v1, 0x7f0a0719

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_0

    const v1, 0x7f0a075a

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_0

    const v1, 0x7f0a075c

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_0

    const v1, 0x7f0a07cb

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_0

    const v1, 0x7f0a0814

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/TextView;

    if-eqz v20, :cond_0

    const v1, 0x7f0a0846

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v21

    if-eqz v21, :cond_0

    const v1, 0x7f0a0847

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v22

    if-eqz v22, :cond_0

    const v1, 0x7f0a0848

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v23

    if-eqz v23, :cond_0

    new-instance v3, Lcom/warefly/checkscan/databinding/DialogTransferCashbackBinding;

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct/range {v3 .. v23}, Lcom/warefly/checkscan/databinding/DialogTransferCashbackBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Lcom/warefly/checkscan/core/ui/LoadingButton;Lcom/warefly/checkscan/databinding/LayoutCouponPromocodesBinding;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/warefly/checkscan/databinding/DialogTransferCashbackBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-static {p0, v0, v1}, Lcom/warefly/checkscan/databinding/DialogTransferCashbackBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/DialogTransferCashbackBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/DialogTransferCashbackBinding;
    .locals 2

    const v0, 0x7f0d009a

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/warefly/checkscan/databinding/DialogTransferCashbackBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/DialogTransferCashbackBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/databinding/DialogTransferCashbackBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/warefly/checkscan/databinding/DialogTransferCashbackBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method
