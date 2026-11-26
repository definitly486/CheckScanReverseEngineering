.class public final Lcom/warefly/checkscan/presentation/flows/desktop/view/TabContainerFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/flows/desktop/view/TabContainerView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment<",
        "Lcom/warefly/checkscan/core/ui/databinding/LayoutContainerBinding;",
        ">;",
        "Lcom/warefly/checkscan/presentation/flows/desktop/view/TabContainerView;"
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

.field public final g:Landroidx/navigation/NavArgsLazy;

.field public h:Ltc5;

.field public i:Z

.field public final j:Lfh8;

.field public presenter:Lcom/warefly/checkscan/presentation/flows/desktop/presenter/TabContainerPresenter;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lbs6;

    const-class v1, Lcom/warefly/checkscan/presentation/flows/desktop/view/TabContainerFragment;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/warefly/checkscan/core/ui/databinding/LayoutContainerBinding;"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lbs6;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v1, Lx07;->a:La17;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Lze4;

    aput-object v0, v1, v4

    sput-object v1, Lcom/warefly/checkscan/presentation/flows/desktop/view/TabContainerFragment;->k:[Lze4;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;-><init>()V

    const v0, 0x7f0d027e

    iput v0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/view/TabContainerFragment;->f:I

    new-instance v0, Landroidx/navigation/NavArgsLazy;

    const-class v1, Lki8;

    invoke-static {v1}, Lx07;->a(Ljava/lang/Class;)Lzk1;

    move-result-object v1

    new-instance v2, Lcom/warefly/checkscan/presentation/flows/desktop/view/TabContainerFragment$c;

    invoke-direct {v2, p0}, Lcom/warefly/checkscan/presentation/flows/desktop/view/TabContainerFragment$c;-><init>(Lcom/warefly/checkscan/presentation/flows/desktop/view/TabContainerFragment;)V

    invoke-direct {v0, v1, v2}, Landroidx/navigation/NavArgsLazy;-><init>(Lne4;Lll3;)V

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/view/TabContainerFragment;->g:Landroidx/navigation/NavArgsLazy;

    new-instance v0, Lcom/warefly/checkscan/presentation/flows/desktop/view/TabContainerFragment$a;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/flows/desktop/view/TabContainerFragment$a;-><init>(Lcom/warefly/checkscan/presentation/flows/desktop/view/TabContainerFragment;)V

    new-instance v1, Lfh8;

    invoke-direct {v1, v0}, Lfh8;-><init>(Lll3;)V

    iput-object v1, p0, Lcom/warefly/checkscan/presentation/flows/desktop/view/TabContainerFragment;->j:Lfh8;

    return-void
.end method


# virtual methods
.method public final i()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/view/TabContainerFragment;->f:I

    return p0
.end method

.method public final k()Z
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0a0211

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->k()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    const/4 v3, 0x2

    if-ge v0, v3, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->g()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lba8;

    invoke-direct {v3, v0}, Lba8;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object p0

    const-class v0, Luf3;

    invoke-static {v0, p0, v3, v2}, Ln2;->c(Ljava/lang/Class;Lze7;Lba8;Li36;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Luf3;

    invoke-virtual {p0}, Lo87;->c()V

    return v1
.end method

.method public final n()Z
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean p0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/view/TabContainerFragment;->i:Z

    if-nez p0, :cond_2

    :goto_0
    return v1

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    if-eqz p1, :cond_0

    const-string v0, "state_scope_name"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-static {p0}, Lfd0;->a(Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->d:Ljava/lang/String;

    new-instance v0, Lcom/warefly/checkscan/presentation/flows/desktop/view/TabContainerFragment$b;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/flows/desktop/view/TabContainerFragment$b;-><init>(Lcom/warefly/checkscan/presentation/flows/desktop/view/TabContainerFragment;)V

    invoke-static {v0}, Lh;->c(Lnl3;)Ltc5;

    move-result-object v0

    sget-object v1, Lc;->c:Lc;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lc;->d:Lhg4;

    if-eqz v2, :cond_2

    invoke-static {v0}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lhg4;->b(Ljava/util/List;ZZ)V

    sget-object v2, Lj59;->a:Lj59;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    iput-object v0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/view/TabContainerFragment;->h:Ltc5;

    invoke-super {p0, p1}, Lfh5;->onCreate(Landroid/os/Bundle;)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    :try_start_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "KoinApplication has not been started"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit v1

    throw p0
.end method

.method public final onDestroy()V
    .locals 1

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/flows/desktop/view/TabContainerFragment;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/view/TabContainerFragment;->h:Ltc5;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lm00;->g(Ltc5;)V

    :cond_0
    invoke-super {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->onDestroy()V

    return-void
.end method

.method public final onHiddenChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/warefly/checkscan/presentation/flows/desktop/view/TabContainerFragment;->g:Landroidx/navigation/NavArgsLazy;

    invoke-interface {p1}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lki8;

    iget-object p1, p1, Lki8;->a:Lri8;

    sget-object v0, Lri8;->Games:Lri8;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string p1, "games_tab_shown"

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/FragmentManager;->setFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public final onPause()V
    .locals 4

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NAVIGATOR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lba8;

    invoke-direct {v1, v0}, Lba8;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v0

    const-class v2, Lam5;

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3}, Ln2;->c(Ljava/lang/Class;Lze7;Lba8;Li36;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam5;

    invoke-interface {v0}, Lam5;->b()V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 4

    invoke-super {p0}, Lfh5;->onResume()V

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NAVIGATOR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lba8;

    invoke-direct {v1, v0}, Lba8;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v0

    const-class v2, Lam5;

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3}, Ln2;->c(Ljava/lang/Class;Lze7;Lba8;Li36;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam5;

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/flows/desktop/view/TabContainerFragment;->j:Lfh8;

    invoke-virtual {v1}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzl5;

    invoke-interface {v0, v1}, Lam5;->a(Lzl5;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/view/TabContainerFragment;->i:Z

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1}, Lfh5;->onSaveInstanceState(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/view/TabContainerFragment;->i:Z

    const-string v0, "state_scope_name"

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/warefly/checkscan/CheckScanApplication;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "state_launch_flag"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "state_scope_was_closed"

    invoke-virtual {p0}, Lcom/warefly/checkscan/presentation/flows/desktop/view/TabContainerFragment;->n()Z

    move-result p0

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void

    :cond_0
    const-string p0, "appCode"

    invoke-static {p0}, Laa4;->j(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final providePresenter()Lcom/warefly/checkscan/presentation/flows/desktop/presenter/TabContainerPresenter;
    .locals 6

    new-instance v0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/TabContainerPresenter;

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/flows/desktop/view/TabContainerFragment;->g:Landroidx/navigation/NavArgsLazy;

    invoke-interface {v1}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lki8;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object v3

    const-class v4, Lpr0;

    const/4 v5, 0x0

    invoke-static {v4, v3, v5, v5}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpr0;

    invoke-interface {v1}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lki8;

    iget-object v1, v1, Lki8;->c:Lcom/warefly/checkscan/presentation/Deeplink$Desktop;

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object p0

    const-class v4, Ljf6;

    invoke-static {v4, p0, v5, v5}, Lm2;->c(Ljava/lang/Class;Lze7;Lkv6;Li36;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljf6;

    invoke-direct {v0, v2, v3, v1, p0}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/TabContainerPresenter;-><init>(Lki8;Lpr0;Lcom/warefly/checkscan/presentation/Deeplink$Desktop;Ljf6;)V

    return-object v0
.end method

.method public final setScreenForContainer(Llk3;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/flows/desktop/view/TabContainerFragment;->j:Lfh8;

    invoke-virtual {p0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzl5;

    const/4 v0, 0x1

    new-array v0, v0, [Llk3;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Lpib;->b(Lzl5;[Llk3;)V

    return-void
.end method
