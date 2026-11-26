.class public final Lcom/warefly/checkscan/auth/databinding/FragmentPhoneSignUpBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final barrierInviteCode:Landroidx/constraintlayout/widget/Barrier;

.field public final btnBack:Landroid/widget/ImageView;

.field public final btnNext:Landroid/widget/TextView;

.field public final btnPersonalDataPolicy:Landroid/widget/TextView;

.field public final btnShowInviteCode:Landroid/widget/TextView;

.field public final btnSupport:Landroid/widget/TextView;

.field public final btnSupportBottom:Landroid/widget/TextView;

.field public final etInviteCode:Lcom/google/android/material/textfield/TextInputEditText;

.field public final etPhone:Lcom/google/android/material/textfield/TextInputEditText;

.field public final groupInviteCode:Landroidx/constraintlayout/widget/Group;

.field public final ivLogo:Landroid/widget/ImageView;

.field public final nestedScrolledView:Landroidx/core/widget/NestedScrollView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final rvAgreements:Landroidx/recyclerview/widget/RecyclerView;

.field public final tilInviteCode:Lcom/google/android/material/textfield/TextInputLayout;

.field public final tilPhone:Lcom/google/android/material/textfield/TextInputLayout;

.field public final tvInviteCodeTitle:Landroid/widget/TextView;

.field public final tvPhoneTitle:Landroid/widget/TextView;

.field public final tvTitle:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/Barrier;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Landroidx/constraintlayout/widget/Group;Landroid/widget/ImageView;Landroidx/core/widget/NestedScrollView;Landroidx/recyclerview/widget/RecyclerView;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/auth/databinding/FragmentPhoneSignUpBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lcom/warefly/checkscan/auth/databinding/FragmentPhoneSignUpBinding;->barrierInviteCode:Landroidx/constraintlayout/widget/Barrier;

    iput-object p3, p0, Lcom/warefly/checkscan/auth/databinding/FragmentPhoneSignUpBinding;->btnBack:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/warefly/checkscan/auth/databinding/FragmentPhoneSignUpBinding;->btnNext:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/warefly/checkscan/auth/databinding/FragmentPhoneSignUpBinding;->btnPersonalDataPolicy:Landroid/widget/TextView;

    iput-object p6, p0, Lcom/warefly/checkscan/auth/databinding/FragmentPhoneSignUpBinding;->btnShowInviteCode:Landroid/widget/TextView;

    iput-object p7, p0, Lcom/warefly/checkscan/auth/databinding/FragmentPhoneSignUpBinding;->btnSupport:Landroid/widget/TextView;

    iput-object p8, p0, Lcom/warefly/checkscan/auth/databinding/FragmentPhoneSignUpBinding;->btnSupportBottom:Landroid/widget/TextView;

    iput-object p9, p0, Lcom/warefly/checkscan/auth/databinding/FragmentPhoneSignUpBinding;->etInviteCode:Lcom/google/android/material/textfield/TextInputEditText;

    iput-object p10, p0, Lcom/warefly/checkscan/auth/databinding/FragmentPhoneSignUpBinding;->etPhone:Lcom/google/android/material/textfield/TextInputEditText;

    iput-object p11, p0, Lcom/warefly/checkscan/auth/databinding/FragmentPhoneSignUpBinding;->groupInviteCode:Landroidx/constraintlayout/widget/Group;

    iput-object p12, p0, Lcom/warefly/checkscan/auth/databinding/FragmentPhoneSignUpBinding;->ivLogo:Landroid/widget/ImageView;

    iput-object p13, p0, Lcom/warefly/checkscan/auth/databinding/FragmentPhoneSignUpBinding;->nestedScrolledView:Landroidx/core/widget/NestedScrollView;

    iput-object p14, p0, Lcom/warefly/checkscan/auth/databinding/FragmentPhoneSignUpBinding;->rvAgreements:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p15, p0, Lcom/warefly/checkscan/auth/databinding/FragmentPhoneSignUpBinding;->tilInviteCode:Lcom/google/android/material/textfield/TextInputLayout;

    move-object/from16 p1, p16

    iput-object p1, p0, Lcom/warefly/checkscan/auth/databinding/FragmentPhoneSignUpBinding;->tilPhone:Lcom/google/android/material/textfield/TextInputLayout;

    move-object/from16 p1, p17

    iput-object p1, p0, Lcom/warefly/checkscan/auth/databinding/FragmentPhoneSignUpBinding;->tvInviteCodeTitle:Landroid/widget/TextView;

    move-object/from16 p1, p18

    iput-object p1, p0, Lcom/warefly/checkscan/auth/databinding/FragmentPhoneSignUpBinding;->tvPhoneTitle:Landroid/widget/TextView;

    move-object/from16 p1, p19

    iput-object p1, p0, Lcom/warefly/checkscan/auth/databinding/FragmentPhoneSignUpBinding;->tvTitle:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/warefly/checkscan/auth/databinding/FragmentPhoneSignUpBinding;
    .locals 23

    move-object/from16 v0, p0

    const v1, 0x7f0a00d5

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroidx/constraintlayout/widget/Barrier;

    if-eqz v5, :cond_0

    const v1, 0x7f0a0107

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    const v1, 0x7f0a017b

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    const v1, 0x7f0a0183

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    const v1, 0x7f0a01a7

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_0

    const v1, 0x7f0a01af

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    const v1, 0x7f0a01b0

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_0

    const v1, 0x7f0a027b

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v12, :cond_0

    const v1, 0x7f0a0281

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/google/android/material/textfield/TextInputEditText;

    if-eqz v13, :cond_0

    const v1, 0x7f0a02d0

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroidx/constraintlayout/widget/Group;

    if-eqz v14, :cond_0

    const v1, 0x7f0a0394

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/ImageView;

    if-eqz v15, :cond_0

    const v1, 0x7f0a0512

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroidx/core/widget/NestedScrollView;

    if-eqz v16, :cond_0

    const v1, 0x7f0a05ac

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v17, :cond_0

    const v1, 0x7f0a0695

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v18, :cond_0

    const v1, 0x7f0a0699

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v19, :cond_0

    const v1, 0x7f0a0766

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/TextView;

    if-eqz v20, :cond_0

    const v1, 0x7f0a07a7

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Landroid/widget/TextView;

    if-eqz v21, :cond_0

    const v1, 0x7f0a0814

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v22, v2

    check-cast v22, Landroid/widget/TextView;

    if-eqz v22, :cond_0

    new-instance v3, Lcom/warefly/checkscan/auth/databinding/FragmentPhoneSignUpBinding;

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct/range {v3 .. v22}, Lcom/warefly/checkscan/auth/databinding/FragmentPhoneSignUpBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/Barrier;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/google/android/material/textfield/TextInputEditText;Lcom/google/android/material/textfield/TextInputEditText;Landroidx/constraintlayout/widget/Group;Landroid/widget/ImageView;Landroidx/core/widget/NestedScrollView;Landroidx/recyclerview/widget/RecyclerView;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/warefly/checkscan/auth/databinding/FragmentPhoneSignUpBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-static {p0, v0, v1}, Lcom/warefly/checkscan/auth/databinding/FragmentPhoneSignUpBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/auth/databinding/FragmentPhoneSignUpBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/auth/databinding/FragmentPhoneSignUpBinding;
    .locals 2

    const v0, 0x7f0d00de

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/warefly/checkscan/auth/databinding/FragmentPhoneSignUpBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/auth/databinding/FragmentPhoneSignUpBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/auth/databinding/FragmentPhoneSignUpBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/warefly/checkscan/auth/databinding/FragmentPhoneSignUpBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method
