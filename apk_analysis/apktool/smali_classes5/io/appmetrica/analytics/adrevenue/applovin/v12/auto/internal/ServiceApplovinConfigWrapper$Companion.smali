.class public final Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/ServiceApplovinConfigWrapper$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/ServiceApplovinConfigWrapper;
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

    invoke-direct {p0}, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/ServiceApplovinConfigWrapper$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final toWrapper$ad_revenue_applovin_v12_auto_release(Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/l;)Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/ServiceApplovinConfigWrapper;
    .locals 0

    new-instance p0, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/ServiceApplovinConfigWrapper;

    invoke-direct {p0, p1}, Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/internal/ServiceApplovinConfigWrapper;-><init>(Lio/appmetrica/analytics/adrevenue/applovin/v12/auto/impl/l;)V

    return-object p0
.end method
