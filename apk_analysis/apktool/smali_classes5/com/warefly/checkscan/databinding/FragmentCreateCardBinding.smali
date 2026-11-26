.class public final Lcom/warefly/checkscan/databinding/FragmentCreateCardBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnBack:Landroid/widget/ImageView;

.field public final btnChangeNumber:Landroid/widget/TextView;

.field public final btnIssueCard:Landroid/widget/TextView;

.field public final etPhone:Lcom/google/android/material/textfield/TextInputEditText;

.field public final incldLoadingSpinner:Lcom/warefly/checkscan/databinding/LoadingSpinnerBinding;

.field public final layoutPhoneCard:Lcom/warefly/checkscan/databinding/ItemPhoneCardBinding;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final tilPhone:Lcom/google/android/material/textfield/TextInputLayout;

.field public final toolbar:Landroid/view/View;

.field public final tvChangePhoneHint:Landroid/widget/TextView;

.field public final tvDescriptionError:Landroid/widget/TextView;

.field public final tvErrorNumber:Landroid/widget/TextView;

.field public final tvHeader:Landroid/widget/TextView;

.field public final tvTitle:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/google/android/material/textfield/TextInputEditText;Lcom/warefly/checkscan/databinding/LoadingSpinnerBinding;Lcom/warefly/checkscan/databinding/ItemPhoneCardBinding;Lcom/google/android/material/textfield/TextInputLayout;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/databinding/FragmentCreateCardBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lcom/warefly/checkscan/databinding/FragmentCreateCardBinding;->btnBack:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/warefly/checkscan/databinding/FragmentCreateCardBinding;->btnChangeNumber:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/warefly/checkscan/databinding/FragmentCreateCardBinding;->btnIssueCard:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/warefly/checkscan/databinding/FragmentCreateCardBinding;->etPhone:Lcom/google/android/material/textfield/TextInputEditText;

    iput-object p6, p0, Lcom/warefly/checkscan/databinding/FragmentCreateCardBinding;->incldLoadingSpinner:Lcom/warefly/checkscan/databinding/LoadingSpinnerBinding;

    iput-object p7, p0, Lcom/warefly/checkscan/databinding/FragmentCreateCardBinding;->layoutPhoneCard:Lcom/warefly/checkscan/databinding/ItemPhoneCardBinding;

    iput-object p8, p0, Lcom/warefly/checkscan/databinding/FragmentCreateCardBinding;->tilPhone:Lcom/google/android/material/textfield/TextInputLayout;

    iput-object p9, p0, Lcom/warefly/checkscan/databinding/FragmentCreateCardBinding;->toolbar:Landroid/view/View;

    iput-object p10, p0, Lcom/warefly/checkscan/databinding/FragmentCreateCardBinding;->tvChangePhoneHint:Landroid/widget/TextView;

    iput-object p11, p0, Lcom/warefly/checkscan/databinding/FragmentCreateCardBinding;->tvDescriptionError:Landroid/widget/TextView;

    iput-object p12, p0, Lcom/warefly/checkscan/databinding/FragmentCreateCardBinding;->tvErrorNumber:Landroid/widget/TextView;

    iput-object p13, p0, Lcom/warefly/checkscan/databinding/FragmentCreateCardBinding;->tvHeader:Landroid/widget/TextView;

    iput-object p14, p0, Lcom/warefly/checkscan/databinding/FragmentCreateCardBinding;->tvTitle:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/FragmentCreateCardBinding;
    .locals 18

    move-object/from16 v0, p0

    const v1, 0x7f0a0107

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    const v1, 0x7f0a011a

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    const v1, 0x7f0a0162

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    const v1, 0x7f0a0281

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v8, :cond_0

    const v1, 0x7f0a0325

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/warefly/checkscan/databinding/LoadingSpinnerBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/LoadingSpinnerBinding;

    move-result-object v9

    const v1, 0x7f0a0408

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/warefly/checkscan/databinding/ItemPhoneCardBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/ItemPhoneCardBinding;

    move-result-object v10

    const v1, 0x7f0a0699

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v11, :cond_0

    const v1, 0x7f0a06a6

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_0

    const v1, 0x7f0a06f9

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    const v1, 0x7f0a071c

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    const v1, 0x7f0a0731

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_0

    const v1, 0x7f0a074c

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_0

    const v1, 0x7f0a0814

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_0

    new-instance v3, Lcom/warefly/checkscan/databinding/FragmentCreateCardBinding;

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct/range {v3 .. v17}, Lcom/warefly/checkscan/databinding/FragmentCreateCardBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/google/android/material/textfield/TextInputEditText;Lcom/warefly/checkscan/databinding/LoadingSpinnerBinding;Lcom/warefly/checkscan/databinding/ItemPhoneCardBinding;Lcom/google/android/material/textfield/TextInputLayout;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/warefly/checkscan/databinding/FragmentCreateCardBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-static {p0, v0, v1}, Lcom/warefly/checkscan/databinding/FragmentCreateCardBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/FragmentCreateCardBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/FragmentCreateCardBinding;
    .locals 2

    const v0, 0x7f0d00bf

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/warefly/checkscan/databinding/FragmentCreateCardBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/FragmentCreateCardBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/databinding/FragmentCreateCardBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentCreateCardBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method
