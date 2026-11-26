package io.appmetrica.analytics.productflow;

import io.appmetrica.analytics.coreapi.event.AppMetricaEvent;
import io.appmetrica.analytics.productflow.impl.e;
import io.appmetrica.analytics.productflow.impl.g;
import io.appmetrica.analytics.productflow.impl.q;
import io.appmetrica.analytics.productflow.impl.z;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class FlowStartEventBuilder {
    private final String a;
    private String b;
    private OfferPrice c;
    private Map d;

    public FlowStartEventBuilder(String str) {
        this.a = str;
        z.b(str);
    }

    public AppMetricaEvent build() {
        return new q(new g(new e(this.a, this.b, this.c, this.d)));
    }

    public FlowStartEventBuilder withPayload(Map<String, String> map) {
        this.d = map;
        return this;
    }

    public FlowStartEventBuilder withPrice(OfferPrice offerPrice) {
        this.c = offerPrice;
        return this;
    }

    public FlowStartEventBuilder withProductOfferId(String str) {
        this.b = str;
        return this;
    }
}
