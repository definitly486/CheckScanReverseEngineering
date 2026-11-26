.class public final Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment<",
        "Lcom/warefly/checkscan/databinding/FragmentBannerAfterScanLoadingBinding;",
        ">;",
        "Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashView;"
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

.field public h:Luk7;

.field public i:Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;

.field public presenter:Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/databinding/FragmentBannerAfterScanLoadingBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashFragment;->j:[Lze4;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;-><init>()V

    const v0, 0x7f0d00aa

    iput v0, p0, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashFragment;->f:I

    new-instance v0, Lol4;

    const-class v1, Lcom/warefly/checkscan/databinding/FragmentBannerAfterScanLoadingBinding;

    invoke-direct {v0, v1}, Lol4;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashFragment;->g:Lol4;

    return-void
.end method


# virtual methods
.method public final i()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashFragment;->f:I

    return p0
.end method

.method public final k()Z
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashFragment;->o()Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;->onSkip()V

    const/4 p0, 0x0

    return p0
.end method

.method public final n()Lcom/warefly/checkscan/databinding/FragmentBannerAfterScanLoadingBinding;
    .locals 2

    sget-object v0, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashFragment;->j:[Lze4;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashFragment;->g:Lol4;

    invoke-virtual {v1, p0, v0}, Lol4;->a(Landroidx/fragment/app/Fragment;Lze4;)Landroidx/viewbinding/ViewBinding;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/databinding/FragmentBannerAfterScanLoadingBinding;

    return-object p0
.end method

.method public final o()Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashFragment;->presenter:Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;

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

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashFragment;->h:Luk7;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    invoke-super {p0}, Lfh5;->onDestroyView()V

    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashFragment;->n()Lcom/warefly/checkscan/databinding/FragmentBannerAfterScanLoadingBinding;

    move-result-object p1

    iget-object p2, p1, Lcom/warefly/checkscan/databinding/FragmentBannerAfterScanLoadingBinding;->btnResultClose:Landroid/widget/ImageButton;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Llb7;

    new-instance v1, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashFragment$a;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashFragment$a;-><init>(Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashFragment;)V

    invoke-direct {v0, v1}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p1, Lcom/warefly/checkscan/databinding/FragmentBannerAfterScanLoadingBinding;->btnCloseSplash:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Llb7;

    new-instance v0, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashFragment$b;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashFragment$b;-><init>(Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashFragment;)V

    invoke-direct {p2, v0}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final openDeeplink(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashFragment;->o()Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;->finishScannerFlow()V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public final providePresenter()Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;
    .locals 13

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->j()Lba8;

    move-result-object v0

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v1

    const-class v2, Luf3;

    const/4 v3, 0x0

    invoke-static {v2, v1, v0, v3}, Ln2;->c(Ljava/lang/Class;Lze7;Lba8;Li36;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Luf3;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v0

    const-class v1, Ljf6;

    invoke-static {v1, v0, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljf6;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v0

    const-class v1, Ls47;

    invoke-static {v1, v0, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ls47;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v0

    const-class v1, Lb68;

    invoke-static {v1, v0, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lb68;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v0

    const-class v1, Lyg1;

    invoke-static {v1, v0, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lyg1;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v0

    const-class v1, Lic8;

    invoke-static {v1, v0, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lic8;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v0

    const-class v1, Lmo7;

    invoke-static {v1, v0, v3, v3}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lmo7;

    sget-object v0, Loe0;->e:Lba8;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object p0

    const-class v1, Ly22;

    invoke-static {v1, p0, v0, v3}, Ln2;->c(Ljava/lang/Class;Lze7;Lba8;Li36;)Ljava/lang/Object;

    move-result-object p0

    move-object v12, p0

    check-cast v12, Ly22;

    new-instance v4, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;

    invoke-direct/range {v4 .. v12}, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;-><init>(Luf3;Ljf6;Lyg1;Lb68;Ls47;Lic8;Lmo7;Ly22;)V

    return-object v4
.end method

.method public final setFinishedTitle(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashFragment;->n()Lcom/warefly/checkscan/databinding/FragmentBannerAfterScanLoadingBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentBannerAfterScanLoadingBinding;->tvSplashDone:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashFragment;->n()Lcom/warefly/checkscan/databinding/FragmentBannerAfterScanLoadingBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentBannerAfterScanLoadingBinding;->tvResult:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setSecondsLeft(J)V
    .locals 1

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashFragment;->n()Lcom/warefly/checkscan/databinding/FragmentBannerAfterScanLoadingBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentBannerAfterScanLoadingBinding;->tvSplashSecsLeft:Landroid/widget/TextView;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const p2, 0x7f140615

    invoke-virtual {p0, p2, p1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setSecondsLeftWithoutSplash(J)V
    .locals 1

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashFragment;->n()Lcom/warefly/checkscan/databinding/FragmentBannerAfterScanLoadingBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentBannerAfterScanLoadingBinding;->incldLoadingWithoutSplash:Lcom/warefly/checkscan/databinding/LayoutWithoutSplashBannerLoadingBinding;

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/LayoutWithoutSplashBannerLoadingBinding;->tvSecs:Landroid/widget/TextView;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const p2, 0x7f140615

    invoke-virtual {p0, p2, p1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setSplashFinishedInvisible(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashFragment;->n()Lcom/warefly/checkscan/databinding/FragmentBannerAfterScanLoadingBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentBannerAfterScanLoadingBinding;->groupDone:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final setSplashLoadingInvisible(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashFragment;->n()Lcom/warefly/checkscan/databinding/FragmentBannerAfterScanLoadingBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentBannerAfterScanLoadingBinding;->groupProgress:Landroidx/constraintlayout/widget/Group;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final setSplashLoadingTitle(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashFragment;->n()Lcom/warefly/checkscan/databinding/FragmentBannerAfterScanLoadingBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentBannerAfterScanLoadingBinding;->tvSplashLoading:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setWithoutSplashLoadingTitle(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashFragment;->n()Lcom/warefly/checkscan/databinding/FragmentBannerAfterScanLoadingBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentBannerAfterScanLoadingBinding;->incldLoadingWithoutSplash:Lcom/warefly/checkscan/databinding/LayoutWithoutSplashBannerLoadingBinding;

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/LayoutWithoutSplashBannerLoadingBinding;->tvLoading:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final showAdInfoDialog(Lb06;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashFragment;->i:Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;

    invoke-direct {v1, v0, p1}, Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;-><init>(Landroid/content/Context;Lb06;)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    iput-object v1, p0, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashFragment;->i:Lcom/warefly/checkscan/presentation/commonDialogs/ordAdDialog/OrdAdInfoDialog;

    :cond_1
    return-void
.end method

.method public final showCloseButton(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashFragment;->n()Lcom/warefly/checkscan/databinding/FragmentBannerAfterScanLoadingBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentBannerAfterScanLoadingBinding;->btnCloseSplash:Landroid/widget/ImageView;

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

.method public final showLoadingWithSplash(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashFragment;->n()Lcom/warefly/checkscan/databinding/FragmentBannerAfterScanLoadingBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentBannerAfterScanLoadingBinding;->layoutLoading:Landroidx/constraintlayout/widget/ConstraintLayout;

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

.method public final showLoadingWithoutSplash(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashFragment;->n()Lcom/warefly/checkscan/databinding/FragmentBannerAfterScanLoadingBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentBannerAfterScanLoadingBinding;->incldLoadingWithoutSplash:Lcom/warefly/checkscan/databinding/LayoutWithoutSplashBannerLoadingBinding;

    invoke-virtual {p0}, Lcom/warefly/checkscan/databinding/LayoutWithoutSplashBannerLoadingBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

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

.method public final showReceiptLoadedWithoutSplash()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashFragment;->n()Lcom/warefly/checkscan/databinding/FragmentBannerAfterScanLoadingBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/FragmentBannerAfterScanLoadingBinding;->layoutLoading:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentBannerAfterScanLoadingBinding;->layoutChequeLoad:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashFragment;->o()Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/presenter/LoadingSplashPresenter;->checkCountScanCheque()V

    :cond_0
    return-void
.end method

.method public final showSplash(Lhc0$c;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashFragment;->n()Lcom/warefly/checkscan/databinding/FragmentBannerAfterScanLoadingBinding;

    move-result-object v0

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/FragmentBannerAfterScanLoadingBinding;->bannerPlaceholder:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p1, Lhc0$c;->b:Ljava/lang/String;

    iget-object v3, v0, Lcom/warefly/checkscan/databinding/FragmentBannerAfterScanLoadingBinding;->ivPicture:Landroid/widget/ImageView;

    invoke-static {v3}, Lcom/bumptech/glide/a;->e(Landroid/view/View;)Lp37;

    move-result-object v3

    invoke-virtual {v3, v1}, Lp37;->h(Ljava/lang/String;)Lh37;

    move-result-object v1

    const v3, 0x7f080418

    invoke-virtual {v1, v3}, Lee0;->q(I)Lee0;

    move-result-object v1

    check-cast v1, Lh37;

    invoke-static {}, Lqs2;->h()Lqs2;

    move-result-object v3

    invoke-virtual {v1, v3}, Lh37;->P(Lqs2;)Lh37;

    move-result-object v1

    iget-object v3, v0, Lcom/warefly/checkscan/databinding/FragmentBannerAfterScanLoadingBinding;->ivPicture:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Lh37;->L(Landroid/widget/ImageView;)V

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/FragmentBannerAfterScanLoadingBinding;->tvTitle:Landroid/widget/TextView;

    iget-object v3, p1, Lhc0$c;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/warefly/checkscan/databinding/FragmentBannerAfterScanLoadingBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentBannerAfterScanLoadingBinding;->btnAccept:Landroid/widget/TextView;

    iget-object v1, p1, Lhc0$c;->f:Lfw0;

    if-eqz v1, :cond_1

    iget-object v3, v1, Lfw0;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :try_start_0
    iget-object v3, v1, Lfw0;->a:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    sget-object v3, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :try_start_1
    iget-object v1, v1, Lfw0;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    sget-object v1, Lj59;->a:Lj59;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Llb7;

    new-instance v3, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashFragment$d;

    invoke-direct {v3, p0}, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashFragment$d;-><init>(Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashFragment;)V

    invoke-direct {v1, v3}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object p1, p1, Lhc0$c;->g:Lb06;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashFragment;->n()Lcom/warefly/checkscan/databinding/FragmentBannerAfterScanLoadingBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentBannerAfterScanLoadingBinding;->incldAdsBadge:Lcom/warefly/checkscan/core/ui/databinding/LayoutAdsBadgeBinding;

    iget-object v1, v0, Lcom/warefly/checkscan/core/ui/databinding/LayoutAdsBadgeBinding;->blurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashFragment;->n()Lcom/warefly/checkscan/databinding/FragmentBannerAfterScanLoadingBinding;

    move-result-object v3

    invoke-virtual {v3}, Lcom/warefly/checkscan/databinding/FragmentBannerAfterScanLoadingBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v3}, Lzd3;->h(Leightbitlab/com/blurview/BlurView;Landroid/view/ViewGroup;)V

    invoke-virtual {v0}, Lcom/warefly/checkscan/core/ui/databinding/LayoutAdsBadgeBinding;->getRoot()Leightbitlab/com/blurview/BlurView;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v3, p1, Lb06;->b:Z

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Lcom/warefly/checkscan/core/ui/databinding/LayoutAdsBadgeBinding;->getRoot()Leightbitlab/com/blurview/BlurView;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Llb7;

    new-instance v2, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashFragment$c;

    invoke-direct {v2, p0, p1}, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashFragment$c;-><init>(Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashFragment;Lb06;)V

    invoke-direct {v1, v2}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-void
.end method

.method public final showSubscriptionSplash(Lwc8;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashFragment;->n()Lcom/warefly/checkscan/databinding/FragmentBannerAfterScanLoadingBinding;

    move-result-object v0

    iget-object v0, v0, Lcom/warefly/checkscan/databinding/FragmentBannerAfterScanLoadingBinding;->incldSubscriptionAnon:Lcom/warefly/checkscan/subscription/databinding/AnonSplashScanResultBinding;

    invoke-virtual {v0}, Lcom/warefly/checkscan/subscription/databinding/AnonSplashScanResultBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/warefly/checkscan/subscription/databinding/AnonSplashScanResultBinding;->tvTitle:Landroid/widget/TextView;

    iget-object v2, p1, Lwc8;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/warefly/checkscan/subscription/databinding/AnonSplashScanResultBinding;->tvDescription:Landroid/widget/TextView;

    iget-object v2, p1, Lwc8;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/warefly/checkscan/subscription/databinding/AnonSplashScanResultBinding;->ivBanner:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v2, p1, Lwc8;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimationFromUrl(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/warefly/checkscan/subscription/databinding/AnonSplashScanResultBinding;->ivBanner:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v2, Lks4;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setFailureListener(Ltx4;)V

    iget-object v1, v0, Lcom/warefly/checkscan/subscription/databinding/AnonSplashScanResultBinding;->btnClose:Landroid/widget/ImageView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Llb7;

    new-instance v3, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashFragment$e;

    invoke-direct {v3, p0}, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashFragment$e;-><init>(Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashFragment;)V

    invoke-direct {v2, v3}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v0, Lcom/warefly/checkscan/subscription/databinding/AnonSplashScanResultBinding;->btnActivate:Landroid/widget/TextView;

    iget-object v1, p1, Lwc8;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Llb7;

    new-instance v2, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashFragment$f;

    invoke-direct {v2, p0, p1}, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashFragment$f;-><init>(Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashFragment;Lwc8;)V

    invoke-direct {v1, v2}, Llb7;-><init>(Lnl3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final skip()V
    .locals 4

    new-instance v0, Luk7;

    new-instance v1, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashFragment$h;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashFragment$h;-><init>(Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashFragment;)V

    const/4 v2, 0x7

    sget-object v3, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashFragment$g;->f:Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashFragment$g;

    invoke-direct {v0, v2, v3, v1}, Luk7;-><init>(ILnl3;Lll3;)V

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashFragment;->h:Luk7;

    return-void
.end method

.method public final startProgressAnimation(J)V
    .locals 2

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashFragment;->n()Lcom/warefly/checkscan/databinding/FragmentBannerAfterScanLoadingBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentBannerAfterScanLoadingBinding;->pbSplashLoading:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    const/16 v0, 0x64

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "progress"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public final startProgressAnimationWithoutSplash(J)V
    .locals 2

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/queue/afterScanSplash/view/LoadingSplashFragment;->n()Lcom/warefly/checkscan/databinding/FragmentBannerAfterScanLoadingBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/FragmentBannerAfterScanLoadingBinding;->incldLoadingWithoutSplash:Lcom/warefly/checkscan/databinding/LayoutWithoutSplashBannerLoadingBinding;

    iget-object p0, p0, Lcom/warefly/checkscan/databinding/LayoutWithoutSplashBannerLoadingBinding;->pbLoading:Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    const/16 v0, 0x64

    filled-new-array {v0}, [I

    move-result-object v0

    const-string v1, "progress"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method
