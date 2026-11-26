.class public Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsView$$State$ShowEmptyNotificationsProgressCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowEmptyNotificationsProgressCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final show:Z


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsView$$State;Z)V
    .locals 1

    const-string p1, "showEmptyNotificationsProgress"

    const-class v0, Lk9;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-boolean p2, p0, Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsView$$State$ShowEmptyNotificationsProgressCommand;->show:Z

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsView;)V
    .locals 0

    .line 6
    iget-boolean p0, p0, Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsView$$State$ShowEmptyNotificationsProgressCommand;->show:Z

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsView;->showEmptyNotificationsProgress(Z)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsView$$State$ShowEmptyNotificationsProgressCommand;->apply(Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsView;)V

    return-void
.end method
