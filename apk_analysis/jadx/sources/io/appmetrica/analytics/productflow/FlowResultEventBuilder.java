package io.appmetrica.analytics.productflow;

import io.appmetrica.analytics.coreapi.event.AppMetricaEvent;
import io.appmetrica.analytics.productflow.impl.a;
import io.appmetrica.analytics.productflow.impl.d;
import io.appmetrica.analytics.productflow.impl.q;
import io.appmetrica.analytics.productflow.impl.z;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class FlowResultEventBuilder {
    private final ProductFlowStatus a;
    private String b;
    private String c;
    private OfferPrice d;
    private Map e;

    public FlowResultEventBuilder(ProductFlowStatus productFlowStatus, String str, String str2) {
        this.a = productFlowStatus;
        this.b = str;
        this.c = str2;
        z.a(productFlowStatus);
        z.a(str, str2);
    }

    public AppMetricaEvent build() {
        return new q(new d(new a(this.a, this.b, this.c, this.d, this.e)));
    }

    public FlowResultEventBuilder withPayload(Map<String, String> map) {
        this.e = map;
        return this;
    }

    public FlowResultEventBuilder withPrice(OfferPrice offerPrice) {
        this.d = offerPrice;
        return this;
    }

    public FlowResultEventBuilder withProductId(String str) {
        z.a(str, this.c);
        this.b = str;
        return this;
    }

    public FlowResultEventBuilder withProductOfferId(String str) {
        z.a(this.b, str);
        this.c = str;
        return this;
    }
}
