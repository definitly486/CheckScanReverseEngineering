.class public interface abstract Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/warefly/checkscan/core/ui/base/architecture/BaseView;


# virtual methods
.method public abstract showAgreementDialog(Ljava/lang/String;)V
.end method

.method public abstract showAllNotificationsLoaded()V
.end method

.method public abstract showEmptyNotifications(Z)V
.end method

.method public abstract showEmptyNotificationsProgress(Z)V
.end method

.method public abstract showNotifications(ZLjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "+",
            "Lpz3;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showOrdInfoDialog(Lb06;)V
.end method

.method public abstract showPageOfNotificationsProgress(Z)V
.end method

.method public abstract showRefreshNotificationsProgress(Z)V
.end method
