.class public Lfh5;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# instance fields
.field public b:Z

.field public c:Lgh5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgh5<",
            "+",
            "Lfh5;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final d()Lgh5;
    .locals 1

    iget-object v0, p0, Lfh5;->c:Lgh5;

    if-nez v0, :cond_0

    new-instance v0, Lgh5;

    invoke-direct {v0, p0}, Lgh5;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lfh5;->c:Lgh5;

    :cond_0
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lfh5;->d()Lgh5;

    move-result-object p0

    invoke-virtual {p0, p1}, Lgh5;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lfh5;->d()Lgh5;

    move-result-object p0

    invoke-virtual {p0}, Lgh5;->c()V

    return-void

    :cond_0
    iget-boolean v0, p0, Lfh5;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lfh5;->b:Z

    return-void

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    :goto_0
    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    move-result v1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    return-void

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lfh5;->d()Lgh5;

    move-result-object p0

    invoke-virtual {p0}, Lgh5;->c()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    invoke-virtual {p0}, Lfh5;->d()Lgh5;

    move-result-object v0

    invoke-virtual {v0}, Lgh5;->e()V

    invoke-virtual {p0}, Lfh5;->d()Lgh5;

    move-result-object p0

    invoke-virtual {p0}, Lgh5;->d()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lfh5;->b:Z

    invoke-virtual {p0}, Lfh5;->d()Lgh5;

    move-result-object p0

    invoke-virtual {p0}, Lgh5;->a()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lfh5;->b:Z

    invoke-virtual {p0}, Lfh5;->d()Lgh5;

    move-result-object v0

    invoke-virtual {v0, p1}, Lgh5;->f(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lfh5;->d()Lgh5;

    move-result-object p0

    invoke-virtual {p0}, Lgh5;->e()V

    return-void
.end method

.method public final onStart()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lfh5;->b:Z

    invoke-virtual {p0}, Lfh5;->d()Lgh5;

    move-result-object p0

    invoke-virtual {p0}, Lgh5;->a()V

    return-void
.end method

.method public final onStop()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    invoke-virtual {p0}, Lfh5;->d()Lgh5;

    move-result-object p0

    invoke-virtual {p0}, Lgh5;->e()V

    return-void
.end method
