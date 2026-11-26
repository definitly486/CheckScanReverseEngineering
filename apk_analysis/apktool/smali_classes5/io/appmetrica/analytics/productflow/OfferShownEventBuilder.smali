.class public Lio/appmetrica/analytics/productflow/OfferShownEventBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lio/appmetrica/analytics/productflow/OfferPrice;

.field private f:Ljava/util/Map;

.field private g:Lio/appmetrica/analytics/productflow/OfferReferrer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/productflow/OfferShownEventBuilder;->a:Ljava/lang/String;

    iput-object p2, p0, Lio/appmetrica/analytics/productflow/OfferShownEventBuilder;->b:Ljava/lang/String;

    invoke-static {p1}, Lio/appmetrica/analytics/productflow/impl/z;->c(Ljava/lang/String;)V

    invoke-static {p2}, Lio/appmetrica/analytics/productflow/impl/z;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public build()Lio/appmetrica/analytics/coreapi/event/AppMetricaEvent;
    .locals 10

    new-instance v0, Lio/appmetrica/analytics/productflow/impl/q;

    new-instance v1, Lio/appmetrica/analytics/productflow/impl/o;

    new-instance v2, Lio/appmetrica/analytics/productflow/impl/m;

    iget-object v3, p0, Lio/appmetrica/analytics/productflow/OfferShownEventBuilder;->a:Ljava/lang/String;

    iget-object v4, p0, Lio/appmetrica/analytics/productflow/OfferShownEventBuilder;->b:Ljava/lang/String;

    iget-object v5, p0, Lio/appmetrica/analytics/productflow/OfferShownEventBuilder;->c:Ljava/lang/String;

    iget-object v6, p0, Lio/appmetrica/analytics/productflow/OfferShownEventBuilder;->d:Ljava/lang/String;

    iget-object v7, p0, Lio/appmetrica/analytics/productflow/OfferShownEventBuilder;->e:Lio/appmetrica/analytics/productflow/OfferPrice;

    iget-object v8, p0, Lio/appmetrica/analytics/productflow/OfferShownEventBuilder;->f:Ljava/util/Map;

    iget-object v9, p0, Lio/appmetrica/analytics/productflow/OfferShownEventBuilder;->g:Lio/appmetrica/analytics/productflow/OfferReferrer;

    invoke-direct/range {v2 .. v9}, Lio/appmetrica/analytics/productflow/impl/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/productflow/OfferPrice;Ljava/util/Map;Lio/appmetrica/analytics/productflow/OfferReferrer;)V

    invoke-direct {v1, v2}, Lio/appmetrica/analytics/productflow/impl/o;-><init>(Lio/appmetrica/analytics/productflow/impl/m;)V

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/productflow/impl/q;-><init>(Lio/appmetrica/analytics/coreapi/internal/event/AppMetricaEventData;)V

    return-object v0
.end method

.method public withBenefitType(Ljava/lang/String;)Lio/appmetrica/analytics/productflow/OfferShownEventBuilder;
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/productflow/OfferShownEventBuilder;->d:Ljava/lang/String;

    return-object p0
.end method

.method public withPayload(Ljava/util/Map;)Lio/appmetrica/analytics/productflow/OfferShownEventBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/appmetrica/analytics/productflow/OfferShownEventBuilder;"
        }
    .end annotation

    iput-object p1, p0, Lio/appmetrica/analytics/productflow/OfferShownEventBuilder;->f:Ljava/util/Map;

    return-object p0
.end method

.method public withPrice(Lio/appmetrica/analytics/productflow/OfferPrice;)Lio/appmetrica/analytics/productflow/OfferShownEventBuilder;
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/productflow/OfferShownEventBuilder;->e:Lio/appmetrica/analytics/productflow/OfferPrice;

    return-object p0
.end method

.method public withProductId(Ljava/lang/String;)Lio/appmetrica/analytics/productflow/OfferShownEventBuilder;
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/productflow/OfferShownEventBuilder;->c:Ljava/lang/String;

    return-object p0
.end method

.method public withReferrer(Lio/appmetrica/analytics/productflow/OfferReferrer;)Lio/appmetrica/analytics/productflow/OfferShownEventBuilder;
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/productflow/OfferShownEventBuilder;->g:Lio/appmetrica/analytics/productflow/OfferReferrer;

    return-object p0
.end method
