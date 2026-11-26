.class public final Lcom/warefly/checkscan/presentation/phoneChange/view/PhoneChangeFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangeView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment<",
        "Lcom/warefly/checkscan/databinding/FragmentPhoneBinding;",
        ">;",
        "Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangeView;"
    }
.end annotation


# static fields
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

.field public final i:Li76;

.field public phoneChangePresenter:Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/phoneChange/view/PhoneChangeFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/FragmentPhoneBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/phoneChange/view/PhoneChangeFragment;->j:[Lze4;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;-><init>()V

    const v0, 0x7f0d00dc

    iput v0, p0, Lcom/warefly/checkscan/presentation/phoneChange/view/PhoneChangeFragment;->f:I

    new-instance v0, Lol4;

    const-class v1, Lcom/warefly/checkscan/databinding/FragmentPhoneBinding;

    invoke-direct {v0, v1}, Lol4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/phoneChange/view/PhoneChangeFragment;->g:Lol4;

    new-instance v0, Li76;

    invoke-direct {v0, p0}, Li76;-><init>(Lcom/warefly/checkscan/presentation/phoneChange/view/PhoneChangeFragment;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/phoneChange/view/PhoneChangeFragment;->i:Li76;

    return-void
.end method


# virtual methods
.method public final i()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/presentation/phoneChange/view/PhoneChangeFragment;->f:I

    return p0
.end method

.method public final n()Lcom/warefly/checkscan/databinding/FragmentPhoneBinding;
    .locals 2

    sget-object v0, Lcom/warefly/checkscan/presentation/phoneChange/view/PhoneChangeFragment;->j:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/phoneChange/view/PhoneChangeFragment;->g:Lol4;

    invoke-virtual {v1, p0, v0}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/databinding/FragmentPhoneBinding;

    return-object p0
.end method

.method public final onFinish()V
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/phoneChange/view/PhoneChangeFragment;->h:Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/phoneChange/view/PhoneChangeFragment;->n()Lcom/warefly/checkscan/databinding/FragmentPhoneBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/FragmentPhoneBinding;->etNumberPhone:Landroid/widget/EditText;

    iget-object p2, p0, Lcom/warefly/checkscan/presentation/phoneChange/view/PhoneChangeFragment;->i:Li76;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance p2, Lk76;

    invoke-direct {p2, p0}, Lk76;-><init>(Lcom/warefly/checkscan/presentation/phoneChange/view/PhoneChangeFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance p2, Lj76;

    invoke-direct {p2, p0}, Lj76;-><init>(Lcom/warefly/checkscan/presentation/phoneChange/view/PhoneChangeFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/phoneChange/view/PhoneChangeFragment;->n()Lcom/warefly/checkscan/databinding/FragmentPhoneBinding;

    move-result-object p1

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/FragmentPhoneBinding;->btnBackPhone:Landroid/widget/ImageView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lcom/warefly/checkscan/presentation/phoneChange/view/PhoneChangeFragment$a;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/phoneChange/view/PhoneChangeFragment$a;-><init>(Lcom/warefly/checkscan/presentation/phoneChange/view/PhoneChangeFragment;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/FragmentPhoneBinding;->btnGiveCode:Landroid/widget/TextView;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lcom/warefly/checkscan/presentation/phoneChange/view/PhoneChangeFragment$b;

    invoke-direct {v1, p0, p1}, Lcom/warefly/checkscan/presentation/phoneChange/view/PhoneChangeFragment$b;-><init>(Lcom/warefly/checkscan/presentation/phoneChange/view/PhoneChangeFragment;Lcom/warefly/checkscan/databinding/FragmentPhoneBinding;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final providePresenter()Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter;
    .locals 8

    new-instance v0, Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v1

    const-class v2, Ljf6;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljf6;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v2

    const-class v4, Li3;

    invoke-static {v4, v2, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li3;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v4

    const-class v5, Lca0;

    invoke-static {v5, v4, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lca0;

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->j()Lba8;

    move-result-object v5

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v6

    const-class v7, Luf3;

    invoke-static {v7, v6, v5, v3}, Ln2;->c(Ljava/lang/Class;Lze7;Lba8;Li36;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Luf3;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object p0

    const-class v6, Ls47;

    invoke-static {v6, p0, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ls47;

    move-object v3, v4

    move-object v4, v5

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/warefly/checkscan/presentation/phoneChange/presenter/PhoneChangePresenter;-><init>(Ljf6;Li3;Lca0;Luf3;Ls47;)V

    return-object v0
.end method

.method public final showAccountPhone(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/phoneChange/view/PhoneChangeFragment;->n()Lcom/warefly/checkscan/databinding/FragmentPhoneBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentPhoneBinding;->etNumberPhone:Landroid/widget/EditText;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final showFailService(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Loz1;->h(Landroid/view/View;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final showIncorrectPhoneMessage(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/phoneChange/view/PhoneChangeFragment;->n()Lcom/warefly/checkscan/databinding/FragmentPhoneBinding;

    move-result-object p0

    iget-object v0, p0, Lcom/warefly/checkscan/databinding/FragmentPhoneBinding;->btnGiveCode:Landroid/widget/TextView;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentPhoneBinding;->etNumberPhone:Landroid/widget/EditText;

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

.method public final showLoading(Z)V
    .locals 1

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/phoneChange/view/PhoneChangeFragment;->h:Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    if-eqz p1, :cond_1

    sget-object p1, Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;->d:Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog$a;

    invoke-static {p1}, Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog$a;->b(Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog$a;)Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->m(Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog;)V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/phoneChange/view/PhoneChangeFragment;->h:Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

    :cond_1
    return-void
.end method

.method public final showStartPhoneChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/phoneChange/view/PhoneChangeFragment;->h:Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    if-eqz p1, :cond_1

    sget-object p1, Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;->d:Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog$a;

    const v0, 0x7f1404cb

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog$a;->a(Ljava/lang/String;)Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->m(Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog;)V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/phoneChange/view/PhoneChangeFragment;->h:Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

    :cond_1
    return-void
.end method

.method public final showTimesNotExpired()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const v0, 0x7f140322

    invoke-static {v0, p0}, Loz1;->g(ILandroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final showUnEnableChangePhone()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const v0, 0x7f14027a

    invoke-static {v0, p0}, Loz1;->d(ILandroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final showWaitCode(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/phoneChange/view/PhoneChangeFragment;->n()Lcom/warefly/checkscan/databinding/FragmentPhoneBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentPhoneBinding;->pbWaitCodeElectrocheque:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
