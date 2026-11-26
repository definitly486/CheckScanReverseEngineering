.class public final Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnConfirm:Lcom/warefly/checkscan/core/ui/LoadingButton;

.field public final cbEmailAgreement:Lcom/warefly/checkscan/core/ui/CheckBox;

.field public final container:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final etDescription:Lcom/google/android/material/textfield/TextInputEditText;

.field public final etEmail:Lcom/google/android/material/textfield/TextInputEditText;

.field public final etName:Lcom/google/android/material/textfield/TextInputEditText;

.field public final incldError:Lcom/warefly/checkscan/core/ui/databinding/LayoutSimpleTryAgainBinding;

.field public final incldLoading:Lcom/warefly/checkscan/core/ui/databinding/LayoutSpinnerLoadingBinding;

.field public final ivBtnBack:Landroid/widget/ImageView;

.field public final nestedScrollView:Landroidx/core/widget/NestedScrollView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final tilDescription:Lcom/google/android/material/textfield/TextInputLayout;

.field public final tilEmail:Lcom/google/android/material/textfield/TextInputLayout;

.field public final tilName:Lcom/google/android/material/textfield/TextInputLayout;

.field public final tvDescriptionHint:Landroid/widget/TextView;

.field public final tvEmailHint:Landroid/widget/TextView;

.field public final tvHeader:Landroid/widget/TextView;

.field public final tvNameHint:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/warefly/checkscan/core/ui/LoadingButton;Lcom/warefly/checkscan/core/ui/CheckBox;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Lcom/warefly/checkscan/core/ui/databinding/LayoutSimpleTryAgainBinding;Lcom/warefly/checkscan/core/ui/databinding/LayoutSpinnerLoadingBinding;Landroid/widget/ImageView;Landroidx/core/widget/NestedScrollView;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;->btnConfirm:Lcom/warefly/checkscan/core/ui/LoadingButton;

    iput-object p3, p0, Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;->cbEmailAgreement:Lcom/warefly/checkscan/core/ui/CheckBox;

    iput-object p4, p0, Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;->container:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p5, p0, Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;->etDescription:Lcom/google/android/material/textfield/TextInputEditText;

    iput-object p6, p0, Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;->etEmail:Lcom/google/android/material/textfield/TextInputEditText;

    iput-object p7, p0, Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;->etName:Lcom/google/android/material/textfield/TextInputEditText;

    iput-object p8, p0, Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;->incldError:Lcom/warefly/checkscan/core/ui/databinding/LayoutSimpleTryAgainBinding;

    iput-object p9, p0, Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;->incldLoading:Lcom/warefly/checkscan/core/ui/databinding/LayoutSpinnerLoadingBinding;

    iput-object p10, p0, Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;->ivBtnBack:Landroid/widget/ImageView;

    iput-object p11, p0, Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;->nestedScrollView:Landroidx/core/widget/NestedScrollView;

    iput-object p12, p0, Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;->tilDescription:Lcom/google/android/material/textfield/TextInputLayout;

    iput-object p13, p0, Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;->tilEmail:Lcom/google/android/material/textfield/TextInputLayout;

    iput-object p14, p0, Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;->tilName:Lcom/google/android/material/textfield/TextInputLayout;

    iput-object p15, p0, Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;->tvDescriptionHint:Landroid/widget/TextView;

    move-object/from16 p1, p16

    iput-object p1, p0, Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;->tvEmailHint:Landroid/widget/TextView;

    move-object/from16 p1, p17

    iput-object p1, p0, Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;->tvHeader:Landroid/widget/TextView;

    move-object/from16 p1, p18

    iput-object p1, p0, Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;->tvNameHint:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;
    .locals 22

    move-object/from16 v0, p0

    const v1, 0x7f0a0131

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/warefly/checkscan/core/ui/LoadingButton;

    if-eqz v5, :cond_0

    const v1, 0x7f0a01de

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/warefly/checkscan/core/ui/CheckBox;

    if-eqz v6, :cond_0

    const v1, 0x7f0a0211

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v7, :cond_0

    const v1, 0x7f0a0273

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v8, :cond_0

    const v1, 0x7f0a0274

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v9, :cond_0

    const v1, 0x7f0a027f

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v10, :cond_0

    const v1, 0x7f0a031d

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/warefly/checkscan/core/ui/databinding/LayoutSimpleTryAgainBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/core/ui/databinding/LayoutSimpleTryAgainBinding;

    move-result-object v11

    const v1, 0x7f0a0324

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/warefly/checkscan/core/ui/databinding/LayoutSpinnerLoadingBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/core/ui/databinding/LayoutSpinnerLoadingBinding;

    move-result-object v12

    const v1, 0x7f0a0362

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/ImageView;

    if-eqz v13, :cond_0

    const v1, 0x7f0a0511

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroidx/core/widget/NestedScrollView;

    if-eqz v14, :cond_0

    const v1, 0x7f0a068c

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v15, :cond_0

    const v1, 0x7f0a068d

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v16, :cond_0

    const v1, 0x7f0a0698

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v17, :cond_0

    const v1, 0x7f0a071e

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_0

    const v1, 0x7f0a072c

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_0

    const v1, 0x7f0a074c

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/TextView;

    if-eqz v20, :cond_0

    const v1, 0x7f0a0781

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/widget/TextView;

    if-eqz v21, :cond_0

    new-instance v3, Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct/range {v3 .. v21}, Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/warefly/checkscan/core/ui/LoadingButton;Lcom/warefly/checkscan/core/ui/CheckBox;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Lcom/warefly/checkscan/core/ui/databinding/LayoutSimpleTryAgainBinding;Lcom/warefly/checkscan/core/ui/databinding/LayoutSpinnerLoadingBinding;Landroid/widget/ImageView;Landroidx/core/widget/NestedScrollView;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-static {p0, v0, v1}, Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;
    .locals 2

    const v0, 0x7f0d00fa

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/warefly/checkscan/support/databinding/FragmentSupportFormBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method
