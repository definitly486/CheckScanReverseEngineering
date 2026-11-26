package io.appmetrica.analytics.productflow;

import io.appmetrica.analytics.coreapi.event.AppMetricaEvent;
import io.appmetrica.analytics.productflow.impl.m;
import io.appmetrica.analytics.productflow.impl.o;
import io.appmetrica.analytics.productflow.impl.q;
import io.appmetrica.analytics.productflow.impl.z;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public class OfferShownEventBuilder {
    private final String a;
    private final String b;
    private String c;
    private String d;
    private OfferPrice e;
    private Map f;
    private OfferReferrer g;

    public OfferShownEventBuilder(String str, String str2) {
        this.a = str;
        this.b = str2;
        z.c(str);
        z.a(str2);
    }

    public AppMetricaEvent build() {
        return new q(new o(new m(this.a, this.b, this.c, this.d, this.e, this.f, this.g)));
    }

    public OfferShownEventBuilder withBenefitType(String str) {
        this.d = str;
        return this;
    }

    public OfferShownEventBuilder withPayload(Map<String, String> map) {
        this.f = map;
        return this;
    }

    public OfferShownEventBuilder withPrice(OfferPrice offerPrice) {
        this.e = offerPrice;
        return this;
    }

    public OfferShownEventBuilder withProductId(String str) {
        this.c = str;
        return this;
    }

    public OfferShownEventBuilder withReferrer(OfferReferrer offerReferrer) {
        this.g = offerReferrer;
        return this;
    }
}
