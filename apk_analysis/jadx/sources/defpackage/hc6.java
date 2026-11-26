package defpackage;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 hc6[], still in use, count: 1, list:
  (r0v1 hc6[]) from 0x0059: CONSTRUCTOR (r0v1 hc6[]) A[MD:(T extends java.lang.Enum<T>[]):void (m), WRAPPED] call: i03.<init>(java.lang.Enum[]):void type: CONSTRUCTOR
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
/* JADX INFO: loaded from: classes4.dex */
public final class hc6 {
    TRACE(1, "trace"),
    DEBUG(5, "debug"),
    INFO(9, "info"),
    WARN(13, "warn"),
    ERROR(17, "error"),
    FATAL(21, "fatal");

    private static final /* synthetic */ g03 $ENTRIES;
    public static final a Companion = new a();
    private final int severityNumber;
    private final String severityText;

    public static final class a {
    }

    static {
        $ENTRIES = new i03(new hc6[]{r0, r1, r2, r3, r4, r5});
    }

    public hc6(int i, String str) {
        super(str, i);
        this.severityNumber = i;
        this.severityText = str;
    }

    public static g03<hc6> a() {
        return $ENTRIES;
    }

    public static hc6 valueOf(String str) {
        return (hc6) Enum.valueOf(hc6.class, str);
    }

    public static hc6[] values() {
        return (hc6[]) $VALUES.clone();
    }

    public final int d() {
        return this.severityNumber;
    }

    public final String e() {
        return this.severityText;
    }
}
