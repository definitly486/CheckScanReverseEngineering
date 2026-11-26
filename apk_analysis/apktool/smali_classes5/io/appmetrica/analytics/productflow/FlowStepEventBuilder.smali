.class public Lio/appmetrica/analytics/productflow/FlowStepEventBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lio/appmetrica/analytics/productflow/OfferPrice;

.field private f:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/productflow/FlowStepEventBuilder;->a:Ljava/lang/String;

    iput-object p2, p0, Lio/appmetrica/analytics/productflow/FlowStepEventBuilder;->b:Ljava/lang/String;

    iput-object p3, p0, Lio/appmetrica/analytics/productflow/FlowStepEventBuilder;->c:Ljava/lang/String;

    invoke-static {p1}, Lio/appmetrica/analytics/productflow/impl/z;->d(Ljava/lang/String;)V

    invoke-static {p2, p3}, Lio/appmetrica/analytics/productflow/impl/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public build()Lio/appmetrica/analytics/coreapi/event/AppMetricaEvent;
    .locals 9

    new-instance v0, Lio/appmetrica/analytics/productflow/impl/q;

    new-instance v1, Lio/appmetrica/analytics/productflow/impl/j;

    new-instance v2, Lio/appmetrica/analytics/productflow/impl/h;

    iget-object v3, p0, Lio/appmetrica/analytics/productflow/FlowStepEventBuilder;->b:Ljava/lang/String;

    iget-object v4, p0, Lio/appmetrica/analytics/productflow/FlowStepEventBuilder;->c:Ljava/lang/String;

    iget-object v5, p0, Lio/appmetrica/analytics/productflow/FlowStepEventBuilder;->a:Ljava/lang/String;

    iget-object v6, p0, Lio/appmetrica/analytics/productflow/FlowStepEventBuilder;->d:Ljava/lang/String;

    iget-object v7, p0, Lio/appmetrica/analytics/productflow/FlowStepEventBuilder;->e:Lio/appmetrica/analytics/productflow/OfferPrice;

    iget-object v8, p0, Lio/appmetrica/analytics/productflow/FlowStepEventBuilder;->f:Ljava/util/Map;

    invoke-direct/range {v2 .. v8}, Lio/appmetrica/analytics/productflow/impl/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/appmetrica/analytics/productflow/OfferPrice;Ljava/util/Map;)V

    invoke-direct {v1, v2}, Lio/appmetrica/analytics/productflow/impl/j;-><init>(Lio/appmetrica/analytics/productflow/impl/h;)V

    invoke-direct {v0, v1}, Lio/appmetrica/analytics/productflow/impl/q;-><init>(Lio/appmetrica/analytics/coreapi/internal/event/AppMetricaEventData;)V

    return-object v0
.end method

.method public withPayload(Ljava/util/Map;)Lio/appmetrica/analytics/productflow/FlowStepEventBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lio/appmetrica/analytics/productflow/FlowStepEventBuilder;"
        }
    .end annotation

    iput-object p1, p0, Lio/appmetrica/analytics/productflow/FlowStepEventBuilder;->f:Ljava/util/Map;

    return-object p0
.end method

.method public withPrice(Lio/appmetrica/analytics/productflow/OfferPrice;)Lio/appmetrica/analytics/productflow/FlowStepEventBuilder;
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/productflow/FlowStepEventBuilder;->e:Lio/appmetrica/analytics/productflow/OfferPrice;

    return-object p0
.end method

.method public withProductId(Ljava/lang/String;)Lio/appmetrica/analytics/productflow/FlowStepEventBuilder;
    .locals 1

    iget-object v0, p0, Lio/appmetrica/analytics/productflow/FlowStepEventBuilder;->c:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/appmetrica/analytics/productflow/impl/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lio/appmetrica/analytics/productflow/FlowStepEventBuilder;->b:Ljava/lang/String;

    return-object p0
.end method

.method public withProductOfferId(Ljava/lang/String;)Lio/appmetrica/analytics/productflow/FlowStepEventBuilder;
    .locals 1

    iget-object v0, p0, Lio/appmetrica/analytics/productflow/FlowStepEventBuilder;->b:Ljava/lang/String;

    invoke-static {v0, p1}, Lio/appmetrica/analytics/productflow/impl/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lio/appmetrica/analytics/productflow/FlowStepEventBuilder;->c:Ljava/lang/String;

    return-object p0
.end method

.method public withStepOption(Ljava/lang/String;)Lio/appmetrica/analytics/productflow/FlowStepEventBuilder;
    .locals 0

    iput-object p1, p0, Lio/appmetrica/analytics/productflow/FlowStepEventBuilder;->d:Ljava/lang/String;

    return-object p0
.end method
