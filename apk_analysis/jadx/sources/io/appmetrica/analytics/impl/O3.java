package io.appmetrica.analytics.impl;

/* JADX INFO: loaded from: classes5.dex */
public final class O3 extends AbstractC0863d8 {
    @Override // io.appmetrica.analytics.impl.AbstractC0863d8
    public final boolean a(F3 f3, F3 f4) {
        if (xo.a(f4.a)) {
            return true;
        }
        if (xo.a(f3.a)) {
            return false;
        }
        EnumC0914f8 enumC0914f8 = f3.b;
        EnumC0914f8 enumC0914f9 = EnumC0914f8.d;
        Qc qc = this.a;
        if (enumC0914f8 == enumC0914f9) {
            if (((Number) qc.a(enumC0914f8)).intValue() >= ((Number) this.a.a(f4.b)).intValue()) {
                return true;
            }
        } else if (((Number) qc.a(enumC0914f8)).intValue() > ((Number) this.a.a(f4.b)).intValue()) {
            return true;
        }
        return false;
    }
}
