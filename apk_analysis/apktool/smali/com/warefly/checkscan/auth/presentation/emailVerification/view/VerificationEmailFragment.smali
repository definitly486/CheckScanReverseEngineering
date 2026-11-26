.class public final Lcom/warefly/checkscan/auth/presentation/emailVerification/view/VerificationEmailFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/auth/presentation/emailVerification/view/VerificationEmailView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/auth/presentation/emailVerification/view/VerificationEmailFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment<",
        "Lcom/warefly/checkscan/auth/databinding/FragmentEmailVerificationBinding;",
        ">;",
        "Lcom/warefly/checkscan/auth/presentation/emailVerification/view/VerificationEmailView;"
    }
.end annotation


# static fields
.field public static final k:Lcom/warefly/checkscan/auth/presentation/emailVerification/view/VerificationEmailFragment$a;

.field public static final synthetic l:[Lze4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lze4<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final f:I

.field public final g:Lol4;

.field public h:Lg06;

.field public i:Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

.field public j:Lcom/warefly/checkscan/auth/presentation/addEmail/dialogs/AddEmailSuccessBottomSheet;

.field public presenter:Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/auth/presentation/emailVerification/view/VerificationEmailFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/auth/databinding/FragmentEmailVerificationBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/auth/presentation/emailVerification/view/VerificationEmailFragment;->l:[Lze4;

    new-instance v0, Lcom/warefly/checkscan/auth/presentation/emailVerification/view/VerificationEmailFragment$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/warefly/checkscan/auth/presentation/emailVerification/view/VerificationEmailFragment;->k:Lcom/warefly/checkscan/auth/presentation/emailVerification/view/VerificationEmailFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;-><init>()V

    const v0, 0x7f0d00c3

    iput v0, p0, Lcom/warefly/checkscan/auth/presentation/emailVerification/view/VerificationEmailFragment;->f:I

    new-instance v0, Lol4;

    const-class v1, Lcom/warefly/checkscan/auth/databinding/FragmentEmailVerificationBinding;

    invoke-direct {v0, v1}, Lol4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/auth/presentation/emailVerification/view/VerificationEmailFragment;->g:Lol4;

    return-void
.end method


# virtual methods
.method public final clearOtp()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/auth/presentation/emailVerification/view/VerificationEmailFragment;->h:Lg06;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lg06;->a()V

    :cond_0
    return-void
.end method

.method public final dismissLoadingDialog()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/auth/presentation/emailVerification/view/VerificationEmailFragment;->i:Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method public final i()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/auth/presentation/emailVerification/view/VerificationEmailFragment;->f:I

    return p0
.end method

.method public final k()Z
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/auth/presentation/emailVerification/view/VerificationEmailFragment;->o()Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter;->onBackClicked()V

    const/4 p0, 0x0

    return p0
.end method

.method public final n()Lcom/warefly/checkscan/auth/databinding/FragmentEmailVerificationBinding;
    .locals 2

    sget-object v0, Lcom/warefly/checkscan/auth/presentation/emailVerification/view/VerificationEmailFragment;->l:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/warefly/checkscan/auth/presentation/emailVerification/view/VerificationEmailFragment;->g:Lol4;

    invoke-virtual {v1, p0, v0}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/auth/databinding/FragmentEmailVerificationBinding;

    return-object p0
.end method

.method public final o()Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/auth/presentation/emailVerification/view/VerificationEmailFragment;->presenter:Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onDestroyView()V
    .locals 1

    invoke-super {p0}, Lfh5;->onDestroyView()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/warefly/checkscan/auth/presentation/emailVerification/view/VerificationEmailFragment;->h:Lg06;

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/auth/presentation/emailVerification/view/VerificationEmailFragment;->n()Lcom/warefly/checkscan/auth/databinding/FragmentEmailVerificationBinding;

    move-result-object p1

    iget-object p2, p1, Lcom/warefly/checkscan/auth/databinding/FragmentEmailVerificationBinding;->etCodeOneCall:Landroid/widget/EditText;

    iget-object v0, p1, Lcom/warefly/checkscan/auth/databinding/FragmentEmailVerificationBinding;->etCodeTwoCall:Landroid/widget/EditText;

    iget-object v1, p1, Lcom/warefly/checkscan/auth/databinding/FragmentEmailVerificationBinding;->etCodeThreeCall:Landroid/widget/EditText;

    iget-object p1, p1, Lcom/warefly/checkscan/auth/databinding/FragmentEmailVerificationBinding;->etCodeFourCall:Landroid/widget/EditText;

    filled-new-array {p2, v0, v1, p1}, [Landroid/widget/EditText;

    move-result-object p1

    invoke-static {p1}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/warefly/checkscan/auth/presentation/emailVerification/view/VerificationEmailFragment;->h:Lg06;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lg06;->a()V

    :cond_0
    new-instance p2, Lg06;

    invoke-virtual {p0}, Lcom/warefly/checkscan/auth/presentation/emailVerification/view/VerificationEmailFragment;->o()Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lg06;-><init>(Lg06$a;Ljava/util/List;)V

    iput-object p2, p0, Lcom/warefly/checkscan/auth/presentation/emailVerification/view/VerificationEmailFragment;->h:Lg06;

    invoke-virtual {p2}, Lg06;->b()V

    iget-object p1, p0, Lcom/warefly/checkscan/auth/presentation/emailVerification/view/VerificationEmailFragment;->h:Lg06;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lg06;->c()V

    :cond_1
    invoke-virtual {p0}, Lcom/warefly/checkscan/auth/presentation/emailVerification/view/VerificationEmailFragment;->n()Lcom/warefly/checkscan/auth/databinding/FragmentEmailVerificationBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/auth/databinding/FragmentEmailVerificationBinding;->etCodeOneCall:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {p0}, Lcom/warefly/checkscan/auth/presentation/emailVerification/view/VerificationEmailFragment;->n()Lcom/warefly/checkscan/auth/databinding/FragmentEmailVerificationBinding;

    move-result-object p1

    iget-object p2, p1, Lcom/warefly/checkscan/auth/databinding/FragmentEmailVerificationBinding;->btnBack:Landroid/widget/ImageView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lqh6;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lqh6;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p1, Lcom/warefly/checkscan/auth/databinding/FragmentEmailVerificationBinding;->btnSendCodeAgain:Landroid/widget/TextView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Loc9;

    invoke-direct {v1, p0}, Loc9;-><init>(Lcom/warefly/checkscan/auth/presentation/emailVerification/view/VerificationEmailFragment;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Lcom/warefly/checkscan/auth/databinding/FragmentEmailVerificationBinding;->btnVerify:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Llb7;

    new-instance v0, Li30;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Li30;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p2, v0}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final providePresenter()Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter;
    .locals 9

    new-instance v0, Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "EMAIL_KEY"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->j()Lba8;

    move-result-object v3

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v4

    const-class v5, Luf3;

    invoke-static {v5, v4, v3, v2}, Ln2;->c(Ljava/lang/Class;Lze7;Lba8;Li36;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Luf3;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x21

    const-string v7, "EMAIL_VERIFICATION_REASON_KEY"

    if-lt v5, v6, :cond_0

    const-class v5, Ljw2;

    invoke-virtual {v4, v7, v5}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v4

    goto :goto_0

    :cond_0
    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    instance-of v5, v4, Ljw2;

    if-nez v5, :cond_1

    move-object v4, v2

    :cond_1
    check-cast v4, Ljw2;

    :goto_0
    check-cast v4, Ljw2;

    if-eqz v4, :cond_2

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v5

    const-class v6, Lgx7;

    invoke-static {v6, v5, v2, v2}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgx7;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v6

    const-class v7, Lcx7;

    invoke-static {v7, v6, v2, v2}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcx7;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v7

    const-class v8, Law1;

    invoke-static {v8, v7, v2, v2}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Law1;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object p0

    const-class v8, Lz8;

    invoke-static {v8, p0, v2, v2}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lz8;

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/warefly/checkscan/auth/presentation/emailVerification/presenter/VerificationEmailPresenter;-><init>(Ljava/lang/String;Luf3;Ljw2;Lgx7;Lcx7;Law1;Lz8;)V

    return-object v0

    :cond_2
    const-string p0, "Email reason can not be null"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v2

    :cond_3
    const-string p0, "Phone can not be null"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v2
.end method

.method public final setEmailTyped(Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x7f14069f

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-static {v0, p1, v1, v1, v2}, Lta8;->K(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v1

    invoke-virtual {p0}, Lcom/warefly/checkscan/auth/presentation/emailVerification/view/VerificationEmailFragment;->n()Lcom/warefly/checkscan/auth/databinding/FragmentEmailVerificationBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/warefly/checkscan/auth/databinding/FragmentEmailVerificationBinding;->tvSubtitle:Landroid/widget/TextView;

    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v4, 0x1

    invoke-direct {v0, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v4, 0x21

    invoke-virtual {v3, v0, v1, p1, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    const v5, 0x7f0600be

    invoke-static {p0, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-direct {v0, p0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3, v0, v1, p1, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTimer(J)V
    .locals 1

    invoke-virtual {p0}, Lcom/warefly/checkscan/auth/presentation/emailVerification/view/VerificationEmailFragment;->n()Lcom/warefly/checkscan/auth/databinding/FragmentEmailVerificationBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/auth/databinding/FragmentEmailVerificationBinding;->tvTimer:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lc84;->h(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const p2, 0x7f1406a7

    invoke-virtual {p0, p2, p1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final showEmailAddedBottomSheet()V
    .locals 2

    iget-object v0, p0, Lcom/warefly/checkscan/auth/presentation/emailVerification/view/VerificationEmailFragment;->j:Lcom/warefly/checkscan/auth/presentation/addEmail/dialogs/AddEmailSuccessBottomSheet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/warefly/checkscan/auth/presentation/addEmail/dialogs/AddEmailSuccessBottomSheet;

    invoke-direct {v1, v0}, Lcom/warefly/checkscan/auth/presentation/addEmail/dialogs/AddEmailSuccessBottomSheet;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/warefly/checkscan/auth/presentation/emailVerification/view/VerificationEmailFragment;->j:Lcom/warefly/checkscan/auth/presentation/addEmail/dialogs/AddEmailSuccessBottomSheet;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method public final showEmailCodeSendError()V
    .locals 2

    invoke-virtual {p0}, Lcom/warefly/checkscan/auth/presentation/emailVerification/view/VerificationEmailFragment;->n()Lcom/warefly/checkscan/auth/databinding/FragmentEmailVerificationBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/auth/databinding/FragmentEmailVerificationBinding;->tvOtpError:Landroid/widget/TextView;

    const v1, 0x7f140026

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/auth/presentation/emailVerification/view/VerificationEmailFragment;->n()Lcom/warefly/checkscan/auth/databinding/FragmentEmailVerificationBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/auth/databinding/FragmentEmailVerificationBinding;->tvOtpError:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/warefly/checkscan/auth/presentation/emailVerification/view/VerificationEmailFragment;->h:Lg06;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lg06;->d(Z)V

    :cond_0
    return-void
.end method

.method public final showEmailPlacedError()V
    .locals 2

    invoke-virtual {p0}, Lcom/warefly/checkscan/auth/presentation/emailVerification/view/VerificationEmailFragment;->n()Lcom/warefly/checkscan/auth/databinding/FragmentEmailVerificationBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/auth/databinding/FragmentEmailVerificationBinding;->tvOtpError:Landroid/widget/TextView;

    const v1, 0x7f140022

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/auth/presentation/emailVerification/view/VerificationEmailFragment;->n()Lcom/warefly/checkscan/auth/databinding/FragmentEmailVerificationBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/auth/databinding/FragmentEmailVerificationBinding;->tvOtpError:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/warefly/checkscan/auth/presentation/emailVerification/view/VerificationEmailFragment;->h:Lg06;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lg06;->d(Z)V

    :cond_0
    return-void
.end method

.method public final showLoadingDialog()V
    .locals 1

    iget-object v0, p0, Lcom/warefly/checkscan/auth/presentation/emailVerification/view/VerificationEmailFragment;->i:Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    sget-object v0, Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;->d:Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog$a;

    invoke-static {v0}, Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog$a;->b(Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog$a;)Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->m(Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog;)V

    iput-object v0, p0, Lcom/warefly/checkscan/auth/presentation/emailVerification/view/VerificationEmailFragment;->i:Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

    return-void
.end method

.method public final showOtpError(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/warefly/checkscan/auth/presentation/emailVerification/view/VerificationEmailFragment;->n()Lcom/warefly/checkscan/auth/databinding/FragmentEmailVerificationBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/auth/databinding/FragmentEmailVerificationBinding;->tvOtpError:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/warefly/checkscan/auth/presentation/emailVerification/view/VerificationEmailFragment;->h:Lg06;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lg06;->d(Z)V

    :cond_1
    return-void
.end method

.method public final showSendAgainButton(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/auth/presentation/emailVerification/view/VerificationEmailFragment;->n()Lcom/warefly/checkscan/auth/databinding/FragmentEmailVerificationBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/auth/databinding/FragmentEmailVerificationBinding;->btnSendCodeAgain:Landroid/widget/TextView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final showTimer(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/auth/presentation/emailVerification/view/VerificationEmailFragment;->n()Lcom/warefly/checkscan/auth/databinding/FragmentEmailVerificationBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/auth/databinding/FragmentEmailVerificationBinding;->tvTimer:Landroid/widget/TextView;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final showUnknownError()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const v0, 0x7f14008b

    invoke-static {v0, p0}, Loz1;->i(ILandroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final vibrateError()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_0

    const-wide/16 v0, 0x32

    invoke-static {p0, v0, v1}, Lr7;->a(Landroid/app/Activity;J)V

    :cond_0
    return-void
.end method
