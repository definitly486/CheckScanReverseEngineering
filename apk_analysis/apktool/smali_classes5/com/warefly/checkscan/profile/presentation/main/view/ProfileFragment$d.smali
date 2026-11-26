.class public final Lcom/warefly/checkscan/profile/presentation/main/view/ProfileFragment$d;
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

    iput-object p1, p0, Lcom/warefly/checkscan/profile/presentation/main/view/ProfileFragment$d;->f:Lcom/warefly/checkscan/profile/presentation/main/view/ProfileFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/warefly/checkscan/profile/presentation/main/view/ProfileFragment$d;->f:Lcom/warefly/checkscan/profile/presentation/main/view/ProfileFragment;

    invoke-static {p0, p1}, Landroidx/fragment/app/FragmentKt;->clearFragmentResult(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/warefly/checkscan/profile/presentation/main/view/ProfileFragment;->o()Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;->fetchProfileScreen()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
