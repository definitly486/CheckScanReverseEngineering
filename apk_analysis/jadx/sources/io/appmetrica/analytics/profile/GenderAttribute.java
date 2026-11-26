package io.appmetrica.analytics.profile;

import io.appmetrica.analytics.coreutils.internal.limitation.DummyTrimmer;
import io.appmetrica.analytics.coreutils.internal.validation.DummyValidator;
import io.appmetrica.analytics.impl.C1110mn;
import io.appmetrica.analytics.impl.C1212ql;
import io.appmetrica.analytics.impl.E4;
import io.appmetrica.analytics.impl.G6;
import io.appmetrica.analytics.impl.InterfaceC1215qo;
import io.appmetrica.analytics.impl.Ji;
import io.appmetrica.analytics.impl.Ol;

/* JADX INFO: loaded from: classes5.dex */
public class GenderAttribute {
    private final G6 a = new G6("appmetrica_gender", new DummyValidator(), new Ol());

    public enum Gender {
        MALE("M"),
        FEMALE("F"),
        OTHER("O");

        private final String a;

        Gender(String str) {
            this.a = str;
        }

        public String getStringValue() {
            return this.a;
        }
    }

    public UserProfileUpdate<? extends InterfaceC1215qo> withValue(Gender gender) {
        String str = this.a.c;
        String stringValue = gender.getStringValue();
        DummyTrimmer dummyTrimmer = new DummyTrimmer();
        G6 g6 = this.a;
        return new UserProfileUpdate<>(new C1110mn(str, stringValue, dummyTrimmer, g6.a, new E4(g6.b)));
    }

    public UserProfileUpdate<? extends InterfaceC1215qo> withValueIfUndefined(Gender gender) {
        String str = this.a.c;
        String stringValue = gender.getStringValue();
        DummyTrimmer dummyTrimmer = new DummyTrimmer();
        G6 g6 = this.a;
        return new UserProfileUpdate<>(new C1110mn(str, stringValue, dummyTrimmer, g6.a, new C1212ql(g6.b)));
    }

    public UserProfileUpdate<? extends InterfaceC1215qo> withValueReset() {
        G6 g6 = this.a;
        return new UserProfileUpdate<>(new Ji(0, g6.c, g6.a, g6.b));
    }
}
