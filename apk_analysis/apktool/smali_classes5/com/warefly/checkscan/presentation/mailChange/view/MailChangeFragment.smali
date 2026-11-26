.class public final Lcom/warefly/checkscan/presentation/mailChange/view/MailChangeFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangeView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment<",
        "Lcom/warefly/checkscan/databinding/FragmentChangeEmailBinding;",
        ">;",
        "Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangeView;"
    }
.end annotation


# static fields
.field public static final synthetic k:[Lze4;
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

.field public final i:Loy4;

.field public final j:Lfh8;

.field public mailChangePresenter:Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangePresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/mailChange/view/MailChangeFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/FragmentChangeEmailBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/mailChange/view/MailChangeFragment;->k:[Lze4;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;-><init>()V

    const v0, 0x7f0d00b2

    iput v0, p0, Lcom/warefly/checkscan/presentation/mailChange/view/MailChangeFragment;->f:I

    new-instance v0, Lol4;

    const-class v1, Lcom/warefly/checkscan/databinding/FragmentChangeEmailBinding;

    invoke-direct {v0, v1}, Lol4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/mailChange/view/MailChangeFragment;->g:Lol4;

    new-instance v0, Loy4;

    invoke-direct {v0, p0}, Loy4;-><init>(Lcom/warefly/checkscan/presentation/mailChange/view/MailChangeFragment;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/mailChange/view/MailChangeFragment;->i:Loy4;

    new-instance v0, Lcom/warefly/checkscan/presentation/mailChange/view/MailChangeFragment$c;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/mailChange/view/MailChangeFragment$c;-><init>(Lcom/warefly/checkscan/presentation/mailChange/view/MailChangeFragment;)V

    new-instance v1, Lfh8;

    invoke-direct {v1, v0}, Lfh8;-><init>(Lll3;)V

    iput-object v1, p0, Lcom/warefly/checkscan/presentation/mailChange/view/MailChangeFragment;->j:Lfh8;

    return-void
.end method


# virtual methods
.method public final finishChangeMail()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/mailChange/view/MailChangeFragment;->h:Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method public final i()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/presentation/mailChange/view/MailChangeFragment;->f:I

    return p0
.end method

.method public final n()Lcom/warefly/checkscan/databinding/FragmentChangeEmailBinding;
    .locals 2

    sget-object v0, Lcom/warefly/checkscan/presentation/mailChange/view/MailChangeFragment;->k:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/mailChange/view/MailChangeFragment;->g:Lol4;

    invoke-virtual {v1, p0, v0}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/databinding/FragmentChangeEmailBinding;

    return-object p0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/mailChange/view/MailChangeFragment;->n()Lcom/warefly/checkscan/databinding/FragmentChangeEmailBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/FragmentChangeEmailBinding;->etMailChange:Landroid/widget/EditText;

    iget-object p2, p0, Lcom/warefly/checkscan/presentation/mailChange/view/MailChangeFragment;->i:Loy4;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object p2, p0, Lcom/warefly/checkscan/presentation/mailChange/view/MailChangeFragment;->j:Lfh8;

    invoke-virtual {p2}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/warefly/checkscan/presentation/mailChange/view/a;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/mailChange/view/MailChangeFragment;->n()Lcom/warefly/checkscan/databinding/FragmentChangeEmailBinding;

    move-result-object p1

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/FragmentChangeEmailBinding;->btnBackEmailChange:Landroid/widget/ImageView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lcom/warefly/checkscan/presentation/mailChange/view/MailChangeFragment$a;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/mailChange/view/MailChangeFragment$a;-><init>(Lcom/warefly/checkscan/presentation/mailChange/view/MailChangeFragment;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/FragmentChangeEmailBinding;->btnChangeEmail:Landroid/widget/TextView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lcom/warefly/checkscan/presentation/mailChange/view/MailChangeFragment$b;

    invoke-direct {v1, p0, p1}, Lcom/warefly/checkscan/presentation/mailChange/view/MailChangeFragment$b;-><init>(Lcom/warefly/checkscan/presentation/mailChange/view/MailChangeFragment;Lcom/warefly/checkscan/databinding/FragmentChangeEmailBinding;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final providePresenter()Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangePresenter;
    .locals 8

    new-instance v0, Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangePresenter;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v1

    const-class v2, Li3;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li3;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v2

    const-class v4, Lc4;

    invoke-static {v4, v2, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc4;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v4

    const-class v5, Ljf6;

    invoke-static {v5, v4, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljf6;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v5

    const-class v6, Lpy4;

    invoke-static {v6, v5, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lpy4;

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->j()Lba8;

    move-result-object v6

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object p0

    const-class v7, Luf3;

    invoke-static {v7, p0, v6, v3}, Ln2;->c(Ljava/lang/Class;Lze7;Lba8;Li36;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Luf3;

    move-object v3, v4

    move-object v4, v5

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/warefly/checkscan/presentation/mailChange/presenter/MailChangePresenter;-><init>(Li3;Lc4;Ljf6;Lpy4;Luf3;)V

    return-object v0
.end method

.method public final setMailAllowed(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/mailChange/view/MailChangeFragment;->n()Lcom/warefly/checkscan/databinding/FragmentChangeEmailBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentChangeEmailBinding;->btnChangeEmail:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public final showBackendError()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const v0, 0x7f140097

    invoke-static {v0, p0}, Loz1;->i(ILandroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final showEmailSent(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/warefly/checkscan/core/ui/base/dialogs/TextDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v1, 0x7f140264

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, ""

    invoke-direct {p1, v0, v1, p0}, Lcom/warefly/checkscan/core/ui/base/dialogs/TextDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public final showEmailUseAlready()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const v0, 0x7f140263

    invoke-static {v0, p0}, Loz1;->i(ILandroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final showIncorrectMailMessage(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/mailChange/view/MailChangeFragment;->n()Lcom/warefly/checkscan/databinding/FragmentChangeEmailBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentChangeEmailBinding;->etMailChange:Landroid/widget/EditText;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const p1, 0x7f0802d7

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    invoke-virtual {p0, v0, v0, p1, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    return-void
.end method

.method public final showMailUser(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/mailChange/view/MailChangeFragment;->n()Lcom/warefly/checkscan/databinding/FragmentChangeEmailBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentChangeEmailBinding;->etMailChange:Landroid/widget/EditText;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final showNetworkError()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const v0, 0x7f140480

    invoke-static {v0, p0}, Loz1;->i(ILandroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final showNoSuchUser()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    const v1, 0x7f140279

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    invoke-static {v0, p0, v1}, Lcom/androidadvance/topsnackbar/TSnackbar;->c(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/androidadvance/topsnackbar/TSnackbar;

    move-result-object p0

    iget-object v0, p0, Lcom/androidadvance/topsnackbar/TSnackbar;->b:Lcom/androidadvance/topsnackbar/TSnackbar$SnackbarLayout;

    const-string v1, "#a6caff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/androidadvance/topsnackbar/TSnackbar;->f()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final showToastMessage(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public final startChangeMail()V
    .locals 2

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/mailChange/view/MailChangeFragment;->h:Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    sget-object v0, Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;->d:Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog$a;

    const v1, 0x7f140265

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog$a;->a(Ljava/lang/String;)Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->m(Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/mailChange/view/MailChangeFragment;->h:Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

    return-void
.end method
