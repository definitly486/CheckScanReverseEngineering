.class public final synthetic Lio/appmetrica/analytics/push/impl/U;
.super Lqm3;
.source "SourceFile"

# interfaces
.implements Lfm3;


# static fields
.field public static final a:Lio/appmetrica/analytics/push/impl/U;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/push/impl/U;

    invoke-direct {v0}, Lio/appmetrica/analytics/push/impl/U;-><init>()V

    sput-object v0, Lio/appmetrica/analytics/push/impl/U;->a:Lio/appmetrica/analytics/push/impl/U;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-string v4, "setLights(III)Landroidx/core/app/NotificationCompat$Builder;"

    const/4 v5, 0x0

    const/4 v1, 0x4

    const-class v2, Landroidx/core/app/NotificationCompat$Builder;

    const-string v3, "setLights"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lqm3;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/core/app/NotificationCompat$Builder;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p0

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p2

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p1, p0, p2, p3}, Landroidx/core/app/NotificationCompat$Builder;->setLights(III)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    return-object p0
.end method
