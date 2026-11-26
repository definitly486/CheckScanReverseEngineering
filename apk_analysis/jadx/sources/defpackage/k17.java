package defpackage;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 k17[], still in use, count: 1, list:
  (r0v1 k17[]) from 0x0056: CONSTRUCTOR (r0v1 k17[]) A[MD:(T extends java.lang.Enum<T>[]):void (m), WRAPPED] call: i03.<init>(java.lang.Enum[]):void type: CONSTRUCTOR
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
public final class k17 {
    IGNORE_CASE(2),
    MULTILINE(8),
    LITERAL(16),
    UNIX_LINES(1),
    COMMENTS(4),
    DOT_MATCHES_ALL(32),
    CANON_EQ(128);

    private static final /* synthetic */ g03 $ENTRIES;
    private final int mask;
    private final int value;

    static {
        $ENTRIES = new i03(k17VarArr);
    }

    public k17() {
        throw null;
    }

    public k17(int i) {
        super(str, i);
        this.value = i;
        this.mask = i;
    }

    public static k17 valueOf(String str) {
        return (k17) Enum.valueOf(k17.class, str);
    }

    public static k17[] values() {
        return (k17[]) $VALUES.clone();
    }

    public final int a() {
        return this.value;
    }
}
