.class public final Lio/appmetrica/analytics/billing/internal/ServiceSideBillingConfigWrapper$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appmetrica/analytics/billing/internal/ServiceSideBillingConfigWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljh2;)V
    .locals 0

    invoke-direct {p0}, Lio/appmetrica/analytics/billing/internal/ServiceSideBillingConfigWrapper$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final toWrapper$billing_release(Lio/appmetrica/analytics/billing/impl/B;)Lio/appmetrica/analytics/billing/internal/ServiceSideBillingConfigWrapper;
    .locals 0

    new-instance p0, Lio/appmetrica/analytics/billing/internal/ServiceSideBillingConfigWrapper;

    invoke-direct {p0, p1}, Lio/appmetrica/analytics/billing/internal/ServiceSideBillingConfigWrapper;-><init>(Lio/appmetrica/analytics/billing/impl/B;)V

    return-object p0
.end method
