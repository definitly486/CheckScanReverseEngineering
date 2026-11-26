.class public final Lio/appmetrica/analytics/push/impl/J;
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

    sget-object p0, Lio/appmetrica/analytics/push/impl/a1;->a:Lio/appmetrica/analytics/push/lazypush/LazyPushTransformRuleProvider;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lio/appmetrica/analytics/push/lazypush/LazyPushTransformRuleProvider;->getRule(Lio/appmetrica/analytics/push/model/PushMessage;)Lio/appmetrica/analytics/push/lazypush/LazyPushTransformRule;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
