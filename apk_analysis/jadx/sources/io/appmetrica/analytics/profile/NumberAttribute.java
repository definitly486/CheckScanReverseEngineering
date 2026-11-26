package io.appmetrica.analytics.profile;

import io.appmetrica.analytics.coreutils.internal.limitation.CollectionLimitation;
import io.appmetrica.analytics.impl.C1205qe;
import io.appmetrica.analytics.impl.C1212ql;
import io.appmetrica.analytics.impl.E4;
import io.appmetrica.analytics.impl.Eb;
import io.appmetrica.analytics.impl.G6;
import io.appmetrica.analytics.impl.InterfaceC1215qo;
import io.appmetrica.analytics.impl.Ji;
import io.appmetrica.analytics.impl.Vb;

/* JADX INFO: loaded from: classes5.dex */
public final class NumberAttribute {
    private final G6 a;

    public NumberAttribute(String str, Eb eb, Vb vb) {
        this.a = new G6(str, eb, vb);
    }

    public UserProfileUpdate<? extends InterfaceC1215qo> withValue(double d) {
        return new UserProfileUpdate<>(new C1205qe(this.a.c, d, new Eb(), new E4(new Vb(new CollectionLimitation(100)))));
    }

    public UserProfileUpdate<? extends InterfaceC1215qo> withValueIfUndefined(double d) {
        return new UserProfileUpdate<>(new C1205qe(this.a.c, d, new Eb(), new C1212ql(new Vb(new CollectionLimitation(100)))));
    }

    public UserProfileUpdate<? extends InterfaceC1215qo> withValueReset() {
        return new UserProfileUpdate<>(new Ji(1, this.a.c, new Eb(), new Vb(new CollectionLimitation(100))));
    }
}
