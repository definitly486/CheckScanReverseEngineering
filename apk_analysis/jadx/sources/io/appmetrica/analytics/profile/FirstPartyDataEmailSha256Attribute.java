package io.appmetrica.analytics.profile;

import io.appmetrica.analytics.coreutils.internal.limitation.CollectionLimitation;
import io.appmetrica.analytics.coreutils.internal.limitation.StringTrimmer;
import io.appmetrica.analytics.coreutils.internal.validation.DummyValidator;
import io.appmetrica.analytics.impl.C1084ln;
import io.appmetrica.analytics.impl.C1237rl;
import io.appmetrica.analytics.impl.E4;
import io.appmetrica.analytics.impl.G6;
import io.appmetrica.analytics.impl.InterfaceC1215qo;
import io.appmetrica.analytics.impl.Vb;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public class FirstPartyDataEmailSha256Attribute {
    private final G6 a = new G6("appmetrica_1pd_email_sha256", new DummyValidator(), new Vb(new CollectionLimitation(100)));
    private final C1237rl b;

    public FirstPartyDataEmailSha256Attribute(C1237rl c1237rl) {
        this.b = c1237rl;
    }

    public UserProfileUpdate<? extends InterfaceC1215qo> withEmailValues(Iterable<String> iterable) {
        String str = this.a.c;
        ArrayList arrayListA = this.b.a(iterable);
        StringTrimmer stringTrimmer = new StringTrimmer(200, "First party data emails attribute");
        G6 g6 = this.a;
        return new UserProfileUpdate<>(new C1084ln(str, arrayListA, 10, stringTrimmer, g6.a, new E4(g6.b)));
    }

    public UserProfileUpdate<? extends InterfaceC1215qo> withEmailValues(String... strArr) {
        return withEmailValues(Arrays.asList(strArr));
    }
}
