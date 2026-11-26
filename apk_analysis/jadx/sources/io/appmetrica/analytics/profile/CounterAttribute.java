package io.appmetrica.analytics.profile;

import io.appmetrica.analytics.impl.C0809b6;
import io.appmetrica.analytics.impl.Eb;
import io.appmetrica.analytics.impl.G6;
import io.appmetrica.analytics.impl.InterfaceC1215qo;
import io.appmetrica.analytics.impl.Vb;

/* JADX INFO: loaded from: classes5.dex */
public final class CounterAttribute {
    private final G6 a;

    public CounterAttribute(String str, Eb eb, Vb vb) {
        this.a = new G6(str, eb, vb);
    }

    public UserProfileUpdate<? extends InterfaceC1215qo> withDelta(double d) {
        return new UserProfileUpdate<>(new C0809b6(this.a.c, d));
    }
}
