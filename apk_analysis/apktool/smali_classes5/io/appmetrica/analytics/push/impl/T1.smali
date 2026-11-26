.class public final Lio/appmetrica/analytics/push/impl/T1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/push/lazypush/LazyPushTransformRuleProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getRule(Lio/appmetrica/analytics/push/model/PushMessage;)Lio/appmetrica/analytics/push/lazypush/LazyPushTransformRule;
    .locals 0

    new-instance p0, Lio/appmetrica/analytics/push/impl/S1;

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/model/PushMessage;->getNotificationId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lio/appmetrica/analytics/push/impl/S1;-><init>(Ljava/lang/String;)V

    return-object p0
.end method
