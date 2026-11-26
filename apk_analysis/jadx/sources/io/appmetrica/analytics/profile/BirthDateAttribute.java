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
import io.appmetrica.analytics.impl.X2;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
public class BirthDateAttribute {
    private final G6 a = new G6("appmetrica_birth_date", new DummyValidator(), new Ol());

    public final UserProfileUpdate a(Calendar calendar, String str, X2 x2) {
        return new UserProfileUpdate(new C1110mn(this.a.c, new SimpleDateFormat(str).format(calendar.getTime()), new DummyTrimmer(), new DummyValidator(), x2));
    }

    public UserProfileUpdate<? extends InterfaceC1215qo> withAge(int i) {
        int i2 = Calendar.getInstance(Locale.US).get(1) - i;
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.set(1, i2);
        return a(gregorianCalendar, "yyyy", new E4(this.a.b));
    }

    public UserProfileUpdate<? extends InterfaceC1215qo> withAgeIfUndefined(int i) {
        int i2 = Calendar.getInstance(Locale.US).get(1) - i;
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.set(1, i2);
        return a(gregorianCalendar, "yyyy", new C1212ql(this.a.b));
    }

    public UserProfileUpdate<? extends InterfaceC1215qo> withBirthDate(int i, int i2) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.set(1, i);
        gregorianCalendar.set(2, i2 - 1);
        gregorianCalendar.set(5, 1);
        return a(gregorianCalendar, "yyyy-MM", new E4(this.a.b));
    }

    public UserProfileUpdate<? extends InterfaceC1215qo> withBirthDateIfUndefined(int i, int i2) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.set(1, i);
        gregorianCalendar.set(2, i2 - 1);
        gregorianCalendar.set(5, 1);
        return a(gregorianCalendar, "yyyy-MM", new C1212ql(this.a.b));
    }

    public UserProfileUpdate<? extends InterfaceC1215qo> withValueReset() {
        return new UserProfileUpdate<>(new Ji(0, this.a.c, new DummyValidator(), new Ol()));
    }

    public UserProfileUpdate<? extends InterfaceC1215qo> withBirthDate(int i) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.set(1, i);
        return a(gregorianCalendar, "yyyy", new E4(this.a.b));
    }

    public UserProfileUpdate<? extends InterfaceC1215qo> withBirthDateIfUndefined(int i) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.set(1, i);
        return a(gregorianCalendar, "yyyy", new C1212ql(this.a.b));
    }

    public UserProfileUpdate<? extends InterfaceC1215qo> withBirthDate(Calendar calendar) {
        return a(calendar, "yyyy-MM-dd", new E4(this.a.b));
    }

    public UserProfileUpdate<? extends InterfaceC1215qo> withBirthDateIfUndefined(Calendar calendar) {
        return a(calendar, "yyyy-MM-dd", new C1212ql(this.a.b));
    }

    public UserProfileUpdate<? extends InterfaceC1215qo> withBirthDate(int i, int i2, int i3) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.set(1, i);
        gregorianCalendar.set(2, i2 - 1);
        gregorianCalendar.set(5, i3);
        return a(gregorianCalendar, "yyyy-MM-dd", new E4(this.a.b));
    }

    public UserProfileUpdate<? extends InterfaceC1215qo> withBirthDateIfUndefined(int i, int i2, int i3) {
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.set(1, i);
        gregorianCalendar.set(2, i2 - 1);
        gregorianCalendar.set(5, i3);
        return a(gregorianCalendar, "yyyy-MM-dd", new C1212ql(this.a.b));
    }
}
