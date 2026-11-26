.class public Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State;
.super Lkh5;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$SetUpScanButtonImageCommand;,
        Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$ShowTasksAnimatedBadgeCommand;,
        Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$ShowScanButtonCommand;,
        Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$SetBottomTabsCommand;,
        Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$SetTabCommand;,
        Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$ShowUnreadNotificationsBadgeCommand;,
        Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$ShowNoInternetConnectionCommand;,
        Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$ShowUpdateAvailableCommand;,
        Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$SetBottomSelectedIconCommand;,
        Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$SetBottomItemCommand;,
        Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$SetUpChequesToolbarCommand;,
        Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$SetUpDiscountToolbarCommand;,
        Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$SetUpDefaultToolbarCommand;,
        Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$ShowToolbarCommand;,
        Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$RequestPushPermissionCommand;,
        Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$RequestSystemPermissionCommand;,
        Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$ShowPushPermissionDialogCommand;,
        Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$SetAvatarCommand;,
        Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$SetBadgeTypeCommand;,
        Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$ShowCoinAnimCommand;,
        Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$ShowBottomBannerCommand;,
        Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$ShowFloatingButtonCommand;,
        Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$HideFloatingButtonCommand;,
        Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$ShowOrdAdDialogCommand;,
        Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$OpenUrlCommand;,
        Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$OpenUrlInCustomTabCommand;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkh5<",
        "Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;",
        ">;",
        "Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkh5;-><init>()V

    return-void
.end method


