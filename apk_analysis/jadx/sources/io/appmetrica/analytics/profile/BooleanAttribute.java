package io.appmetrica.analytics.profile;

import io.appmetrica.analytics.coreutils.internal.validation.Validator;
import io.appmetrica.analytics.impl.C1038k3;
import io.appmetrica.analytics.impl.C1212ql;
import io.appmetrica.analytics.impl.E4;
import io.appmetrica.analytics.impl.G6;
import io.appmetrica.analytics.impl.InterfaceC1215qo;
import io.appmetrica.analytics.impl.InterfaceC1396y2;
import io.appmetrica.analytics.impl.Ji;

/* JADX INFO: loaded from: classes5.dex */
public class BooleanAttribute {
    private final G6 a;

    public BooleanAttribute(String str, Validator validator, InterfaceC1396y2 interfaceC1396y2) {
        this.a = new G6(str, validator, interfaceC1396y2);
    }

    public UserProfileUpdate<? extends InterfaceC1215qo> withValue(boolean z) {
        G6 g6 = this.a;
        return new UserProfileUpdate<>(new C1038k3(g6.c, z, g6.a, new E4(g6.b)));
    }

    public UserProfileUpdate<? extends InterfaceC1215qo> withValueIfUndefined(boolean z) {
        G6 g6 = this.a;
        return new UserProfileUpdate<>(new C1038k3(g6.c, z, g6.a, new C1212ql(g6.b)));
    }

    public UserProfileUpdate<? extends InterfaceC1215qo> withValueReset() {
        G6 g6 = this.a;
        return new UserProfileUpdate<>(new Ji(3, g6.c, g6.a, g6.b));
    }
}
