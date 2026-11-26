.class public final Lcom/warefly/checkscan/profile/presentation/main/view/ProfileFragment$c;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/profile/presentation/main/view/ProfileFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lbm3<",
        "Ljava/lang/String;",
        "Landroid/os/Bundle;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/profile/presentation/main/view/ProfileFragment;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/profile/presentation/main/view/ProfileFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/profile/presentation/main/view/ProfileFragment$c;->f:Lcom/warefly/checkscan/profile/presentation/main/view/ProfileFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/profile/presentation/main/view/ProfileFragment$c;->f:Lcom/warefly/checkscan/profile/presentation/main/view/ProfileFragment;

    invoke-static {p0, p1}, Landroidx/fragment/app/FragmentKt;->clearFragmentResult(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    const-string v0, "DIALOG_TAG"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DELETE_ACCOUNT_TAG"

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/warefly/checkscan/profile/presentation/main/view/ProfileFragment;->o()Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;

    move-result-object p0

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;->handleDeleteResult(Z)V

    goto :goto_0

    :cond_0
    const-string v1, "LOG_OUT_TAG"

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/warefly/checkscan/profile/presentation/main/view/ProfileFragment;->o()Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;

    move-result-object p0

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;->handleLogOutResult(Z)V

    :cond_1
    :goto_0
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
