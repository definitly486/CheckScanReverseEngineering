.class public final Lio/appmetrica/analytics/push/impl/I2;
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

    iput-object p1, p0, Lio/appmetrica/analytics/push/impl/I2;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getRule(Lio/appmetrica/analytics/push/model/PushMessage;)Lio/appmetrica/analytics/push/lazypush/LazyPushTransformRule;
    .locals 0

    new-instance p1, Lio/appmetrica/analytics/push/impl/H2;

    iget-object p0, p0, Lio/appmetrica/analytics/push/impl/I2;->a:Landroid/content/Context;

    invoke-direct {p1, p0}, Lio/appmetrica/analytics/push/impl/H2;-><init>(Landroid/content/Context;)V

    return-object p1
.end method
