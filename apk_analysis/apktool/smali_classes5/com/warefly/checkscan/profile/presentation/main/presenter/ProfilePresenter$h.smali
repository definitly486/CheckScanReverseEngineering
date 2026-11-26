.class public final Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter$h;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;->logout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Ljava/lang/Boolean;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter$h;->f:Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter$h;->f:Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p1

    check-cast p1, Lcom/warefly/checkscan/profile/presentation/main/view/ProfileView;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/warefly/checkscan/profile/presentation/main/view/ProfileView;->dismissLoadingDialog()V

    :cond_0
    invoke-static {p0}, Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;->access$getProfileRouter$p(Lcom/warefly/checkscan/profile/presentation/main/presenter/ProfilePresenter;)Lsm6;

    move-result-object p0

    invoke-interface {p0}, Lsm6;->b()V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
