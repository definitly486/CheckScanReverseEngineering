package io.appmetrica.analytics.coreapi.internal.identifiers;

import defpackage.aa4;
import defpackage.g03;
import defpackage.i03;
import defpackage.jh2;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 io.appmetrica.analytics.coreapi.internal.identifiers.IdentifierStatus[], still in use, count: 1, list:
  (r0v1 io.appmetrica.analytics.coreapi.internal.identifiers.IdentifierStatus[]) from 0x0044: CONSTRUCTOR (r0v1 io.appmetrica.analytics.coreapi.internal.identifiers.IdentifierStatus[]) A[MD:(T extends java.lang.Enum<T>[]):void (m), WRAPPED] call: i03.<init>(java.lang.Enum[]):void type: CONSTRUCTOR
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
public final class IdentifierStatus {
    OK("OK"),
    IDENTIFIER_PROVIDER_UNAVAILABLE("IDENTIFIER_PROVIDER_UNAVAILABLE"),
    INVALID_ADV_ID("INVALID_ADV_ID"),
    FORBIDDEN_BY_CLIENT_CONFIG("FORBIDDEN_BY_CLIENT_CONFIG"),
    FEATURE_DISABLED("FEATURE_DISABLED"),
    UNKNOWN("UNKNOWN");

    public static final Companion Companion = new Companion(null);
    private static final /* synthetic */ g03 c;
    private final String a;

    static {
        c = new i03(new IdentifierStatus[]{r0, r1, r2, r3, r4, r5});
    }

    private IdentifierStatus(String str) {
        super(str, i);
        this.a = str;
    }

    public static final IdentifierStatus from(String str) {
        return Companion.from(str);
    }

    public static g03<IdentifierStatus> getEntries() {
        return c;
    }

    public static IdentifierStatus valueOf(String str) {
        return (IdentifierStatus) Enum.valueOf(IdentifierStatus.class, str);
    }

    public static IdentifierStatus[] values() {
        return (IdentifierStatus[]) b.clone();
    }

    public final String getValue() {
        return this.a;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX WARN: Code duplicated, block: B:10:0x001b  */
        /* JADX WARN: Code duplicated, block: B:12:0x001e A[RETURN] */
        public final IdentifierStatus from(String str) {
            for (IdentifierStatus identifierStatus : IdentifierStatus.values()) {
                if (aa4.e(identifierStatus.getValue(), str)) {
                    if (identifierStatus == null) {
                        return IdentifierStatus.UNKNOWN;
                    }
                    return identifierStatus;
                }
            }
            identifierStatus = null;
            if (identifierStatus == null) {
                return IdentifierStatus.UNKNOWN;
            }
            return identifierStatus;
        }

        private Companion() {
        }
    }
}
