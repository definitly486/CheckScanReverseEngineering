package defpackage;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 ml9[], still in use, count: 1, list:
  (r0v1 ml9[]) from 0x0038: CONSTRUCTOR (r0v1 ml9[]) A[MD:(T extends java.lang.Enum<T>[]):void (m), WRAPPED] call: i03.<init>(java.lang.Enum[]):void type: CONSTRUCTOR
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
public final class ml9 {
    OBJ('{', '}'),
    LIST('[', ']'),
    MAP('{', '}'),
    POLY_OBJ('[', ']');

    private static final /* synthetic */ g03 $ENTRIES;
    public final char begin;
    public final char end;

    static {
        $ENTRIES = new i03(ml9VarArr);
    }

    public ml9(char c, char c2) {
        super(str, i);
        this.begin = c;
        this.end = c2;
    }

    public static g03<ml9> a() {
        return $ENTRIES;
    }

    public static ml9 valueOf(String str) {
        return (ml9) Enum.valueOf(ml9.class, str);
    }

    public static ml9[] values() {
        return (ml9[]) $VALUES.clone();
    }
}