# virtual methods
.method public hideFloatingButton()V
    .locals 3

    new-instance v0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$HideFloatingButtonCommand;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$HideFloatingButtonCommand;-><init>(Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State;)V

    iget-object v1, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {v1, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object v2

    iget-object v1, v1, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {v2, v1, v0}, Lb78;->b(Ljava/util/List;Lwd9;)V

    invoke-virtual {p0}, Lkh5;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lkh5;->mViews:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;

    invoke-interface {v2}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;->hideFloatingButton()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {p0, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object v1

    iget-object p0, p0, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {v1, p0, v0}, Lb78;->a(Ljava/util/List;Lwd9;)V

    return-void
.end method

.method public openUrl(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$OpenUrlCommand;

    invoke-direct {v0, p0, p1}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$OpenUrlCommand;-><init>(Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State;Ljava/lang/String;)V

    iget-object v1, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {v1, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object v2

    iget-object v1, v1, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {v2, v1, v0}, Lb78;->b(Ljava/util/List;Lwd9;)V

    invoke-virtual {p0}, Lkh5;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lkh5;->mViews:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;

    invoke-interface {v2, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;->openUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {p0, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object p1

    iget-object p0, p0, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {p1, p0, v0}, Lb78;->a(Ljava/util/List;Lwd9;)V

    return-void
.end method

.method public openUrlInCustomTab(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$OpenUrlInCustomTabCommand;

    invoke-direct {v0, p0, p1}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$OpenUrlInCustomTabCommand;-><init>(Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State;Ljava/lang/String;)V

    iget-object v1, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {v1, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object v2

    iget-object v1, v1, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {v2, v1, v0}, Lb78;->b(Ljava/util/List;Lwd9;)V

    invoke-virtual {p0}, Lkh5;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lkh5;->mViews:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;

    invoke-interface {v2, p1}, Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;->openUrlInCustomTab(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {p0, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object p1

    iget-object p0, p0, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {p1, p0, v0}, Lb78;->a(Ljava/util/List;Lwd9;)V

    return-void
.end method

.method public requestPushPermission()V
    .locals 3

    new-instance v0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$RequestPushPermissionCommand;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$RequestPushPermissionCommand;-><init>(Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State;)V

    iget-object v1, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {v1, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object v2

    iget-object v1, v1, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {v2, v1, v0}, Lb78;->b(Ljava/util/List;Lwd9;)V

    invoke-virtual {p0}, Lkh5;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lkh5;->mViews:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;

    invoke-interface {v2}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;->requestPushPermission()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {p0, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object v1

    iget-object p0, p0, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {v1, p0, v0}, Lb78;->a(Ljava/util/List;Lwd9;)V

    return-void
.end method

.method public requestSystemPermission()V
    .locals 3

    new-instance v0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$RequestSystemPermissionCommand;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$RequestSystemPermissionCommand;-><init>(Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State;)V

    iget-object v1, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {v1, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object v2

    iget-object v1, v1, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {v2, v1, v0}, Lb78;->b(Ljava/util/List;Lwd9;)V

    invoke-virtual {p0}, Lkh5;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lkh5;->mViews:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;

    invoke-interface {v2}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;->requestSystemPermission()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {p0, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object v1

    iget-object p0, p0, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {v1, p0, v0}, Lb78;->a(Ljava/util/List;Lwd9;)V

    return-void
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$SetAvatarCommand;

    invoke-direct {v0, p0, p1}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$SetAvatarCommand;-><init>(Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State;Ljava/lang/String;)V

    iget-object v1, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {v1, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object v2

    iget-object v1, v1, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {v2, v1, v0}, Lb78;->b(Ljava/util/List;Lwd9;)V

    invoke-virtual {p0}, Lkh5;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lkh5;->mViews:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;

    invoke-interface {v2, p1}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;->setAvatar(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {p0, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object p1

    iget-object p0, p0, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {p1, p0, v0}, Lb78;->a(Ljava/util/List;Lwd9;)V

    return-void
.end method

.method public setBadgeType(Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b;)V
    .locals 3

    new-instance v0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$SetBadgeTypeCommand;

    invoke-direct {v0, p0, p1}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$SetBadgeTypeCommand;-><init>(Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State;Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b;)V

    iget-object v1, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {v1, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object v2

    iget-object v1, v1, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {v2, v1, v0}, Lb78;->b(Ljava/util/List;Lwd9;)V

    invoke-virtual {p0}, Lkh5;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lkh5;->mViews:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;

    invoke-interface {v2, p1}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;->setBadgeType(Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView$b;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {p0, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object p1

    iget-object p0, p0, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {p1, p0, v0}, Lb78;->a(Ljava/util/List;Lwd9;)V

    return-void
.end method

.method public setBottomItem(Lri8;)V
    .locals 3

    new-instance v0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$SetBottomItemCommand;

    invoke-direct {v0, p0, p1}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$SetBottomItemCommand;-><init>(Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State;Lri8;)V

    iget-object v1, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {v1, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object v2

    iget-object v1, v1, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {v2, v1, v0}, Lb78;->b(Ljava/util/List;Lwd9;)V

    invoke-virtual {p0}, Lkh5;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lkh5;->mViews:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;

    invoke-interface {v2, p1}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;->setBottomItem(Lri8;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {p0, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object p1

    iget-object p0, p0, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {p1, p0, v0}, Lb78;->a(Ljava/util/List;Lwd9;)V

    return-void
.end method

.method public setBottomSelectedIcon(Lri8;)V
    .locals 3

    new-instance v0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$SetBottomSelectedIconCommand;

    invoke-direct {v0, p0, p1}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$SetBottomSelectedIconCommand;-><init>(Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State;Lri8;)V

    iget-object v1, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {v1, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object v2

    iget-object v1, v1, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {v2, v1, v0}, Lb78;->b(Ljava/util/List;Lwd9;)V

    invoke-virtual {p0}, Lkh5;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lkh5;->mViews:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;

    invoke-interface {v2, p1}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;->setBottomSelectedIcon(Lri8;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {p0, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object p1

    iget-object p0, p0, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {p1, p0, v0}, Lb78;->a(Ljava/util/List;Lwd9;)V

    return-void
.end method

.method public setBottomTabs(Z)V
    .locals 3

    new-instance v0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$SetBottomTabsCommand;

    invoke-direct {v0, p0, p1}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$SetBottomTabsCommand;-><init>(Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State;Z)V

    iget-object v1, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {v1, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object v2

    iget-object v1, v1, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {v2, v1, v0}, Lb78;->b(Ljava/util/List;Lwd9;)V

    invoke-virtual {p0}, Lkh5;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lkh5;->mViews:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;

    invoke-interface {v2, p1}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;->setBottomTabs(Z)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {p0, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object p1

    iget-object p0, p0, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {p1, p0, v0}, Lb78;->a(Ljava/util/List;Lwd9;)V

    return-void
.end method

.method public setTab(Lri8;Lcom/warefly/checkscan/presentation/Deeplink$Desktop;)V
    .locals 3

    new-instance v0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$SetTabCommand;

    invoke-direct {v0, p0, p1, p2}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$SetTabCommand;-><init>(Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State;Lri8;Lcom/warefly/checkscan/presentation/Deeplink$Desktop;)V

    iget-object v1, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {v1, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object v2

    iget-object v1, v1, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {v2, v1, v0}, Lb78;->b(Ljava/util/List;Lwd9;)V

    invoke-virtual {p0}, Lkh5;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lkh5;->mViews:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;

    invoke-interface {v2, p1, p2}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;->setTab(Lri8;Lcom/warefly/checkscan/presentation/Deeplink$Desktop;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {p0, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object p1

    iget-object p0, p0, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {p1, p0, v0}, Lb78;->a(Ljava/util/List;Lwd9;)V

    return-void
.end method

.method public setUpChequesToolbar()V
    .locals 3

    new-instance v0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$SetUpChequesToolbarCommand;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$SetUpChequesToolbarCommand;-><init>(Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State;)V

    iget-object v1, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {v1, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object v2

    iget-object v1, v1, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {v2, v1, v0}, Lb78;->b(Ljava/util/List;Lwd9;)V

    invoke-virtual {p0}, Lkh5;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lkh5;->mViews:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;

    invoke-interface {v2}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;->setUpChequesToolbar()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {p0, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object v1

    iget-object p0, p0, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {v1, p0, v0}, Lb78;->a(Ljava/util/List;Lwd9;)V

    return-void
.end method

.method public setUpDefaultToolbar()V
    .locals 3

    new-instance v0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$SetUpDefaultToolbarCommand;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$SetUpDefaultToolbarCommand;-><init>(Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State;)V

    iget-object v1, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {v1, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object v2

    iget-object v1, v1, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {v2, v1, v0}, Lb78;->b(Ljava/util/List;Lwd9;)V

    invoke-virtual {p0}, Lkh5;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lkh5;->mViews:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;

    invoke-interface {v2}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;->setUpDefaultToolbar()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {p0, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object v1

    iget-object p0, p0, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {v1, p0, v0}, Lb78;->a(Ljava/util/List;Lwd9;)V

    return-void
.end method

.method public setUpDiscountToolbar()V
    .locals 3

    new-instance v0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$SetUpDiscountToolbarCommand;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$SetUpDiscountToolbarCommand;-><init>(Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State;)V

    iget-object v1, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {v1, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object v2

    iget-object v1, v1, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {v2, v1, v0}, Lb78;->b(Ljava/util/List;Lwd9;)V

    invoke-virtual {p0}, Lkh5;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lkh5;->mViews:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;

    invoke-interface {v2}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;->setUpDiscountToolbar()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {p0, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object v1

    iget-object p0, p0, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {v1, p0, v0}, Lb78;->a(Ljava/util/List;Lwd9;)V

    return-void
.end method

.method public setUpScanButtonImage(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$SetUpScanButtonImageCommand;

    invoke-direct {v0, p0, p1}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$SetUpScanButtonImageCommand;-><init>(Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State;Ljava/lang/String;)V

    iget-object v1, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {v1, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object v2

    iget-object v1, v1, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {v2, v1, v0}, Lb78;->b(Ljava/util/List;Lwd9;)V

    invoke-virtual {p0}, Lkh5;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lkh5;->mViews:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;

    invoke-interface {v2, p1}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;->setUpScanButtonImage(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {p0, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object p1

    iget-object p0, p0, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {p1, p0, v0}, Lb78;->a(Ljava/util/List;Lwd9;)V

    return-void
.end method

.method public showBottomBanner(Lhc0$a;)V
    .locals 3

    new-instance v0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$ShowBottomBannerCommand;

    invoke-direct {v0, p0, p1}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$ShowBottomBannerCommand;-><init>(Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State;Lhc0$a;)V

    iget-object v1, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {v1, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object v2

    iget-object v1, v1, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {v2, v1, v0}, Lb78;->b(Ljava/util/List;Lwd9;)V

    invoke-virtual {p0}, Lkh5;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lkh5;->mViews:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;

    invoke-interface {v2, p1}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;->showBottomBanner(Lhc0$a;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {p0, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object p1

    iget-object p0, p0, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {p1, p0, v0}, Lb78;->a(Ljava/util/List;Lwd9;)V

    return-void
.end method

.method public showCoinAnim()V
    .locals 3

    new-instance v0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$ShowCoinAnimCommand;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$ShowCoinAnimCommand;-><init>(Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State;)V

    iget-object v1, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {v1, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object v2

    iget-object v1, v1, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {v2, v1, v0}, Lb78;->b(Ljava/util/List;Lwd9;)V

    invoke-virtual {p0}, Lkh5;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lkh5;->mViews:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;

    invoke-interface {v2}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;->showCoinAnim()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {p0, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object v1

    iget-object p0, p0, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {v1, p0, v0}, Lb78;->a(Ljava/util/List;Lwd9;)V

    return-void
.end method

.method public showFloatingButton(Led3;)V
    .locals 3

    new-instance v0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$ShowFloatingButtonCommand;

    invoke-direct {v0, p0, p1}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$ShowFloatingButtonCommand;-><init>(Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State;Led3;)V

    iget-object v1, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {v1, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object v2

    iget-object v1, v1, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {v2, v1, v0}, Lb78;->b(Ljava/util/List;Lwd9;)V

    invoke-virtual {p0}, Lkh5;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lkh5;->mViews:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;

    invoke-interface {v2, p1}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;->showFloatingButton(Led3;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {p0, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object p1

    iget-object p0, p0, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {p1, p0, v0}, Lb78;->a(Ljava/util/List;Lwd9;)V

    return-void
.end method

.method public showNoInternetConnection(Z)V
    .locals 3

    new-instance v0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$ShowNoInternetConnectionCommand;

    invoke-direct {v0, p0, p1}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$ShowNoInternetConnectionCommand;-><init>(Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State;Z)V

    iget-object v1, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {v1, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object v2

    iget-object v1, v1, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {v2, v1, v0}, Lb78;->b(Ljava/util/List;Lwd9;)V

    invoke-virtual {p0}, Lkh5;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lkh5;->mViews:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;

    invoke-interface {v2, p1}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;->showNoInternetConnection(Z)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {p0, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object p1

    iget-object p0, p0, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {p1, p0, v0}, Lb78;->a(Ljava/util/List;Lwd9;)V

    return-void
.end method

.method public showOrdAdDialog(Lb06;)V
    .locals 3

    new-instance v0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$ShowOrdAdDialogCommand;

    invoke-direct {v0, p0, p1}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$ShowOrdAdDialogCommand;-><init>(Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State;Lb06;)V

    iget-object v1, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {v1, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object v2

    iget-object v1, v1, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {v2, v1, v0}, Lb78;->b(Ljava/util/List;Lwd9;)V

    invoke-virtual {p0}, Lkh5;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lkh5;->mViews:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;

    invoke-interface {v2, p1}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;->showOrdAdDialog(Lb06;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {p0, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object p1

    iget-object p0, p0, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {p1, p0, v0}, Lb78;->a(Ljava/util/List;Lwd9;)V

    return-void
.end method

.method public showPushPermissionDialog()V
    .locals 3

    new-instance v0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$ShowPushPermissionDialogCommand;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$ShowPushPermissionDialogCommand;-><init>(Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State;)V

    iget-object v1, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {v1, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object v2

    iget-object v1, v1, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {v2, v1, v0}, Lb78;->b(Ljava/util/List;Lwd9;)V

    invoke-virtual {p0}, Lkh5;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lkh5;->mViews:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;

    invoke-interface {v2}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;->showPushPermissionDialog()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {p0, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object v1

    iget-object p0, p0, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {v1, p0, v0}, Lb78;->a(Ljava/util/List;Lwd9;)V

    return-void
.end method

.method public showScanButton(Z)V
    .locals 3

    new-instance v0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$ShowScanButtonCommand;

    invoke-direct {v0, p0, p1}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$ShowScanButtonCommand;-><init>(Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State;Z)V

    iget-object v1, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {v1, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object v2

    iget-object v1, v1, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {v2, v1, v0}, Lb78;->b(Ljava/util/List;Lwd9;)V

    invoke-virtual {p0}, Lkh5;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lkh5;->mViews:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;

    invoke-interface {v2, p1}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;->showScanButton(Z)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {p0, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object p1

    iget-object p0, p0, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {p1, p0, v0}, Lb78;->a(Ljava/util/List;Lwd9;)V

    return-void
.end method

.method public showTasksAnimatedBadge(Z)V
    .locals 3

    new-instance v0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$ShowTasksAnimatedBadgeCommand;

    invoke-direct {v0, p0, p1}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$ShowTasksAnimatedBadgeCommand;-><init>(Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State;Z)V

    iget-object v1, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {v1, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object v2

    iget-object v1, v1, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {v2, v1, v0}, Lb78;->b(Ljava/util/List;Lwd9;)V

    invoke-virtual {p0}, Lkh5;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lkh5;->mViews:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;

    invoke-interface {v2, p1}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;->showTasksAnimatedBadge(Z)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {p0, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object p1

    iget-object p0, p0, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {p1, p0, v0}, Lb78;->a(Ljava/util/List;Lwd9;)V

    return-void
.end method

.method public showToolbar(Z)V
    .locals 3

    new-instance v0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$ShowToolbarCommand;

    invoke-direct {v0, p0, p1}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$ShowToolbarCommand;-><init>(Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State;Z)V

    iget-object v1, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {v1, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object v2

    iget-object v1, v1, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {v2, v1, v0}, Lb78;->b(Ljava/util/List;Lwd9;)V

    invoke-virtual {p0}, Lkh5;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lkh5;->mViews:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;

    invoke-interface {v2, p1}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;->showToolbar(Z)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {p0, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object p1

    iget-object p0, p0, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {p1, p0, v0}, Lb78;->a(Ljava/util/List;Lwd9;)V

    return-void
.end method

.method public showUnreadNotificationsBadge(Z)V
    .locals 3

    new-instance v0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$ShowUnreadNotificationsBadgeCommand;

    invoke-direct {v0, p0, p1}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$ShowUnreadNotificationsBadgeCommand;-><init>(Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State;Z)V

    iget-object v1, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {v1, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object v2

    iget-object v1, v1, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {v2, v1, v0}, Lb78;->b(Ljava/util/List;Lwd9;)V

    invoke-virtual {p0}, Lkh5;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lkh5;->mViews:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;

    invoke-interface {v2, p1}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;->showUnreadNotificationsBadge(Z)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {p0, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object p1

    iget-object p0, p0, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {p1, p0, v0}, Lb78;->a(Ljava/util/List;Lwd9;)V

    return-void
.end method

.method public showUpdateAvailable()V
    .locals 3

    new-instance v0, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$ShowUpdateAvailableCommand;

    invoke-direct {v0, p0}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State$ShowUpdateAvailableCommand;-><init>(Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView$$State;)V

    iget-object v1, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {v1, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object v2

    iget-object v1, v1, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {v2, v1, v0}, Lb78;->b(Ljava/util/List;Lwd9;)V

    invoke-virtual {p0}, Lkh5;->hasNotView()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lkh5;->mViews:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;

    invoke-interface {v2}, Lcom/warefly/checkscan/presentation/flows/desktop/presenter/DesktopView;->showUpdateAvailable()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lkh5;->mViewCommands:Lxd9;

    invoke-virtual {p0, v0}, Lxd9;->a(Lwd9;)Lb78;

    move-result-object v1

    iget-object p0, p0, Lxd9;->a:Ljava/util/ArrayList;

    invoke-interface {v1, p0, v0}, Lb78;->a(Ljava/util/List;Lwd9;)V

    return-void
.end method
