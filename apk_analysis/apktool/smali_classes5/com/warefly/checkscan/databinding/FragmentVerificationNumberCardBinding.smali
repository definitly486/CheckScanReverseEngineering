.class public final Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnRepeatSendCode:Landroid/widget/TextView;

.field public final btnRequestCall:Landroid/widget/TextView;

.field public final etCodeFiveCall:Landroid/widget/EditText;

.field public final etCodeFourCall:Landroid/widget/EditText;

.field public final etCodeOneCall:Landroid/widget/EditText;

.field public final etCodeSixCall:Landroid/widget/EditText;

.field public final etCodeThreeCall:Landroid/widget/EditText;

.field public final etCodeTwoCall:Landroid/widget/EditText;

.field public final layoutCodes:Landroid/widget/LinearLayout;

.field public final layoutError:Lcom/warefly/checkscan/databinding/ItemErrorFullScreenBinding;

.field public final pbWaitSendingCode:Landroid/widget/ProgressBar;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final toolbar:Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarBackIconBinding;

.field public final tvDescriptionCall:Landroid/widget/TextView;

.field public final tvGetNewCode:Landroid/widget/TextView;

.field public final tvInputNumbers:Landroid/widget/TextView;

.field public final tvPhoneNumber:Landroid/widget/TextView;

.field public final tvSendCodeNumber:Landroid/widget/TextView;

.field public final tvTitle:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/LinearLayout;Lcom/warefly/checkscan/databinding/ItemErrorFullScreenBinding;Landroid/widget/ProgressBar;Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarBackIconBinding;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;->btnRepeatSendCode:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;->btnRequestCall:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;->etCodeFiveCall:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;->etCodeFourCall:Landroid/widget/EditText;

    iput-object p6, p0, Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;->etCodeOneCall:Landroid/widget/EditText;

    iput-object p7, p0, Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;->etCodeSixCall:Landroid/widget/EditText;

    iput-object p8, p0, Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;->etCodeThreeCall:Landroid/widget/EditText;

    iput-object p9, p0, Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;->etCodeTwoCall:Landroid/widget/EditText;

    iput-object p10, p0, Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;->layoutCodes:Landroid/widget/LinearLayout;

    iput-object p11, p0, Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;->layoutError:Lcom/warefly/checkscan/databinding/ItemErrorFullScreenBinding;

    iput-object p12, p0, Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;->pbWaitSendingCode:Landroid/widget/ProgressBar;

    iput-object p13, p0, Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;->toolbar:Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarBackIconBinding;

    iput-object p14, p0, Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;->tvDescriptionCall:Landroid/widget/TextView;

    iput-object p15, p0, Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;->tvGetNewCode:Landroid/widget/TextView;

    move-object/from16 p1, p16

    iput-object p1, p0, Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;->tvInputNumbers:Landroid/widget/TextView;

    move-object/from16 p1, p17

    iput-object p1, p0, Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;->tvPhoneNumber:Landroid/widget/TextView;

    move-object/from16 p1, p18

    iput-object p1, p0, Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;->tvSendCodeNumber:Landroid/widget/TextView;

    move-object/from16 p1, p19

    iput-object p1, p0, Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;->tvTitle:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;
    .locals 23

    move-object/from16 v0, p0

    const v1, 0x7f0a018f

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    const v1, 0x7f0a0191

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    const v1, 0x7f0a026a

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/EditText;

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

    const v1, 0x7f0a026d

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/EditText;

    if-eqz v10, :cond_0

    const v1, 0x7f0a026e

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/EditText;

    if-eqz v11, :cond_0

    const v1, 0x7f0a026f

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/EditText;

    if-eqz v12, :cond_0

    const v1, 0x7f0a03f3

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/LinearLayout;

    if-eqz v13, :cond_0

    const v1, 0x7f0a03f9

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/warefly/checkscan/databinding/ItemErrorFullScreenBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/ItemErrorFullScreenBinding;

    move-result-object v14

    const v1, 0x7f0a055a

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/ProgressBar;

    if-eqz v15, :cond_0

    const v1, 0x7f0a06a6

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarBackIconBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarBackIconBinding;

    move-result-object v16

    const v1, 0x7f0a071a

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Landroid/widget/TextView;

    if-eqz v17, :cond_0

    const v1, 0x7f0a0749

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/TextView;

    if-eqz v18, :cond_0

    const v1, 0x7f0a0761

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/TextView;

    if-eqz v19, :cond_0

    const v1, 0x7f0a07a6

    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, Landroid/widget/TextView;

    if-eqz v20, :cond_0

    const v1, 0x7f0a07da

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

    new-instance v3, Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;

    move-object v4, v0

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct/range {v3 .. v22}, Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/LinearLayout;Lcom/warefly/checkscan/databinding/ItemErrorFullScreenBinding;Landroid/widget/ProgressBar;Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarBackIconBinding;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

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

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-static {p0, v0, v1}, Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;
    .locals 2

    const v0, 0x7f0d0102

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;->bind(Landroid/view/View;)Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method
