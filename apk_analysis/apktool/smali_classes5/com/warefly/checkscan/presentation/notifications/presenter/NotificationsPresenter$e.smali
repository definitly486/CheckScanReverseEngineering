.class public final Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsPresenter$e;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lbm3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsPresenter;->onDestroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lbm3<",
        "Ljava/lang/Integer;",
        "Lqp5;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsPresenter;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsPresenter$e;->f:Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsPresenter;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Lqp5;

    const/4 p2, 0x0

    if-ltz p1, :cond_0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsPresenter$e;->f:Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsPresenter;

    invoke-static {p0}, Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsPresenter;->access$getLastVisibleItemPosition$p(Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsPresenter;)I

    move-result p0

    if-gt p1, p0, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
