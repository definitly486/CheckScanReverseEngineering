.class public final Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsPresenter$f;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


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
        "Lnl3<",
        "Lqp5;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsPresenter$f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsPresenter$f;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lgh4;-><init>(I)V

    sput-object v0, Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsPresenter$f;->f:Lcom/warefly/checkscan/presentation/notifications/presenter/NotificationsPresenter$f;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lqp5;

    instance-of p0, p1, Lcp5;

    if-eqz p0, :cond_0

    check-cast p1, Lcp5;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 p0, 0x0

    if-eqz p1, :cond_1

    iget-boolean p1, p1, Lcp5;->e:Z

    if-nez p1, :cond_1

    const/4 p0, 0x1

    :cond_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
