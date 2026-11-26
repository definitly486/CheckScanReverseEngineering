.class public Lio/appmetrica/analytics/productflow/FlowResultEventBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lio/appmetrica/analytics/productflow/ProductFlowStatus;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lio/appmetrica/analytics/productflow/OfferPrice;

.field private e:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/productflow/ProductFlowStatus;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/productflow/FlowResultEventBuilder;->a:Lio/appmetrica/analytics/productflow/ProductFlowStatus;

    iput-object p2, p0, Lio/appmetrica/analytics/productflow/FlowResultEventBuilder;->b:Ljava/lang/String;

    iput-object p3, p0, Lio/appmetrica/analytics/productflow/FlowResultEventBuilder;->c:Ljava/lang/String;

    invoke-static {p1}, Lio/appmetrica/analytics/productflow/impl/z;->a(Lio/appmetrica/analytics/productflow/ProductFlowStatus;)V

    invoke-static {p2, p3}, Lio/appmetrica/analytics/productflow/impl/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public build()Lio/appmetrica/analytics/coreapi/event/AppMetricaEvent;
    .locals 8

    new-instance v0, Lio/appmetrica/analytics/productflow/impl/q;

    new-instance v1, Lio/appmetrica/analytics/productflow/impl/d;

    new-instance v2, Lio/appmetrica/analytics/productflow/impl/a;

    iget-object v3, p0, Lio/appmetrica/analytics/productflow/FlowResultEventBuilder;->a:Lio/appmetrica/analytics/productflow/ProductFlowStatus;

    iget-object v4, p0, Lio/appmetrica/analytics/productflow/FlowResultEventBuilder;->b:Ljava/lang/String;

    iget-object v5, p0, Lio/appmetrica/analytics/productflow/FlowResultEventBuilder;->c:Ljava/lang/String;

    iget-object v6, p0, Lio/appmetrica/analytics/productflow/FlowResultEventBuilder;->d:Lio/appmetrica/analytics/productflow/OfferPrice;

    iget-object v7, p0, Lio/appmetrica/analytics/productflow/FlowResultEventBuilder;->e:Ljava/util/Map;

    invoke-direct/range {v2 .. v7}, Lio/appmetrica/analytics/productflow/impl/a;-><init>(Lio/appmetrica/analytics/productflow/ProductFlowStatus;Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/productflow/OfferPrice;Ljava/util/Map;)V

    invoke-direct {v1, v2}, Lio/appmetrica/analytics/productflow/impl/d;-><init>(Lio/appmetrica/analytics/productflow/impl/a;)V

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/productflow/impl/q;-><init>(Lio/appmetrica/analytics/coreapi/internal/event/AppMetricaEventData;)V

    return-object v0
.end method

.method public withPayload(Ljava/util/Map;)Lio/appmetrica/analytics/productflow/FlowResultEventBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/appmetrica/analytics/productflow/FlowResultEventBuilder;"
        }
    .end annotation

    iput-object p1, p0, Lio/appmetrica/analytics/productflow/FlowResultEventBuilder;->e:Ljava/util/Map;

    return-object p0
.end method

.method public withPrice(Lio/appmetrica/analytics/productflow/OfferPrice;)Lio/appmetrica/analytics/productflow/FlowResultEventBuilder;
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/productflow/FlowResultEventBuilder;->d:Lio/appmetrica/analytics/productflow/OfferPrice;

    return-object p0
.end method

.method public withProductId(Ljava/lang/String;)Lio/appmetrica/analytics/productflow/FlowResultEventBuilder;
    .locals 1

    iget-object v0, p0, Lio/appmetrica/analytics/productflow/FlowResultEventBuilder;->c:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/appmetrica/analytics/productflow/impl/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lio/appmetrica/analytics/productflow/FlowResultEventBuilder;->b:Ljava/lang/String;

    return-object p0
.end method

.method public withProductOfferId(Ljava/lang/String;)Lio/appmetrica/analytics/productflow/FlowResultEventBuilder;
    .locals 1

    iget-object v0, p0, Lio/appmetrica/analytics/productflow/FlowResultEventBuilder;->b:Ljava/lang/String;

    invoke-static {v0, p1}, Lio/appmetrica/analytics/productflow/impl/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lio/appmetrica/analytics/productflow/FlowResultEventBuilder;->c:Ljava/lang/String;

    return-object p0
.end method
