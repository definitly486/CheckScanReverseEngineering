.class public final Lcom/warefly/checkscan/auth/presentation/userCallVerification/view/VerificationUserCallFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/auth/presentation/userCallVerification/view/VerificationUserCallView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/auth/presentation/userCallVerification/view/VerificationUserCallFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment<",
        "Lcom/warefly/checkscan/auth/databinding/FragmentCallVerificationBinding;",
        ">;",
        "Lcom/warefly/checkscan/auth/presentation/userCallVerification/view/VerificationUserCallView;"
    }
.end annotation


# static fields
.field public static final i:Lcom/warefly/checkscan/auth/presentation/userCallVerification/view/VerificationUserCallFragment$a;

.field public static final synthetic j:[Lze4;
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

.field public h:Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

.field public presenter:Lcom/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/auth/presentation/userCallVerification/view/VerificationUserCallFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/auth/databinding/FragmentCallVerificationBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/auth/presentation/userCallVerification/view/VerificationUserCallFragment;->j:[Lze4;

    new-instance v0, Lcom/warefly/checkscan/auth/presentation/userCallVerification/view/VerificationUserCallFragment$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/warefly/checkscan/auth/presentation/userCallVerification/view/VerificationUserCallFragment;->i:Lcom/warefly/checkscan/auth/presentation/userCallVerification/view/VerificationUserCallFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;-><init>()V

    const v0, 0x7f0d00af

    iput v0, p0, Lcom/warefly/checkscan/auth/presentation/userCallVerification/view/VerificationUserCallFragment;->f:I

    new-instance v0, Lol4;

    const-class v1, Lcom/warefly/checkscan/auth/databinding/FragmentCallVerificationBinding;

    invoke-direct {v0, v1}, Lol4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/auth/presentation/userCallVerification/view/VerificationUserCallFragment;->g:Lol4;

    return-void
.end method


# virtual methods
.method public final dismissLoadingDialog()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/auth/presentation/userCallVerification/view/VerificationUserCallFragment;->h:Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method public final i()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/auth/presentation/userCallVerification/view/VerificationUserCallFragment;->f:I

    return p0
.end method

.method public final k()Z
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/auth/presentation/userCallVerification/view/VerificationUserCallFragment;->presenter:Lcom/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter;->onBackClicked()V

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final n()Lcom/warefly/checkscan/auth/databinding/FragmentCallVerificationBinding;
    .locals 2

    sget-object v0, Lcom/warefly/checkscan/auth/presentation/userCallVerification/view/VerificationUserCallFragment;->j:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/warefly/checkscan/auth/presentation/userCallVerification/view/VerificationUserCallFragment;->g:Lol4;

    invoke-virtual {v1, p0, v0}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/auth/databinding/FragmentCallVerificationBinding;

    return-object p0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/auth/presentation/userCallVerification/view/VerificationUserCallFragment;->n()Lcom/warefly/checkscan/auth/databinding/FragmentCallVerificationBinding;

    move-result-object p1

    iget-object p2, p1, Lcom/warefly/checkscan/auth/databinding/FragmentCallVerificationBinding;->btnBack:Landroid/widget/ImageView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lp42;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lp42;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p1, Lcom/warefly/checkscan/auth/databinding/FragmentCallVerificationBinding;->btnVerify:Lcom/warefly/checkscan/core/ui/LoadingButton;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lnk1;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lnk1;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Lcom/warefly/checkscan/auth/databinding/FragmentCallVerificationBinding;->btnTryEmail:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Llb7;

    new-instance v0, Lok1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lok1;-><init>(Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;I)V

    invoke-direct {p2, v0}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final openPhoneCallApp(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "tel:"

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final providePresenter()Lcom/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter;
    .locals 9

    new-instance v0, Lcom/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "PHONE_KEY"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "CALL_PHONE_KEY"

    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "EMAIL_KEY"

    invoke-virtual {v4, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->j()Lba8;

    move-result-object v5

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v6

    const-class v7, Luf3;

    invoke-static {v7, v6, v5, v2}, Ln2;->c(Ljava/lang/Class;Lze7;Lba8;Li36;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Luf3;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v6

    const-class v7, Lgx7;

    invoke-static {v7, v6, v2, v2}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgx7;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v7

    const-class v8, Lcx7;

    invoke-static {v8, v7, v2, v2}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcx7;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object p0

    const-class v8, Lgs5;

    invoke-static {v8, p0, v2, v2}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgs5;

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/warefly/checkscan/auth/presentation/userCallVerification/presenter/VerificationUserCallPresenter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Luf3;Lgx7;Lcx7;Lgs5;)V

    return-object v0

    :cond_0
    const-string p0, "Call phone can not be null"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v2

    :cond_1
    const-string p0, "Phone can not be null"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v2
.end method

.method public final setDescription(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x7f14069b

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-static {p1, p2, v0, v0, v1}, Lta8;->K(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, v0

    invoke-virtual {p0}, Lcom/warefly/checkscan/auth/presentation/userCallVerification/view/VerificationUserCallFragment;->n()Lcom/warefly/checkscan/auth/databinding/FragmentCallVerificationBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/warefly/checkscan/auth/databinding/FragmentCallVerificationBinding;->tvDescription:Landroid/widget/TextView;

    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance p1, Landroid/text/style/StyleSpan;

    const/4 v3, 0x1

    invoke-direct {p1, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v4, 0x21

    invoke-virtual {v2, p1, v0, p2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance p1, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v5, 0x10

    invoke-direct {p1, v5, v3}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {v2, p1, v0, p2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    const v3, 0x7f060497

    invoke-static {p0, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    invoke-direct {p1, p0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2, p1, v0, p2, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final showEmailMethod(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/auth/presentation/userCallVerification/view/VerificationUserCallFragment;->n()Lcom/warefly/checkscan/auth/databinding/FragmentCallVerificationBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/auth/databinding/FragmentCallVerificationBinding;->btnTryEmail:Landroid/widget/TextView;

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

.method public final showLoadingButton(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/auth/presentation/userCallVerification/view/VerificationUserCallFragment;->n()Lcom/warefly/checkscan/auth/databinding/FragmentCallVerificationBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/auth/databinding/FragmentCallVerificationBinding;->btnVerify:Lcom/warefly/checkscan/core/ui/LoadingButton;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/core/ui/LoadingButton;->setLoading(Z)V

    return-void
.end method

.method public final showLoadingDialog()V
    .locals 1

    iget-object v0, p0, Lcom/warefly/checkscan/auth/presentation/userCallVerification/view/VerificationUserCallFragment;->h:Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    sget-object v0, Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;->d:Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog$a;

    invoke-static {v0}, Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog$a;->b(Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog$a;)Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->m(Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog;)V

    iput-object v0, p0, Lcom/warefly/checkscan/auth/presentation/userCallVerification/view/VerificationUserCallFragment;->h:Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

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
