.class public abstract Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;
.implements Ljg4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VB::",
        "Landroidx/viewbinding/ViewBinding;",
        ">",
        "Landroidx/fragment/app/DialogFragment;",
        "Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;",
        "Ljg4;"
    }
.end annotation


# instance fields
.field public final b:Lfh8;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/fragment/app/DialogFragment;-><init>(I)V

    new-instance p1, Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog$a;

    invoke-direct {p1, p0}, Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog$a;-><init>(Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog;)V

    new-instance v0, Lfh8;

    invoke-direct {v0, p1}, Lfh8;-><init>(Lll3;)V

    iput-object v0, p0, Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog;->b:Lfh8;

    return-void
.end method


# virtual methods
.method public d(Landroid/view/View;)V
    .locals 1

    const/4 p0, 0x1

    const/16 v0, 0xf

    invoke-static {v0, p1, p0}, Loi9;->a(ILandroid/view/View;Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    const v1, 0x7f1501f3

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    iget-object p0, p0, Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog;->b:Lfh8;

    invoke-virtual {p0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgh5;

    invoke-virtual {p0, p1}, Lgh5;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    return-object p0

    :cond_1
    const v0, 0x7f1501f3

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    return-object p0
.end method

.method public final onResume()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    iget-object p0, p0, Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog;->b:Lfh8;

    invoke-virtual {p0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgh5;

    invoke-virtual {p0}, Lgh5;->a()V

    return-void
.end method

.method public final onStop()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStop()V

    iget-object p0, p0, Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog;->b:Lfh8;

    invoke-virtual {p0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgh5;

    invoke-virtual {v0}, Lgh5;->e()V

    invoke-virtual {p0}, Lfh8;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgh5;

    invoke-virtual {p0}, Lgh5;->d()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog;->d(Landroid/view/View;)V

    return-void
.end method

.method public final openUrl(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog$b;

    invoke-direct {v1, p0}, Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog$b;-><init>(Lcom/warefly/checkscan/core/ui/base/dialogs/FullScreenDialog;)V

    invoke-static {v0, p1, v1}, Loz1;->c(Landroid/content/Context;Ljava/lang/String;Lll3;)V

    :cond_0
    return-void
.end method

.method public final openUrlInCustomTab(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Li72;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
