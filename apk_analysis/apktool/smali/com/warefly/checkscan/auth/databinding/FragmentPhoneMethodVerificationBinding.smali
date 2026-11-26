.class public final Lcom/warefly/checkscan/auth/databinding/FragmentPhoneMethodVerificationBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnBack:Landroid/widget/ImageView;

.field public final btnCallAgain:Landroid/widget/TextView;

.field public final btnChangeVerification:Landroid/widget/TextView;

.field public final etCodeFourCall:Landroid/widget/EditText;

.field public final etCodeOneCall:Landroid/widget/EditText;

.field public final etCodeThreeCall:Landroid/widget/EditText;

.field public final etCodeTwoCall:Landroid/widget/EditText;

.field public final layoutCodesPhone:Landroid/widget/LinearLayout;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final tvOtpError:Landroid/widget/TextView;

.field public final tvPhoneCall:Landroid/widget/TextView;

.field public final tvPhoneCallHint:Landroid/widget/TextView;

.field public final tvPhoneTitle:Landroid/widget/TextView;

.field public final tvTimerPhone:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/auth/databinding/FragmentPhoneMethodVerificationBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lcom/warefly/checkscan/auth/databinding/FragmentPhoneMethodVerificationBinding;->btnBack:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/warefly/checkscan/auth/databinding/FragmentPhoneMethodVerificationBinding;->btnCallAgain:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/warefly/checkscan/auth/databinding/FragmentPhoneMethodVerificationBinding;->btnChangeVerification:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/warefly/checkscan/auth/databinding/FragmentPhoneMethodVerificationBinding;->etCodeFourCall:Landroid/widget/EditText;

    iput-object p6, p0, Lcom/warefly/checkscan/auth/databinding/FragmentPhoneMethodVerificationBinding;->etCodeOneCall:Landroid/widget/EditText;

    iput-object p7, p0, Lcom/warefly/checkscan/auth/databinding/FragmentPhoneMethodVerificationBinding;->etCodeThreeCall:Landroid/widget/EditText;

    iput-object p8, p0, Lcom/warefly/checkscan/auth/databinding/FragmentPhoneMethodVerificationBinding;->etCodeTwoCall:Landroid/widget/EditText;

    iput-object p9, p0, Lcom/warefly/checkscan/auth/databinding/FragmentPhoneMethodVerificationBinding;->layoutCodesPhone:Landroid/widget/LinearLayout;

    iput-object p10, p0, Lcom/warefly/checkscan/auth/databinding/FragmentPhoneMethodVerificationBinding;->tvOtpError:Landroid/widget/TextView;

    iput-object p11, p0, Lcom/warefly/checkscan/auth/databinding/FragmentPhoneMethodVerificationBinding;->tvPhoneCall:Landroid/widget/TextView;

    iput-object p12, p0, Lcom/warefly/checkscan/auth/databinding/FragmentPhoneMethodVerificationBinding;->tvPhoneCallHint:Landroid/widget/TextView;

    iput-object p13, p0, Lcom/warefly/checkscan/auth/databinding/FragmentPhoneMethodVerificationBinding;->tvPhoneTitle:Landroid/widget/TextView;

    iput-object p14, p0, Lcom/warefly/checkscan/auth/databinding/FragmentPhoneMethodVerificationBinding;->tvTimerPhone:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/warefly/checkscan/auth/databinding/FragmentPhoneMethodVerificationBinding;
    .locals 18

    move-object/from16 v0, p0

    const v1, 0x7f0a0107

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    const v1, 0x7f0a0115

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    const v1, 0x7f0a011b

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    const v1, 0x7f0a026b

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/EditText;

    if-eqz v8, :cond_0

    const v1, 0x7f0a026c

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/EditText;

    if-eqz v9, :cond_0

    const v1, 0x7f0a026e

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/EditText;

    if-eqz v10, :cond_0

    const v1, 0x7f0a026f

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/EditText;

    if-eqz v11, :cond_0

    const v1, 0x7f0a03f4

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/LinearLayout;

    if-eqz v12, :cond_0

    const v1, 0x7f0a079f

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    const v1, 0x7f0a07a4

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_0

    const v1, 0x7f0a07a5

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/TextView;

    if-eqz v15, :cond_0

    const v1, 0x7f0a07a7

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_0

    const v1, 0x7f0a0813

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_0

    new-instance v3, Lcom/warefly/checkscan/auth/databinding/FragmentPhoneMethodVerificationBinding;

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct/range {v3 .. v17}, Lcom/warefly/checkscan/auth/databinding/FragmentPhoneMethodVerificationBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/warefly/checkscan/auth/databinding/FragmentPhoneMethodVerificationBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-static {p0, v0, v1}, Lcom/warefly/checkscan/auth/databinding/FragmentPhoneMethodVerificationBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/auth/databinding/FragmentPhoneMethodVerificationBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/auth/databinding/FragmentPhoneMethodVerificationBinding;
    .locals 2

    const v0, 0x7f0d00dd

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/warefly/checkscan/auth/databinding/FragmentPhoneMethodVerificationBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/auth/databinding/FragmentPhoneMethodVerificationBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/auth/databinding/FragmentPhoneMethodVerificationBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/warefly/checkscan/auth/databinding/FragmentPhoneMethodVerificationBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method
