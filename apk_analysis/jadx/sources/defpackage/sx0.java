package defpackage;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 sx0[], still in use, count: 1, list:
  (r0v1 sx0[]) from 0x0030: CONSTRUCTOR (r0v1 sx0[]) A[MD:(T extends java.lang.Enum<T>[]):void (m), WRAPPED] call: i03.<init>(java.lang.Enum[]):void type: CONSTRUCTOR
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
/* JADX INFO: loaded from: classes3.dex */
public final class sx0 {
    ENABLED(true, true),
    READ_ONLY(true, false),
    WRITE_ONLY(false, true),
    DISABLED(false, false);

    private static final /* synthetic */ g03 $ENTRIES;
    private final boolean readEnabled;
    private final boolean writeEnabled;

    static {
        $ENTRIES = new i03(sx0VarArr);
    }

    public sx0(boolean z, boolean z2) {
        super(str, i);
        this.readEnabled = z;
        this.writeEnabled = z2;
    }

    public static sx0 valueOf(String str) {
        return (sx0) Enum.valueOf(sx0.class, str);
    }

    public static sx0[] values() {
        return (sx0[]) $VALUES.clone();
    }

    public final boolean a() {
        return this.readEnabled;
    }

    public final boolean d() {
        return this.writeEnabled;
    }
}
