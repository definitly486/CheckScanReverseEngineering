.class public Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsView$$State$ShowNotificationsCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowNotificationsCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lpz3;",
            ">;"
        }
    .end annotation
.end field

.field public final show:Z


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsView$$State;ZLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "+",
            "Lpz3;",
            ">;)V"
        }
    .end annotation

    const-string p1, "showNotifications"

    const-class v0, Lk9;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-boolean p2, p0, Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsView$$State$ShowNotificationsCommand;->show:Z

    iput-object p3, p0, Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsView$$State$ShowNotificationsCommand;->data:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsView;)V
    .locals 1

    iget-boolean v0, p0, Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsView$$State$ShowNotificationsCommand;->show:Z

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsView$$State$ShowNotificationsCommand;->data:Ljava/util/List;

    invoke-interface {p1, v0, p0}, Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsView;->showNotifications(ZLjava/util/List;)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    .line 8
    check-cast p1, Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsView$$State$ShowNotificationsCommand;->apply(Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsView;)V

    return-void
.end method
