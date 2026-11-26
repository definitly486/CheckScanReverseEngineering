.class public final Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment<",
        "Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;",
        ">;",
        "Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneView;"
    }
.end annotation


# static fields
.field public static final synthetic m:[Lze4;
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

.field public final h:Landroidx/navigation/NavArgsLazy;

.field public i:Lcom/warefly/checkscan/auth/services/sms/SmsReceiverImpl;

.field public j:Landroid/os/CountDownTimer;

.field public k:Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

.field public l:Lpo7;

.field public presenter:Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment;->m:[Lze4;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;-><init>()V

    const v0, 0x7f0d0102

    iput v0, p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment;->f:I

    new-instance v0, Lol4;

    const-class v1, Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;

    invoke-direct {v0, v1}, Lol4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment;->g:Lol4;

    new-instance v0, Landroidx/navigation/NavArgsLazy;

    const-class v1, Lkc9;

    invoke-static {v1}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v1

    new-instance v2, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment$h;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment$h;-><init>(Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment;)V

    invoke-direct {v0, v1, v2}, Landroidx/navigation/NavArgsLazy;-><init>(Lne4;Lll3;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment;->h:Landroidx/navigation/NavArgsLazy;

    return-void
.end method


# virtual methods
.method public final i()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment;->f:I

    return p0
.end method

.method public final k()Z
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment;->o()Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;->onBackPressed()V

    const/4 p0, 0x0

    return p0
.end method

.method public final n()Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;
    .locals 2

    sget-object v0, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment;->m:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment;->g:Lol4;

    invoke-virtual {v1, p0, v0}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;

    return-object p0
.end method

.method public final o()Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment;->presenter:Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;

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

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment;->i:Lcom/warefly/checkscan/auth/services/sms/SmsReceiverImpl;

    new-instance v0, Lm71;

    invoke-direct {v0, p0}, Lm71;-><init>(Ljava/lang/Object;)V

    iput-object v0, p1, Lcom/warefly/checkscan/auth/services/sms/SmsReceiverImpl;->b:Lh06;

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment;->l:Lpo7;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment;->j:Landroid/os/CountDownTimer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    return-void
.end method

.method public final onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment;->i:Lcom/warefly/checkscan/auth/services/sms/SmsReceiverImpl;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 3

    invoke-super {p0}, Lfh5;->onResume()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment;->i:Lcom/warefly/checkscan/auth/services/sms/SmsReceiverImpl;

    sget-object v1, Loc3;->a:Landroid/content/IntentFilter;

    const/4 v2, 0x2

    invoke-static {v0, p0, v1, v2}, Landroidx/core/content/ContextCompat;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment;->n()Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;

    move-result-object p1

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;->btnRepeatSendCode:Landroid/widget/TextView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment$a;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment$a;-><init>(Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;->toolbar:Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarBackIconBinding;

    iget-object p2, p2, Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarBackIconBinding;->btnBack:Landroid/widget/ImageView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment$b;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment$b;-><init>(Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;->toolbar:Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarBackIconBinding;

    iget-object p2, p2, Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarBackIconBinding;->tvHeader:Landroid/widget/TextView;

    const v0, 0x7f1402b0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;->btnRequestCall:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Llb7;

    new-instance v0, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment$c;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment$c;-><init>(Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment;)V

    invoke-direct {p2, v0}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final p(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/widget/EditText;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment;->l:Lpo7;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lpo7;->c:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lpo7;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ljc9;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment;->o()Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;

    move-result-object v5

    const-string v8, "sendCode(Ljava/lang/String;)V"

    const/4 v9, 0x0

    const/4 v4, 0x1

    const-class v6, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;

    const-string v7, "sendCode"

    invoke-direct/range {v3 .. v9}, Lqm3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {v0, v2, v3, p1}, Lpo7;-><init>(Landroid/content/Context;Ljc9;Ljava/util/List;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment;->l:Lpo7;

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, p1, 0x1

    if-ltz p1, :cond_4

    check-cast v2, Landroid/widget/EditText;

    if-eqz v2, :cond_3

    if-nez p1, :cond_2

    invoke-static {v2}, Lle9;->e(Landroid/view/View;)V

    :cond_2
    new-instance v4, Loo7;

    invoke-direct {v4, v0, p1, v2}, Loo7;-><init>(Lpo7;ILandroid/widget/EditText;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_3
    move p1, v3

    goto :goto_1

    :cond_4
    invoke-static {}, Lu96;->o()V

    throw v1

    :cond_5
    return-void
.end method

.method public final providePresenter()Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;
    .locals 10

    new-instance v0, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment;->h:Landroidx/navigation/NavArgsLazy;

    invoke-interface {v1}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkc9;

    iget-object v2, v2, Lkc9;->a:Ljava/lang/String;

    invoke-interface {v1}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkc9;

    iget-object v3, v3, Lkc9;->b:Lgl3;

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->j()Lba8;

    move-result-object v4

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v5

    const-class v6, Luf3;

    const/4 v7, 0x0

    invoke-static {v6, v5, v4, v7}, Ln2;->c(Ljava/lang/Class;Lze7;Lba8;Li36;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Luf3;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v5

    const-class v6, Lca0;

    invoke-static {v6, v5, v7, v7}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lca0;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v6

    const-class v8, Ljf6;

    invoke-static {v8, v6, v7, v7}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljf6;

    invoke-interface {v1}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkc9;

    iget v1, v1, Lkc9;->c:I

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object p0

    const-class v8, Lqe;

    invoke-static {v8, p0, v7, v7}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Lqe;

    move-object v9, v6

    move v6, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v9

    invoke-direct/range {v0 .. v7}, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;-><init>(Ljava/lang/String;Lgl3;Luf3;Lca0;Ljf6;ILqe;)V

    return-object v0
.end method

.method public final setCaseCall(Ljava/lang/String;I)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment;->n()Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;->btnRequestCall:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;->tvSendCodeNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;->tvTitle:Landroid/widget/TextView;

    const v2, 0x7f1402ae

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;->tvPhoneNumber:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v0, Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;->tvInputNumbers:Landroid/widget/TextView;

    sget v0, Lsx3;->a:I

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    const v0, 0x7f1402b2

    goto :goto_0

    :cond_0
    const v0, 0x7f1402b1

    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lsx3;->a(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final setCodeFromSms(Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment;->l:Lpo7;

    if-eqz p0, :cond_5

    iget-object p0, p0, Lpo7;->c:Ljava/util/List;

    move-object v0, p0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_5

    move-object v0, p0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    if-ltz v1, :cond_4

    check-cast v3, Landroid/widget/EditText;

    if-eqz v3, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v1, v5, :cond_3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_3
    move v1, v4

    goto :goto_1

    :cond_4
    invoke-static {}, Lu96;->o()V

    throw v2

    :cond_5
    return-void
.end method

.method public final showError(ZZZ)V
    .locals 10

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment;->n()Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;->tvPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;->tvInputNumbers:Landroid/widget/TextView;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v0, Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;->layoutCodes:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v0, Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;->tvDescriptionCall:Landroid/widget/TextView;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v0, Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;->tvGetNewCode:Landroid/widget/TextView;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v0, Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;->btnRepeatSendCode:Landroid/widget/TextView;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v8, 0x7

    new-array v8, v8, [Landroid/view/View;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    const/4 v1, 0x1

    aput-object v2, v8, v1

    const/4 v1, 0x2

    aput-object v3, v8, v1

    const/4 v1, 0x3

    aput-object v4, v8, v1

    const/4 v1, 0x4

    aput-object v5, v8, v1

    const/4 v1, 0x5

    aput-object v6, v8, v1

    const/4 v1, 0x6

    aput-object v7, v8, v1

    invoke-static {v8}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/16 v3, 0x8

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;->toolbar:Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarBackIconBinding;

    invoke-virtual {v1}, Lcom/warefly/checkscan/core/ui/databinding/LayoutToolbarBackIconBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;->layoutError:Lcom/warefly/checkscan/databinding/ItemErrorFullScreenBinding;

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/ItemErrorFullScreenBinding;->btnErrorBack:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Llb7;

    new-instance v3, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment$d;

    invoke-direct {v3, p0}, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment$d;-><init>(Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment;)V

    invoke-direct {v2, v3}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/ItemErrorFullScreenBinding;->btnErrorClose:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Llb7;

    new-instance v3, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment$e;

    invoke-direct {v3, p0}, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment$e;-><init>(Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment;)V

    invoke-direct {v2, v3}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p1, :cond_1

    iget-object p1, v0, Lcom/warefly/checkscan/databinding/ItemErrorFullScreenBinding;->tvTitleError:Landroid/widget/TextView;

    const v1, 0x7f1402be

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v0, Lcom/warefly/checkscan/databinding/ItemErrorFullScreenBinding;->tvErrorDescription:Landroid/widget/TextView;

    const v1, 0x7f1402bd

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    if-eqz p2, :cond_2

    iget-object p1, v0, Lcom/warefly/checkscan/databinding/ItemErrorFullScreenBinding;->tvTitleError:Landroid/widget/TextView;

    const p2, 0x7f1402d9

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v0, Lcom/warefly/checkscan/databinding/ItemErrorFullScreenBinding;->tvErrorDescription:Landroid/widget/TextView;

    const p2, 0x7f1402d6

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    if-eqz p3, :cond_3

    iget-object p1, v0, Lcom/warefly/checkscan/databinding/ItemErrorFullScreenBinding;->tvTitleError:Landroid/widget/TextView;

    const p2, 0x7f1402d8

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, v0, Lcom/warefly/checkscan/databinding/ItemErrorFullScreenBinding;->tvErrorDescription:Landroid/widget/TextView;

    const p2, 0x7f1402d7

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    invoke-virtual {v0}, Lcom/warefly/checkscan/databinding/ItemErrorFullScreenBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    invoke-virtual {p0, v9}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final showErrorCode()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const v0, 0x7f14026a

    invoke-static {v0, p0}, Loz1;->i(ILandroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final showInvalidPhoneError()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const v0, 0x7f140275

    invoke-static {v0, p0}, Loz1;->i(ILandroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final showLoading(Z)V
    .locals 1

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment;->k:Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    if-eqz p1, :cond_1

    sget-object p1, Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;->d:Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog$a;

    invoke-static {p1}, Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog$a;->b(Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog$a;)Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->m(Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog;)V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment;->k:Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

    :cond_1
    return-void
.end method

.method public final showLongCode()V
    .locals 7

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment;->n()Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;->etCodeOneCall:Landroid/widget/EditText;

    iget-object v2, v0, Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;->etCodeTwoCall:Landroid/widget/EditText;

    iget-object v3, v0, Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;->etCodeThreeCall:Landroid/widget/EditText;

    iget-object v4, v0, Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;->etCodeFourCall:Landroid/widget/EditText;

    iget-object v5, v0, Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;->etCodeFiveCall:Landroid/widget/EditText;

    iget-object v6, v0, Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;->etCodeSixCall:Landroid/widget/EditText;

    filled-new-array/range {v1 .. v6}, [Landroid/widget/EditText;

    move-result-object v0

    invoke-static {v0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment;->p(Ljava/util/List;)V

    return-void
.end method

.method public final showMiddleCode()V
    .locals 5

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment;->n()Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;->etCodeOneCall:Landroid/widget/EditText;

    iget-object v2, v0, Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;->etCodeTwoCall:Landroid/widget/EditText;

    iget-object v3, v0, Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;->etCodeThreeCall:Landroid/widget/EditText;

    iget-object v4, v0, Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;->etCodeFourCall:Landroid/widget/EditText;

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;->etCodeFiveCall:Landroid/widget/EditText;

    filled-new-array {v1, v2, v3, v4, v0}, [Landroid/widget/EditText;

    move-result-object v0

    invoke-static {v0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment;->p(Ljava/util/List;)V

    return-void
.end method

.method public final showOfferCardDialog(II)V
    .locals 6

    new-instance v0, Lcom/warefly/checkscan/presentation/queue/view/OfferCardDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lhc9;

    invoke-direct {v2, p0}, Lhc9;-><init>(Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment;)V

    new-instance v3, Lic9;

    invoke-direct {v3, p0}, Lic9;-><init>(Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment;)V

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/warefly/checkscan/presentation/queue/view/OfferCardDialog;-><init>(Landroid/content/Context;Lhc9;Lic9;II)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public final showProviderError()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const v0, 0x7f140097

    invoke-static {v0, p0}, Loz1;->i(ILandroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final showRepeatCallAgain()V
    .locals 2

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment;->j:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment;->n()Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;

    move-result-object p0

    iget-object v0, p0, Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;->tvGetNewCode:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;->btnRequestCall:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;->btnRepeatSendCode:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;->tvDescriptionCall:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final showSendSmsAgain()V
    .locals 2

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment;->j:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment;->n()Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;

    move-result-object p0

    iget-object v0, p0, Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;->tvGetNewCode:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;->btnRequestCall:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;->btnRepeatSendCode:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final showSendSmsCode(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment;->n()Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;->tvInputNumbers:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;->tvTitle:Landroid/widget/TextView;

    const v3, 0x7f1402af

    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;->tvPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;->tvDescriptionCall:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;->tvSendCodeNumber:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const v3, 0x7f1402b6

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, v0, Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;->tvGetNewCode:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final showShortCode()V
    .locals 4

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment;->n()Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;->etCodeOneCall:Landroid/widget/EditText;

    iget-object v2, v0, Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;->etCodeTwoCall:Landroid/widget/EditText;

    iget-object v3, v0, Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;->etCodeThreeCall:Landroid/widget/EditText;

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;->etCodeFourCall:Landroid/widget/EditText;

    filled-new-array {v1, v2, v3, v0}, [Landroid/widget/EditText;

    move-result-object v0

    invoke-static {v0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment;->p(Ljava/util/List;)V

    return-void
.end method

.method public final showTimeForRepeatCode()V
    .locals 10

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment;->j:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment;->n()Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;->btnRepeatSendCode:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;->tvDescriptionCall:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;->tvGetNewCode:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Luk7;

    new-instance v2, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment$f;

    invoke-direct {v2, v0, p0}, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment$f;-><init>(Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment;)V

    new-instance v3, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment$g;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment;->o()Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;

    move-result-object v5

    const-string v8, "showSendCodeAgain()V"

    const/4 v9, 0x0

    const/4 v4, 0x0

    const-class v6, Lcom/warefly/checkscan/presentation/verificationCardPhone/presenter/VerificationCardPhonePresenter;

    const-string v7, "showSendCodeAgain"

    invoke-direct/range {v3 .. v9}, Lqm3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v0, 0x78

    invoke-direct {v1, v0, v2, v3}, Luk7;-><init>(ILnl3;Lll3;)V

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment;->j:Landroid/os/CountDownTimer;

    return-void
.end method

.method public final showTimesNotExpired()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const v0, 0x7f140322

    invoke-static {v0, p0}, Loz1;->i(ILandroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final updateTextField()V
    .locals 6

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/verificationCardPhone/view/VerificationCardPhoneFragment;->n()Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;

    move-result-object p0

    iget-object v0, p0, Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;->etCodeOneCall:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;->etCodeTwoCall:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;->etCodeThreeCall:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;->etCodeFourCall:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;->etCodeFiveCall:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/warefly/checkscan/databinding/FragmentVerificationNumberCardBinding;->etCodeSixCall:Landroid/widget/EditText;

    filled-new-array/range {v0 .. v5}, [Landroid/widget/EditText;

    move-result-object p0

    invoke-static {p0}, Lu96;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
