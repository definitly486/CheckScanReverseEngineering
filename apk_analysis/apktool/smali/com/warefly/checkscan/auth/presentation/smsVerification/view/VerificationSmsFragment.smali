.class public final Lcom/warefly/checkscan/auth/presentation/smsVerification/view/VerificationSmsFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/auth/presentation/smsVerification/view/VerificationSmsView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/auth/presentation/smsVerification/view/VerificationSmsFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment<",
        "Lcom/warefly/checkscan/auth/databinding/FragmentOtpVerificationBinding;",
        ">;",
        "Lcom/warefly/checkscan/auth/presentation/smsVerification/view/VerificationSmsView;"
    }
.end annotation


# static fields
.field public static final k:Lcom/warefly/checkscan/auth/presentation/smsVerification/view/VerificationSmsFragment$a;

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

.field public h:Lcom/warefly/checkscan/auth/services/sms/SmsReceiverImpl;

.field public i:Lg06;

.field public j:Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

.field public presenter:Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/auth/presentation/smsVerification/view/VerificationSmsFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/auth/databinding/FragmentOtpVerificationBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/auth/presentation/smsVerification/view/VerificationSmsFragment;->l:[Lze4;

    new-instance v0, Lcom/warefly/checkscan/auth/presentation/smsVerification/view/VerificationSmsFragment$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/warefly/checkscan/auth/presentation/smsVerification/view/VerificationSmsFragment;->k:Lcom/warefly/checkscan/auth/presentation/smsVerification/view/VerificationSmsFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;-><init>()V

    const v0, 0x7f0d00d7

    iput v0, p0, Lcom/warefly/checkscan/auth/presentation/smsVerification/view/VerificationSmsFragment;->f:I

    new-instance v0, Lol4;

    const-class v1, Lcom/warefly/checkscan/auth/databinding/FragmentOtpVerificationBinding;

    invoke-direct {v0, v1}, Lol4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/auth/presentation/smsVerification/view/VerificationSmsFragment;->g:Lol4;

    return-void
.end method


# virtual methods
.method public final clearOtp()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/auth/presentation/smsVerification/view/VerificationSmsFragment;->i:Lg06;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lg06;->a()V

    :cond_0
    return-void
.end method

.method public final dismissLoadingDialog()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/auth/presentation/smsVerification/view/VerificationSmsFragment;->j:Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method public final i()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/auth/presentation/smsVerification/view/VerificationSmsFragment;->f:I

    return p0
.end method

.method public final k()Z
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/auth/presentation/smsVerification/view/VerificationSmsFragment;->o()Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter;->onBackClicked()V

    const/4 p0, 0x0

    return p0
.end method

.method public final n()Lcom/warefly/checkscan/auth/databinding/FragmentOtpVerificationBinding;
    .locals 2

    sget-object v0, Lcom/warefly/checkscan/auth/presentation/smsVerification/view/VerificationSmsFragment;->l:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/warefly/checkscan/auth/presentation/smsVerification/view/VerificationSmsFragment;->g:Lol4;

    invoke-virtual {v1, p0, v0}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/auth/databinding/FragmentOtpVerificationBinding;

    return-object p0
.end method

.method public final o()Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/auth/presentation/smsVerification/view/VerificationSmsFragment;->presenter:Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lfh5;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Loc3;

    invoke-direct {p1}, Loc3;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/google/android/gms/auth/api/phone/SmsRetriever;->getClient(Landroid/app/Activity;)Lcom/google/android/gms/auth/api/phone/SmsRetrieverClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/phone/SmsRetrieverClient;->startSmsRetriever()Lcom/google/android/gms/tasks/Task;

    new-instance p1, Lcom/warefly/checkscan/auth/services/sms/SmsReceiverImpl;

    invoke-direct {p1}, Lcom/warefly/checkscan/auth/services/sms/SmsReceiverImpl;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/auth/presentation/smsVerification/view/VerificationSmsFragment;->h:Lcom/warefly/checkscan/auth/services/sms/SmsReceiverImpl;

    new-instance v0, Lud0;

    invoke-direct {v0, p0}, Lud0;-><init>(Ljava/lang/Object;)V

    iput-object v0, p1, Lcom/warefly/checkscan/auth/services/sms/SmsReceiverImpl;->b:Lh06;

    return-void
.end method

.method public final onDestroyView()V
    .locals 1

    invoke-super {p0}, Lfh5;->onDestroyView()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/warefly/checkscan/auth/presentation/smsVerification/view/VerificationSmsFragment;->i:Lg06;

    return-void
.end method

.method public final onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/warefly/checkscan/auth/presentation/smsVerification/view/VerificationSmsFragment;->h:Lcom/warefly/checkscan/auth/services/sms/SmsReceiverImpl;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 3

    invoke-super {p0}, Lfh5;->onResume()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/warefly/checkscan/auth/presentation/smsVerification/view/VerificationSmsFragment;->h:Lcom/warefly/checkscan/auth/services/sms/SmsReceiverImpl;

    sget-object v1, Loc3;->a:Landroid/content/IntentFilter;

    const/4 v2, 0x2

    invoke-static {v0, p0, v1, v2}, Landroidx/core/content/ContextCompat;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/auth/presentation/smsVerification/view/VerificationSmsFragment;->n()Lcom/warefly/checkscan/auth/databinding/FragmentOtpVerificationBinding;

    move-result-object p1

    iget-object p2, p1, Lcom/warefly/checkscan/auth/databinding/FragmentOtpVerificationBinding;->etCodeOneCall:Landroid/widget/EditText;

    iget-object v0, p1, Lcom/warefly/checkscan/auth/databinding/FragmentOtpVerificationBinding;->etCodeTwoCall:Landroid/widget/EditText;

    iget-object v1, p1, Lcom/warefly/checkscan/auth/databinding/FragmentOtpVerificationBinding;->etCodeThreeCall:Landroid/widget/EditText;

    iget-object p1, p1, Lcom/warefly/checkscan/auth/databinding/FragmentOtpVerificationBinding;->etCodeFourCall:Landroid/widget/EditText;

    filled-new-array {p2, v0, v1, p1}, [Landroid/widget/EditText;

    move-result-object p1

    invoke-static {p1}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/warefly/checkscan/auth/presentation/smsVerification/view/VerificationSmsFragment;->i:Lg06;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lg06;->a()V

    :cond_0
    new-instance p2, Lg06;

    invoke-virtual {p0}, Lcom/warefly/checkscan/auth/presentation/smsVerification/view/VerificationSmsFragment;->o()Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lg06;-><init>(Lg06$a;Ljava/util/List;)V

    iput-object p2, p0, Lcom/warefly/checkscan/auth/presentation/smsVerification/view/VerificationSmsFragment;->i:Lg06;

    invoke-virtual {p2}, Lg06;->b()V

    iget-object p1, p0, Lcom/warefly/checkscan/auth/presentation/smsVerification/view/VerificationSmsFragment;->i:Lg06;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lg06;->c()V

    :cond_1
    invoke-virtual {p0}, Lcom/warefly/checkscan/auth/presentation/smsVerification/view/VerificationSmsFragment;->n()Lcom/warefly/checkscan/auth/databinding/FragmentOtpVerificationBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/auth/databinding/FragmentOtpVerificationBinding;->etCodeOneCall:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {p0}, Lcom/warefly/checkscan/auth/presentation/smsVerification/view/VerificationSmsFragment;->n()Lcom/warefly/checkscan/auth/databinding/FragmentOtpVerificationBinding;

    move-result-object p1

    iget-object p2, p1, Lcom/warefly/checkscan/auth/databinding/FragmentOtpVerificationBinding;->btnBack:Landroid/widget/ImageView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lrj1;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lrj1;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p1, Lcom/warefly/checkscan/auth/databinding/FragmentOtpVerificationBinding;->btnSendCodeAgain:Landroid/widget/TextView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lw76;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lw76;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Lcom/warefly/checkscan/auth/databinding/FragmentOtpVerificationBinding;->btnTryCallVerification:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Llb7;

    new-instance v0, Lo42;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lo42;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p2, v0}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final providePresenter()Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter;
    .locals 8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "PHONE_KEY"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->j()Lba8;

    move-result-object v1

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v2

    const-class v4, Luf3;

    invoke-static {v4, v2, v1, v0}, Ln2;->c(Ljava/lang/Class;Lze7;Lba8;Li36;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Luf3;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v1

    const-class v2, Lgx7;

    invoke-static {v2, v1, v0, v0}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lgx7;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v1

    const-class v2, Lmx7;

    invoke-static {v2, v1, v0, v0}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lmx7;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object p0

    const-class v1, Lqe;

    invoke-static {v1, p0, v0, v0}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Lqe;

    new-instance v2, Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter;

    invoke-direct/range {v2 .. v7}, Lcom/warefly/checkscan/auth/presentation/smsVerification/presenter/VerificationSmsPresenter;-><init>(Ljava/lang/String;Luf3;Lmx7;Lgx7;Lqe;)V

    return-object v2

    :cond_0
    const-string p0, "Phone can not be null"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v0
.end method

.method public final setCodeFromSms(Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/auth/presentation/smsVerification/view/VerificationSmsFragment;->i:Lg06;

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object p0, p0, Lg06;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_3

    move-object v0, p0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-ltz v1, :cond_2

    check-cast v2, Landroid/widget/EditText;

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    invoke-static {}, Lu96;->o()V

    const/4 p0, 0x0

    throw p0

    :cond_3
    return-void
.end method

.method public final setPhoneTyped(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/auth/presentation/smsVerification/view/VerificationSmsFragment;->n()Lcom/warefly/checkscan/auth/databinding/FragmentOtpVerificationBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/auth/databinding/FragmentOtpVerificationBinding;->tvPhoneTyped:Landroid/widget/TextView;

    const v1, 0x7f1406a5

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTimer(J)V
    .locals 1

    invoke-virtual {p0}, Lcom/warefly/checkscan/auth/presentation/smsVerification/view/VerificationSmsFragment;->n()Lcom/warefly/checkscan/auth/databinding/FragmentOtpVerificationBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/auth/databinding/FragmentOtpVerificationBinding;->tvTimer:Landroid/widget/TextView;

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

.method public final showLoadingDialog()V
    .locals 1

    iget-object v0, p0, Lcom/warefly/checkscan/auth/presentation/smsVerification/view/VerificationSmsFragment;->j:Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    sget-object v0, Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;->d:Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog$a;

    invoke-static {v0}, Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog$a;->b(Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog$a;)Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->m(Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog;)V

    iput-object v0, p0, Lcom/warefly/checkscan/auth/presentation/smsVerification/view/VerificationSmsFragment;->j:Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

    return-void
.end method

.method public final showOtpError(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/warefly/checkscan/auth/presentation/smsVerification/view/VerificationSmsFragment;->n()Lcom/warefly/checkscan/auth/databinding/FragmentOtpVerificationBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/auth/databinding/FragmentOtpVerificationBinding;->tvOtpError:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/warefly/checkscan/auth/presentation/smsVerification/view/VerificationSmsFragment;->i:Lg06;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lg06;->d(Z)V

    :cond_1
    return-void
.end method

.method public final showSendAgainButton(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/auth/presentation/smsVerification/view/VerificationSmsFragment;->n()Lcom/warefly/checkscan/auth/databinding/FragmentOtpVerificationBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/auth/databinding/FragmentOtpVerificationBinding;->btnSendCodeAgain:Landroid/widget/TextView;

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

    invoke-virtual {p0}, Lcom/warefly/checkscan/auth/presentation/smsVerification/view/VerificationSmsFragment;->n()Lcom/warefly/checkscan/auth/databinding/FragmentOtpVerificationBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/auth/databinding/FragmentOtpVerificationBinding;->tvTimer:Landroid/widget/TextView;

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

.method public final showTryPhoneButton(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/auth/presentation/smsVerification/view/VerificationSmsFragment;->n()Lcom/warefly/checkscan/auth/databinding/FragmentOtpVerificationBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/auth/databinding/FragmentOtpVerificationBinding;->btnTryCallVerification:Landroid/widget/TextView;

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
