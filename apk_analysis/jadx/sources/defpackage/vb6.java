package defpackage;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 vb6[], still in use, count: 1, list:
  (r0v1 vb6[]) from 0x0082: CONSTRUCTOR (r0v1 vb6[]) A[MD:(T extends java.lang.Enum<T>[]):void (m), WRAPPED] call: i03.<init>(java.lang.Enum[]):void type: CONSTRUCTOR
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
public final class vb6 {
    SNAPSHOT("$snapshot"),
    SET("$set"),
    IDENTIFY("$identify"),
    SCREEN("$screen"),
    GROUP_IDENTIFY("$groupidentify"),
    CREATE_ALIAS("$create_alias"),
    FEATURE_FLAG_CALLED("$feature_flag_called"),
    FEATURE_VIEW("$feature_view"),
    FEATURE_INTERACTION("$feature_interaction"),
    EXCEPTION("$exception");

    private static final /* synthetic */ g03 $ENTRIES;
    public static final a Companion = new a();
    private final String event;

    public static final class a {
        /* JADX WARN: Code duplicated, block: B:10:0x001f A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:12:0x0021 A[RETURN] */
        public static boolean a(String str) {
            str.getClass();
            for (vb6 vb6Var : vb6.values()) {
                if (aa4.e(vb6Var.a(), str)) {
                    if (vb6Var != null) {
                        return true;
                    }
                    return false;
                }
            }
            vb6Var = null;
            if (vb6Var != null) {
                return true;
            }
            return false;
        }
    }

    static {
        $ENTRIES = new i03(new vb6[]{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9});
    }

    public vb6(String str) {
        super(str, i);
        this.event = str;
    }

    public static vb6 valueOf(String str) {
        return (vb6) Enum.valueOf(vb6.class, str);
    }

    public static vb6[] values() {
        return (vb6[]) $VALUES.clone();
    }

    public final String a() {
        return this.event;
    }
}
