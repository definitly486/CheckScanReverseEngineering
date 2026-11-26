.class public abstract Lio/appmetrica/analytics/productflow/ProductFlowEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static flowResultForOffer(Lio/appmetrica/analytics/productflow/ProductFlowStatus;Ljava/lang/String;)Lio/appmetrica/analytics/productflow/FlowResultEventBuilder;
    .locals 2

    new-instance v0, Lio/appmetrica/analytics/productflow/FlowResultEventBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lio/appmetrica/analytics/productflow/FlowResultEventBuilder;-><init>(Lio/appmetrica/analytics/productflow/ProductFlowStatus;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static flowResultForProduct(Lio/appmetrica/analytics/productflow/ProductFlowStatus;Ljava/lang/String;)Lio/appmetrica/analytics/productflow/FlowResultEventBuilder;
    .locals 2

    new-instance v0, Lio/appmetrica/analytics/productflow/FlowResultEventBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lio/appmetrica/analytics/productflow/FlowResultEventBuilder;-><init>(Lio/appmetrica/analytics/productflow/ProductFlowStatus;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static flowStart(Ljava/lang/String;)Lio/appmetrica/analytics/productflow/FlowStartEventBuilder;
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/productflow/FlowStartEventBuilder;

    invoke-direct {v0, p0}, Lio/appmetrica/analytics/productflow/FlowStartEventBuilder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static flowStepForOffer(Ljava/lang/String;Ljava/lang/String;)Lio/appmetrica/analytics/productflow/FlowStepEventBuilder;
    .locals 2

    new-instance v0, Lio/appmetrica/analytics/productflow/FlowStepEventBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p0}, Lio/appmetrica/analytics/productflow/FlowStepEventBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static flowStepForProduct(Ljava/lang/String;Ljava/lang/String;)Lio/appmetrica/analytics/productflow/FlowStepEventBuilder;
    .locals 2

    new-instance v0, Lio/appmetrica/analytics/productflow/FlowStepEventBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lio/appmetrica/analytics/productflow/FlowStepEventBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static offerShown(Ljava/lang/String;Ljava/lang/String;)Lio/appmetrica/analytics/productflow/OfferShownEventBuilder;
    .locals 1

    new-instance v0, Lio/appmetrica/analytics/productflow/OfferShownEventBuilder;

    invoke-direct {v0, p0, p1}, Lio/appmetrica/analytics/productflow/OfferShownEventBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
