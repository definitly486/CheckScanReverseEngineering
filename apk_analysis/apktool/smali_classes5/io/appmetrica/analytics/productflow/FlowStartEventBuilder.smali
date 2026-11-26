.class public Lio/appmetrica/analytics/productflow/FlowStartEventBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lio/appmetrica/analytics/productflow/OfferPrice;

.field private d:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/productflow/FlowStartEventBuilder;->a:Ljava/lang/String;

    invoke-static {p1}, Lio/appmetrica/analytics/productflow/impl/z;->b(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public build()Lio/appmetrica/analytics/coreapi/event/AppMetricaEvent;
    .locals 6

    new-instance v0, Lio/appmetrica/analytics/productflow/impl/q;

    new-instance v1, Lio/appmetrica/analytics/productflow/impl/g;

    new-instance v2, Lio/appmetrica/analytics/productflow/impl/e;

    iget-object v3, p0, Lio/appmetrica/analytics/productflow/FlowStartEventBuilder;->a:Ljava/lang/String;

    iget-object v4, p0, Lio/appmetrica/analytics/productflow/FlowStartEventBuilder;->b:Ljava/lang/String;

    iget-object v5, p0, Lio/appmetrica/analytics/productflow/FlowStartEventBuilder;->c:Lio/appmetrica/analytics/productflow/OfferPrice;

    iget-object p0, p0, Lio/appmetrica/analytics/productflow/FlowStartEventBuilder;->d:Ljava/util/Map;

    invoke-direct {v2, v3, v4, v5, p0}, Lio/appmetrica/analytics/productflow/impl/e;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/productflow/OfferPrice;Ljava/util/Map;)V

    invoke-direct {v1, v2}, Lio/appmetrica/analytics/productflow/impl/g;-><init>(Lio/appmetrica/analytics/productflow/impl/e;)V

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/productflow/impl/q;-><init>(Lio/appmetrica/analytics/coreapi/internal/event/AppMetricaEventData;)V

    return-object v0
.end method

.method public withPayload(Ljava/util/Map;)Lio/appmetrica/analytics/productflow/FlowStartEventBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/appmetrica/analytics/productflow/FlowStartEventBuilder;"
        }
    .end annotation

    iput-object p1, p0, Lio/appmetrica/analytics/productflow/FlowStartEventBuilder;->d:Ljava/util/Map;

    return-object p0
.end method

.method public withPrice(Lio/appmetrica/analytics/productflow/OfferPrice;)Lio/appmetrica/analytics/productflow/FlowStartEventBuilder;
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/productflow/FlowStartEventBuilder;->c:Lio/appmetrica/analytics/productflow/OfferPrice;

    return-object p0
.end method

.method public withProductOfferId(Ljava/lang/String;)Lio/appmetrica/analytics/productflow/FlowStartEventBuilder;
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/productflow/FlowStartEventBuilder;->b:Ljava/lang/String;

    return-object p0
.end method
