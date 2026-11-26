package io.appmetrica.analytics.internal;

import com.google.android.gms.measurement.AppMeasurement;
import defpackage.aa4;
import defpackage.g03;
import defpackage.i03;
import defpackage.jh2;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 io.appmetrica.analytics.internal.CounterConfigurationReporterType[], still in use, count: 1, list:
  (r0v1 io.appmetrica.analytics.internal.CounterConfigurationReporterType[]) from 0x005c: CONSTRUCTOR (r0v1 io.appmetrica.analytics.internal.CounterConfigurationReporterType[]) A[MD:(T extends java.lang.Enum<T>[]):void (m), WRAPPED] call: i03.<init>(java.lang.Enum[]):void type: CONSTRUCTOR
	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:257)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:187)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes5.dex */
public final class CounterConfigurationReporterType {
    MAIN("main"),
    MANUAL("manual"),
    SELF_SDK("self_sdk"),
    COMMUTATION("commutation"),
    SELF_DIAGNOSTIC_MAIN("self_diagnostic_main"),
    SELF_DIAGNOSTIC_MANUAL("self_diagnostic_manual"),
    CRASH(AppMeasurement.CRASH_ORIGIN);

    public static final Companion Companion = new Companion(null);
    private static final /* synthetic */ g03 c;
    private final String a;

    static {
        c = new i03(new CounterConfigurationReporterType[]{r0, r1, r2, r3, r4, r5, r6});
    }

    private CounterConfigurationReporterType(String str) {
        super(str, i);
        this.a = str;
    }

    public static final CounterConfigurationReporterType fromStringValue(String str) {
        return Companion.fromStringValue(str);
    }

    public static g03<CounterConfigurationReporterType> getEntries() {
        return c;
    }

    public static CounterConfigurationReporterType valueOf(String str) {
        return (CounterConfigurationReporterType) Enum.valueOf(CounterConfigurationReporterType.class, str);
    }

    public static CounterConfigurationReporterType[] values() {
        return (CounterConfigurationReporterType[]) b.clone();
    }

    public final String getStringValue() {
        return this.a;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX WARN: Code duplicated, block: B:10:0x001b  */
        /* JADX WARN: Code duplicated, block: B:12:0x001e A[RETURN] */
        public final CounterConfigurationReporterType fromStringValue(String str) {
            for (CounterConfigurationReporterType counterConfigurationReporterType : CounterConfigurationReporterType.values()) {
                if (aa4.e(counterConfigurationReporterType.getStringValue(), str)) {
                    if (counterConfigurationReporterType == null) {
                        return CounterConfigurationReporterType.MAIN;
                    }
                    return counterConfigurationReporterType;
                }
            }
            counterConfigurationReporterType = null;
            if (counterConfigurationReporterType == null) {
                return CounterConfigurationReporterType.MAIN;
            }
            return counterConfigurationReporterType;
        }

        private Companion() {
        }
    }
}
