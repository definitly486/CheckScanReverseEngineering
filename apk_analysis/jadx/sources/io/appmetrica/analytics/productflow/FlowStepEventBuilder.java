package io.appmetrica.analytics.productflow;

import io.appmetrica.analytics.coreapi.event.AppMetricaEvent;
import io.appmetrica.analytics.productflow.impl.h;
import io.appmetrica.analytics.productflow.impl.j;
import io.appmetrica.analytics.productflow.impl.q;
import io.appmetrica.analytics.productflow.impl.z;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class FlowStepEventBuilder {
    private final String a;
    private String b;
    private String c;
    private String d;
    private OfferPrice e;
    private Map f;

    public FlowStepEventBuilder(String str, String str2, String str3) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        z.d(str);
        z.a(str2, str3);
    }

    public AppMetricaEvent build() {
        return new q(new j(new h(this.b, this.c, this.a, this.d, this.e, this.f)));
    }

    public FlowStepEventBuilder withPayload(Map<String, String> map) {
        this.f = map;
        return this;
    }

    public FlowStepEventBuilder withPrice(OfferPrice offerPrice) {
        this.e = offerPrice;
        return this;
    }

    public FlowStepEventBuilder withProductId(String str) {
        z.a(str, this.c);
        this.b = str;
        return this;
    }

    public FlowStepEventBuilder withProductOfferId(String str) {
        z.a(this.b, str);
        this.c = str;
        return this;
    }

    public FlowStepEventBuilder withStepOption(String str) {
        this.d = str;
        return this;
    }
}
