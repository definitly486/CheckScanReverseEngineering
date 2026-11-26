.class public final synthetic Lio/appmetrica/analytics/push/impl/a0;
.super Lqm3;
.source "SourceFile"

# interfaces
.implements Lbm3;


# static fields
.field public static final a:Lio/appmetrica/analytics/push/impl/a0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/push/impl/a0;

    invoke-direct {v0}, Lio/appmetrica/analytics/push/impl/a0;-><init>()V

    sput-object v0, Lio/appmetrica/analytics/push/impl/a0;->a:Lio/appmetrica/analytics/push/impl/a0;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-string v4, "setShowWhen(Z)Landroidx/core/app/NotificationCompat$Builder;"

    const/4 v5, 0x0

    const/4 v1, 0x2

    const-class v2, Landroidx/core/app/NotificationCompat$Builder;

    const-string v3, "setShowWhen"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lqm3;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/core/app/NotificationCompat$Builder;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/core/app/NotificationCompat$Builder;->setShowWhen(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    return-object p0
.end method
