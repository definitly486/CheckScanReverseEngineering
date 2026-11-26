.class public final Lio/appmetrica/analytics/billing/impl/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreapi/internal/data/ProtobufConverter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lio/appmetrica/analytics/billinginterface/internal/BillingInfo;)Lio/appmetrica/analytics/billing/impl/c;
    .locals 3

    new-instance p0, Lio/appmetrica/analytics/billing/impl/c;

    invoke-direct {p0}, Lio/appmetrica/analytics/billing/impl/c;-><init>()V

    iget-object v0, p1, Lio/appmetrica/analytics/billinginterface/internal/BillingInfo;->type:Lio/appmetrica/analytics/billinginterface/internal/ProductType;

    sget-object v1, Lio/appmetrica/analytics/billing/impl/h;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    :cond_1
    :goto_0
    iput v1, p0, Lio/appmetrica/analytics/billing/impl/c;->a:I

    iget-object v0, p1, Lio/appmetrica/analytics/billinginterface/internal/BillingInfo;->productId:Ljava/lang/String;

    iput-object v0, p0, Lio/appmetrica/analytics/billing/impl/c;->b:Ljava/lang/String;

    iget-object v0, p1, Lio/appmetrica/analytics/billinginterface/internal/BillingInfo;->purchaseToken:Ljava/lang/String;

    iput-object v0, p0, Lio/appmetrica/analytics/billing/impl/c;->c:Ljava/lang/String;

    iget-wide v0, p1, Lio/appmetrica/analytics/billinginterface/internal/BillingInfo;->purchaseTime:J

    iput-wide v0, p0, Lio/appmetrica/analytics/billing/impl/c;->d:J

    iget-wide v0, p1, Lio/appmetrica/analytics/billinginterface/internal/BillingInfo;->sendTime:J

    iput-wide v0, p0, Lio/appmetrica/analytics/billing/impl/c;->e:J

    return-object p0
.end method

.method public final a(Lio/appmetrica/analytics/billing/impl/c;)Lio/appmetrica/analytics/billinginterface/internal/BillingInfo;
    .locals 8

    .line 43
    new-instance v0, Lio/appmetrica/analytics/billinginterface/internal/BillingInfo;

    .line 44
    iget p0, p1, Lio/appmetrica/analytics/billing/impl/c;->a:I

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    .line 45
    sget-object p0, Lio/appmetrica/analytics/billinginterface/internal/ProductType;->UNKNOWN:Lio/appmetrica/analytics/billinginterface/internal/ProductType;

    :goto_0
    move-object v1, p0

    goto :goto_1

    .line 46
    :cond_0
    sget-object p0, Lio/appmetrica/analytics/billinginterface/internal/ProductType;->SUBS:Lio/appmetrica/analytics/billinginterface/internal/ProductType;

    goto :goto_0

    .line 47
    :cond_1
    sget-object p0, Lio/appmetrica/analytics/billinginterface/internal/ProductType;->INAPP:Lio/appmetrica/analytics/billinginterface/internal/ProductType;

    goto :goto_0

    .line 48
    :goto_1
    iget-object v2, p1, Lio/appmetrica/analytics/billing/impl/c;->b:Ljava/lang/String;

    .line 49
    iget-object v3, p1, Lio/appmetrica/analytics/billing/impl/c;->c:Ljava/lang/String;

    .line 50
    iget-wide v4, p1, Lio/appmetrica/analytics/billing/impl/c;->d:J

    .line 51
    iget-wide v6, p1, Lio/appmetrica/analytics/billing/impl/c;->e:J

    .line 52
    invoke-direct/range {v0 .. v7}, Lio/appmetrica/analytics/billinginterface/internal/BillingInfo;-><init>(Lio/appmetrica/analytics/billinginterface/internal/ProductType;Ljava/lang/String;Ljava/lang/String;JJ)V

    return-object v0
.end method

.method public final bridge synthetic fromModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/billinginterface/internal/BillingInfo;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/billing/impl/i;->a(Lio/appmetrica/analytics/billinginterface/internal/BillingInfo;)Lio/appmetrica/analytics/billing/impl/c;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic toModel(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lio/appmetrica/analytics/billing/impl/c;

    invoke-virtual {p0, p1}, Lio/appmetrica/analytics/billing/impl/i;->a(Lio/appmetrica/analytics/billing/impl/c;)Lio/appmetrica/analytics/billinginterface/internal/BillingInfo;

    move-result-object p0

    return-object p0
.end method
