package io.appmetrica.analytics.push.coreutils.internal.model;

import defpackage.g03;
import defpackage.i03;
import defpackage.jh2;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 io.appmetrica.analytics.push.coreutils.internal.model.ServiceType[], still in use, count: 1, list:
  (r0v1 io.appmetrica.analytics.push.coreutils.internal.model.ServiceType[]) from 0x0027: CONSTRUCTOR (r0v1 io.appmetrica.analytics.push.coreutils.internal.model.ServiceType[]) A[MD:(T extends java.lang.Enum<T>[]):void (m), WRAPPED] call: i03.<init>(java.lang.Enum[]):void type: CONSTRUCTOR
	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:257)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:187)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes5.dex */
public final class ServiceType {
    PROVIDER_SERVICE(0),
    APPMETRICA_PUSH_SERVICE(1),
    UNKNOWN(-1);

    public static final Companion Companion = new Companion(null);
    private static final /* synthetic */ g03 c;
    private final int a;

    static {
        c = new i03(new ServiceType[]{r0, r1, r2});
    }

    private ServiceType(int i) {
        super(str, i);
        this.a = i;
    }

    public static final ServiceType fromValue(int i) {
        return Companion.fromValue(i);
    }

    public static g03<ServiceType> getEntries() {
        return c;
    }

    public static ServiceType valueOf(String str) {
        return (ServiceType) Enum.valueOf(ServiceType.class, str);
    }

    public static ServiceType[] values() {
        return (ServiceType[]) b.clone();
    }

    public final int getValue() {
        return this.a;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final ServiceType fromValue(int i) {
            for (ServiceType serviceType : ServiceType.values()) {
                if (serviceType.getValue() == i) {
                    return serviceType;
                }
            }
            return ServiceType.UNKNOWN;
        }

        private Companion() {
        }
    }
}
