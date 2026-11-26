.class public final synthetic Lio/appmetrica/analytics/push/impl/l0;
.super Lqm3;
.source "SourceFile"

# interfaces
.implements Lbm3;


# static fields
.field public static final a:Lio/appmetrica/analytics/push/impl/l0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/push/impl/l0;

    invoke-direct {v0}, Lio/appmetrica/analytics/push/impl/l0;-><init>()V

    sput-object v0, Lio/appmetrica/analytics/push/impl/l0;->a:Lio/appmetrica/analytics/push/impl/l0;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-string v4, "setWhen(J)Landroidx/core/app/NotificationCompat$Builder;"

    const/4 v5, 0x0

    const/4 v1, 0x2

    const-class v2, Landroidx/core/app/NotificationCompat$Builder;

    const-string v3, "setWhen"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lqm3;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroidx/core/app/NotificationCompat$Builder;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    return-object p0
.end method
