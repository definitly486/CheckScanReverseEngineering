.class public final Lio/appmetrica/analytics/impl/xi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/io/IExecutionPolicy;


# instance fields
.field public final a:Lio/appmetrica/analytics/coreapi/internal/control/DataSendingRestrictionController;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/coreapi/internal/control/DataSendingRestrictionController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/xi;->a:Lio/appmetrica/analytics/coreapi/internal/control/DataSendingRestrictionController;

    const-string p1, "data restriction based"

    iput-object p1, p0, Lio/appmetrica/analytics/impl/xi;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final canBeExecuted()Z
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/xi;->a:Lio/appmetrica/analytics/coreapi/internal/control/DataSendingRestrictionController;

    invoke-interface {p0}, Lio/appmetrica/analytics/coreapi/internal/control/DataSendingRestrictionController;->isRestrictedForSdk()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final description()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/impl/xi;->b:Ljava/lang/String;

    return-object p0
.end method
