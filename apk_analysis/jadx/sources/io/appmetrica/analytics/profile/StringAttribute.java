package io.appmetrica.analytics.profile;

import io.appmetrica.analytics.coreutils.internal.limitation.StringTrimmer;
import io.appmetrica.analytics.coreutils.internal.limitation.Trimmer;
import io.appmetrica.analytics.coreutils.internal.validation.Validator;
import io.appmetrica.analytics.impl.C1110mn;
import io.appmetrica.analytics.impl.C1212ql;
import io.appmetrica.analytics.impl.E4;
import io.appmetrica.analytics.impl.G6;
import io.appmetrica.analytics.impl.InterfaceC1215qo;
import io.appmetrica.analytics.impl.InterfaceC1396y2;
import io.appmetrica.analytics.impl.Ji;

/* JADX INFO: loaded from: classes5.dex */
public class StringAttribute {
    private final Trimmer a;
    private final G6 b;

    public StringAttribute(String str, StringTrimmer stringTrimmer, Validator validator, InterfaceC1396y2 interfaceC1396y2) {
        this.b = new G6(str, validator, interfaceC1396y2);
        this.a = stringTrimmer;
    }

    public UserProfileUpdate<? extends InterfaceC1215qo> withValue(String str) {
        G6 g6 = this.b;
        return new UserProfileUpdate<>(new C1110mn(g6.c, str, this.a, g6.a, new E4(g6.b)));
    }

    public UserProfileUpdate<? extends InterfaceC1215qo> withValueIfUndefined(String str) {
        G6 g6 = this.b;
        return new UserProfileUpdate<>(new C1110mn(g6.c, str, this.a, g6.a, new C1212ql(g6.b)));
    }

    public UserProfileUpdate<? extends InterfaceC1215qo> withValueReset() {
        G6 g6 = this.b;
        return new UserProfileUpdate<>(new Ji(0, g6.c, g6.a, g6.b));
    }
}
