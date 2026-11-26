.class public abstract Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/core/ui/base/architecture/FlowView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VB::",
        "Landroidx/viewbinding/ViewBinding;",
        ">",
        "Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment<",
        "TVB;>;",
        "Lcom/warefly/checkscan/core/ui/base/architecture/FlowView;"
    }
.end annotation


# instance fields
.field public final f:I

.field public g:Z

.field public h:Ltc5;

.field public final i:Lfh8;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;-><init>()V

    const v0, 0x7f0d027e

    iput v0, p0, Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment;->f:I

    new-instance v0, Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment$a;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment$a;-><init>(Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment;)V

    new-instance v1, Lfh8;

    invoke-direct {v1, v0}, Lfh8;-><init>(Lll3;)V

    iput-object v1, p0, Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment;->i:Lfh8;

    return-void
.end method


# virtual methods
.method public e(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public i()I
    .locals 0

    iget p0, p0, Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment;->f:I

    return p0
.end method

.method public k()Z
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0a0211

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v1, v0, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->k()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment;->o()V

    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public final n()Lba8;
    .locals 1

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->g()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lba8;

    invoke-direct {v0, p0}, Lba8;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final o()V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment;->n()Lba8;

    move-result-object v0

    invoke-static {p0}, Le;->e(Landroid/content/ComponentCallbacks;)Lze7;

    move-result-object p0

    const-class v1, Luf3;

    const/4 v2, 0x0

    invoke-static {v1, p0, v0, v2}, Ln2;->c(Ljava/lang/Class;Lze7;Lba8;Li36;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Luf3;

    invoke-virtual {p0}, Luf3;->i()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
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

    new-instance v0, Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment$b;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment$b;-><init>(Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment;)V

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

    iput-object v0, p0, Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment;->h:Ltc5;

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

.method public onDestroy()V
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

    iget-boolean v0, p0, Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment;->g:Z

    if-nez v0, :cond_2

    :goto_0
    iget-object v0, p0, Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment;->h:Ltc5;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lm00;->g(Ltc5;)V

    :cond_2
    :goto_1
    invoke-super {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->onDestroy()V

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

.method public onResume()V
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

    iget-object v1, p0, Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment;->i:Lfh8;

    invoke-virtual {v1}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzl5;

    invoke-interface {v0, v1}, Lam5;->a(Lzl5;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment;->g:Z

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1}, Lfh5;->onSaveInstanceState(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment;->g:Z

    const-string v0, "state_scope_name"

    invoke-virtual {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseFragment;->g()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final varargs setLaunchScreen([Llk3;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/core/ui/base/architecture/FlowFragment;->i:Lfh8;

    invoke-virtual {p0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lzl5;

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Llk3;

    invoke-static {p0, p1}, Lpib;->b(Lzl5;[Llk3;)V

    return-void
.end method
