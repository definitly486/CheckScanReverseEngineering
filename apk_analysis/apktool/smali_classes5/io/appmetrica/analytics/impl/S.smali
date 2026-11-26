.class public final Lio/appmetrica/analytics/impl/S;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/Cg;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/Cg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/S;->a:Lio/appmetrica/analytics/impl/Cg;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;)Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "io.appmetrica.analytics.identifiers.extra.PROVIDER"

    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lj59;->a:Lj59;

    sget p2, Lio/appmetrica/analytics/identifiers/internal/AdvIdentifiersProvider;->a:I

    const-class p2, Landroid/content/Context;

    const-class v2, Landroid/os/Bundle;

    filled-new-array {p2, v2}, [Ljava/lang/Class;

    move-result-object p2

    const-string v2, "requestIdentifiers"

    const-class v3, Lio/appmetrica/analytics/identifiers/internal/AdvIdentifiersProvider;

    invoke-virtual {v3, v2, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    if-eqz p1, :cond_3

    iget-object p0, p0, Lio/appmetrica/analytics/impl/S;->a:Lio/appmetrica/analytics/impl/Cg;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "io.appmetrica.analytics.identifiers.extra.TRACKING_INFO"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_2

    sget-object p2, Lio/appmetrica/analytics/impl/G5;->a:Ljava/util/Map;

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1

    check-cast p2, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo$Provider;

    const-string v1, "io.appmetrica.analytics.identifiers.extra.ID"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "io.appmetrica.analytics.identifiers.extra.LIMITED"

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_0
    new-instance p0, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;

    invoke-direct {p0, p2, v1, v0}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;-><init>(Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo$Provider;Ljava/lang/String;Ljava/lang/Boolean;)V

    move-object v0, p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, " is invalid"

    const-string p2, "Provider "

    invoke-static {p0, p2, p1}, Lh8;->f(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lio/appmetrica/analytics/coreapi/internal/identifiers/IdentifierStatus;->Companion:Lio/appmetrica/analytics/coreapi/internal/identifiers/IdentifierStatus$Companion;

    const-string p2, "io.appmetrica.analytics.identifiers.extra.STATUS"

    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lio/appmetrica/analytics/coreapi/internal/identifiers/IdentifierStatus$Companion;->from(Ljava/lang/String;)Lio/appmetrica/analytics/coreapi/internal/identifiers/IdentifierStatus;

    move-result-object p0

    const-string p2, "io.appmetrica.analytics.identifiers.extra.ERROR_MESSAGE"

    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;

    invoke-direct {p2, v0, p0, p1}, Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfoResult;-><init>(Lio/appmetrica/analytics/coreapi/internal/identifiers/AdTrackingInfo;Lio/appmetrica/analytics/coreapi/internal/identifiers/IdentifierStatus;Ljava/lang/String;)V

    return-object p2

    :cond_3
    return-object v0
.end method
