.class public final Lio/appmetrica/analytics/billing/internal/ServiceSideBillingConfigWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appmetrica/analytics/billing/internal/ServiceSideBillingConfigWrapper$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lio/appmetrica/analytics/billing/internal/ServiceSideBillingConfigWrapper$Companion;


# instance fields
.field private final a:Lio/appmetrica/analytics/billing/impl/B;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/appmetrica/analytics/billing/internal/ServiceSideBillingConfigWrapper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/billing/internal/ServiceSideBillingConfigWrapper$Companion;-><init>(Ljh2;)V

    sput-object v0, Lio/appmetrica/analytics/billing/internal/ServiceSideBillingConfigWrapper;->Companion:Lio/appmetrica/analytics/billing/internal/ServiceSideBillingConfigWrapper$Companion;

    return-void
.end method

.method public constructor <init>(Lio/appmetrica/analytics/billing/impl/B;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/billing/internal/ServiceSideBillingConfigWrapper;->a:Lio/appmetrica/analytics/billing/impl/B;

    return-void
.end method


# virtual methods
.method public final getConfig$billing_release()Lio/appmetrica/analytics/billing/impl/B;
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/billing/internal/ServiceSideBillingConfigWrapper;->a:Lio/appmetrica/analytics/billing/impl/B;

    return-object p0
.end method
