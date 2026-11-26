package io.appmetrica.analytics.productflow;

/* JADX INFO: loaded from: classes5.dex */
public abstract class ProductFlowEvent {
    public static FlowResultEventBuilder flowResultForOffer(ProductFlowStatus productFlowStatus, String str) {
        return new FlowResultEventBuilder(productFlowStatus, null, str);
    }

    public static FlowResultEventBuilder flowResultForProduct(ProductFlowStatus productFlowStatus, String str) {
        return new FlowResultEventBuilder(productFlowStatus, str, null);
    }

    public static FlowStartEventBuilder flowStart(String str) {
        return new FlowStartEventBuilder(str);
    }

    public static FlowStepEventBuilder flowStepForOffer(String str, String str2) {
        return new FlowStepEventBuilder(str2, null, str);
    }

    public static FlowStepEventBuilder flowStepForProduct(String str, String str2) {
        return new FlowStepEventBuilder(str2, str, null);
    }

    public static OfferShownEventBuilder offerShown(String str, String str2) {
        return new OfferShownEventBuilder(str, str2);
    }
}
