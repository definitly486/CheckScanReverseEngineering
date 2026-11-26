.class public final Lio/appmetrica/analytics/push/impl/e1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/push/lazypush/LazyPushTransformRuleProvider;


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/push/impl/e1;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getRule(Lio/appmetrica/analytics/push/model/PushMessage;)Lio/appmetrica/analytics/push/lazypush/LazyPushTransformRule;
    .locals 1

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/model/PushMessage;->getLazyPushRequestInfo()Lio/appmetrica/analytics/push/model/LazyPushRequestInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lio/appmetrica/analytics/push/impl/d1;

    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/e1;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lio/appmetrica/analytics/push/model/LazyPushRequestInfo;->getLocationRequestInfo()Lio/appmetrica/analytics/push/model/LocationRequestInfo;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lio/appmetrica/analytics/push/impl/d1;-><init>(Landroid/content/Context;Lio/appmetrica/analytics/push/model/LocationRequestInfo;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
