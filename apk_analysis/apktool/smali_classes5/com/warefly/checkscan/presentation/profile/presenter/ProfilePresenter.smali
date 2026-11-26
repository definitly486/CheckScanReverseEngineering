.class public final Lcom/warefly/checkscan/presentation/profile/presenter/ProfilePresenter;
.super Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter<",
        "Lcom/warefly/checkscan/presentation/profile/presenter/ProfileView;",
        ">;"
    }
.end annotation


# instance fields
.field private final emailValidator:Liw2;

.field private final preferencesRepository:Ljf6;

.field private final reason:Lcom/warefly/checkscan/presentation/profile/reason/ProfileReason;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/profile/reason/ProfileReason;Ljf6;Liw2;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/warefly/checkscan/core/ui/base/architecture/BasePresenter;-><init>()V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/profile/presenter/ProfilePresenter;->reason:Lcom/warefly/checkscan/presentation/profile/reason/ProfileReason;

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/profile/presenter/ProfilePresenter;->preferencesRepository:Ljf6;

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/profile/presenter/ProfilePresenter;->emailValidator:Liw2;

    return-void
.end method


# virtual methods
.method public onFirstViewAttach()V
    .locals 4

    invoke-super {p0}, Lih5;->onFirstViewAttach()V

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/profile/presenter/ProfilePresenter;->reason:Lcom/warefly/checkscan/presentation/profile/reason/ProfileReason;

    sget-object v1, Lcom/warefly/checkscan/presentation/profile/reason/ProfileReason$ChangeCity;->b:Lcom/warefly/checkscan/presentation/profile/reason/ProfileReason$ChangeCity;

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/profile/presenter/ProfileView;

    if-eqz p0, :cond_6

    new-instance v0, Lcg7;

    invoke-direct {v0, v3}, Lcg7;-><init>(I)V

    new-array v1, v2, [Llk3;

    aput-object v0, v1, v3

    invoke-interface {p0, v1}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowView;->setLaunchScreen([Llk3;)V

    return-void

    :cond_0
    sget-object v1, Lcom/warefly/checkscan/presentation/profile/reason/ProfileReason$ChangeEmail;->b:Lcom/warefly/checkscan/presentation/profile/reason/ProfileReason$ChangeEmail;

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/warefly/checkscan/presentation/profile/presenter/ProfilePresenter;->emailValidator:Liw2;

    iget-object v1, p0, Lcom/warefly/checkscan/presentation/profile/presenter/ProfilePresenter;->preferencesRepository:Ljf6;

    invoke-interface {v1}, Ljf6;->c0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Liw2;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/profile/presenter/ProfileView;

    if-eqz p0, :cond_6

    new-instance v0, Lix;

    sget-object v1, Lcom/warefly/checkscan/auth/presentation/flow/AuthReason$AddEmail;->b:Lcom/warefly/checkscan/auth/presentation/flow/AuthReason$AddEmail;

    invoke-direct {v0, v1}, Lix;-><init>(Lcom/warefly/checkscan/auth/presentation/flow/AuthReason;)V

    new-array v1, v2, [Llk3;

    aput-object v0, v1, v3

    invoke-interface {p0, v1}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowView;->setLaunchScreen([Llk3;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/profile/presenter/ProfileView;

    if-eqz p0, :cond_6

    new-array v0, v2, [Llk3;

    sget-object v1, Lzg7;->a:Lzg7;

    aput-object v1, v0, v3

    invoke-interface {p0, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowView;->setLaunchScreen([Llk3;)V

    return-void

    :cond_2
    sget-object v1, Lcom/warefly/checkscan/presentation/profile/reason/ProfileReason$ChangePhone;->b:Lcom/warefly/checkscan/presentation/profile/reason/ProfileReason$ChangePhone;

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/profile/presenter/ProfileView;

    if-eqz p0, :cond_6

    new-array v0, v2, [Llk3;

    sget-object v1, Lvf7;->a:Lvf7;

    aput-object v1, v0, v3

    invoke-interface {p0, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowView;->setLaunchScreen([Llk3;)V

    return-void

    :cond_3
    instance-of v1, v0, Lcom/warefly/checkscan/presentation/profile/reason/ProfileReason$FillMyData;

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object v0

    check-cast v0, Lcom/warefly/checkscan/presentation/profile/presenter/ProfileView;

    if-eqz v0, :cond_6

    new-instance v1, Lk66;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/profile/presenter/ProfilePresenter;->reason:Lcom/warefly/checkscan/presentation/profile/reason/ProfileReason;

    check-cast p0, Lcom/warefly/checkscan/presentation/profile/reason/ProfileReason$FillMyData;

    iget-boolean p0, p0, Lcom/warefly/checkscan/presentation/profile/reason/ProfileReason$FillMyData;->b:Z

    invoke-direct {v1, p0}, Lk66;-><init>(Z)V

    new-array p0, v2, [Llk3;

    aput-object v1, p0, v3

    invoke-interface {v0, p0}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowView;->setLaunchScreen([Llk3;)V

    return-void

    :cond_4
    sget-object v1, Lcom/warefly/checkscan/presentation/profile/reason/ProfileReason$MainProfile;->b:Lcom/warefly/checkscan/presentation/profile/reason/ProfileReason$MainProfile;

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/profile/presenter/ProfileView;

    if-eqz p0, :cond_6

    new-array v0, v2, [Llk3;

    sget-object v1, Lum6;->a:Lum6;

    aput-object v1, v0, v3

    invoke-interface {p0, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowView;->setLaunchScreen([Llk3;)V

    return-void

    :cond_5
    sget-object v1, Lcom/warefly/checkscan/presentation/profile/reason/ProfileReason$Notifications;->b:Lcom/warefly/checkscan/presentation/profile/reason/ProfileReason$Notifications;

    invoke-static {v0, v1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lih5;->getViewState()Ljh5;

    move-result-object p0

    check-cast p0, Lcom/warefly/checkscan/presentation/profile/presenter/ProfileView;

    if-eqz p0, :cond_6

    new-array v0, v2, [Llk3;

    sget-object v1, Leh7;->a:Leh7;

    aput-object v1, v0, v3

    invoke-interface {p0, v0}, Lcom/warefly/checkscan/core/ui/base/architecture/FlowView;->setLaunchScreen([Llk3;)V

    :cond_6
    return-void
.end method
