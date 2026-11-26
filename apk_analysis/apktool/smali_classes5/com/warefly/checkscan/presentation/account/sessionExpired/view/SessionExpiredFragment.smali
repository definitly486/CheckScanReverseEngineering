.class public final Lcom/warefly/checkscan/presentation/account/sessionExpired/view/SessionExpiredFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/account/sessionExpired/presenter/SessionExpiredView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/account/sessionExpired/view/SessionExpiredFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment<",
        "Lcom/warefly/checkscan/databinding/LayoutSessionExpiredBinding;",
        ">;",
        "Lcom/warefly/checkscan/presentation/account/sessionExpired/presenter/SessionExpiredView;"
    }
.end annotation


# static fields
.field public static final i:Lcom/warefly/checkscan/presentation/account/sessionExpired/view/SessionExpiredFragment$a;

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

.field public presenter:Lcom/warefly/checkscan/presentation/account/sessionExpired/presenter/SessionExpiredPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/account/sessionExpired/view/SessionExpiredFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/LayoutSessionExpiredBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/account/sessionExpired/view/SessionExpiredFragment;->j:[Lze4;

    new-instance v0, Lcom/warefly/checkscan/presentation/account/sessionExpired/view/SessionExpiredFragment$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/warefly/checkscan/presentation/account/sessionExpired/view/SessionExpiredFragment;->i:Lcom/warefly/checkscan/presentation/account/sessionExpired/view/SessionExpiredFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;-><init>()V

    const v0, 0x7f0d0298

    iput v0, p0, Lcom/warefly/checkscan/presentation/account/sessionExpired/view/SessionExpiredFragment;->f:I

    new-instance v0, Lol4;

    const-class v1, Lcom/warefly/checkscan/databinding/LayoutSessionExpiredBinding;

    invoke-direct {v0, v1}, Lol4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/account/sessionExpired/view/SessionExpiredFragment;->g:Lol4;

    return-void
.end method


# virtual methods
.method public final i()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/presentation/account/sessionExpired/view/SessionExpiredFragment;->f:I

    return p0
.end method

.method public final k()Z
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/account/sessionExpired/view/SessionExpiredFragment;->presenter:Lcom/warefly/checkscan/presentation/account/sessionExpired/presenter/SessionExpiredPresenter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/account/sessionExpired/presenter/SessionExpiredPresenter;->onBackPressed()V

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string p0, "presenter"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    sget-object p1, Lcom/warefly/checkscan/presentation/account/sessionExpired/view/SessionExpiredFragment;->j:[Lze4;

    const/4 p2, 0x0

    aget-object p1, p1, p2

    iget-object p2, p0, Lcom/warefly/checkscan/presentation/account/sessionExpired/view/SessionExpiredFragment;->g:Lol4;

    invoke-virtual {p2, p0, p1}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/databinding/LayoutSessionExpiredBinding;

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/LayoutSessionExpiredBinding;->btnGo:Landroid/widget/Button;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lcom/warefly/checkscan/presentation/account/sessionExpired/view/SessionExpiredFragment$b;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/account/sessionExpired/view/SessionExpiredFragment$b;-><init>(Lcom/warefly/checkscan/presentation/account/sessionExpired/view/SessionExpiredFragment;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/LayoutSessionExpiredBinding;->tvAppVersion:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "2.14.5.79"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f140086

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/LayoutSessionExpiredBinding;->btnFeedback:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Llb7;

    new-instance v0, Lcom/warefly/checkscan/presentation/account/sessionExpired/view/SessionExpiredFragment$c;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/account/sessionExpired/view/SessionExpiredFragment$c;-><init>(Lcom/warefly/checkscan/presentation/account/sessionExpired/view/SessionExpiredFragment;)V

    invoke-direct {p2, v0}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final providePresenter()Lcom/warefly/checkscan/presentation/account/sessionExpired/presenter/SessionExpiredPresenter;
    .locals 5

    new-instance v0, Lcom/warefly/checkscan/presentation/account/sessionExpired/presenter/SessionExpiredPresenter;

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->j()Lba8;

    move-result-object v1

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v2

    const-class v3, Luf3;

    const/4 v4, 0x0

    invoke-static {v3, v2, v1, v4}, Ln2;->c(Ljava/lang/Class;Lze7;Lba8;Li36;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Luf3;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object p0

    const-class v2, Lkv;

    invoke-static {v2, p0, v4, v4}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkv;

    invoke-direct {v0, v1, p0}, Lcom/warefly/checkscan/presentation/account/sessionExpired/presenter/SessionExpiredPresenter;-><init>(Luf3;Lkv;)V

    return-object v0
.end method

.method public final showCouldntLogout()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f1405e3

    invoke-static {v1, v0}, Loz1;->i(ILandroid/view/View;)V

    :cond_0
    sget-object v0, Lcom/warefly/checkscan/presentation/account/sessionExpired/view/SessionExpiredFragment;->j:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v2, p0, Lcom/warefly/checkscan/presentation/account/sessionExpired/view/SessionExpiredFragment;->g:Lol4;

    invoke-virtual {v2, p0, v0}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/databinding/LayoutSessionExpiredBinding;

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/LayoutSessionExpiredBinding;->viewMessage:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    return-void
.end method

.method public final showLoading(Z)V
    .locals 1

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/account/sessionExpired/view/SessionExpiredFragment;->h:Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    if-eqz p1, :cond_1

    sget-object p1, Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;->d:Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog$a;

    invoke-static {p1}, Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog$a;->b(Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog$a;)Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/account/sessionExpired/view/SessionExpiredFragment;->h:Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->m(Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog;)V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/account/sessionExpired/view/SessionExpiredFragment;->h:Lcom/warefly/checkscan/core/ui/base/dialogs/LoadingDialog;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_2
    return-void
.end method

.method public final startFeedback()V
    .locals 0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lqx6;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
