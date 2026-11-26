package yads;

import java.util.LinkedHashMap;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 yads.zj6[], still in use, count: 1, list:
  (r0v1 yads.zj6[]) from 0x0032: CONSTRUCTOR (r1v2 i03) = (r0v1 yads.zj6[]) A[MD:(T extends java.lang.Enum<T>[]):void (m)] call: i03.<init>(java.lang.Enum[]):void type: CONSTRUCTOR
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
/* JADX INFO: loaded from: classes6.dex */
public final class zj6 {
    DEFAULT("default"),
    /* JADX INFO: Fake field, exist only in values array */
    CACHE_ELSE_NETWORK("cache_else_network"),
    /* JADX INFO: Fake field, exist only in values array */
    CACHE_ONLY("cache_only"),
    /* JADX INFO: Fake field, exist only in values array */
    DISABLED("disabled");

    public static final yj6 c;
    public static final LinkedHashMap d;
    public final String b;

    static {
        defpackage.i03 i03Var = new defpackage.i03(zj6VarArr);
        c = new yj6();
        int iB = defpackage.m05.b(defpackage.kn1.q(i03Var, 10));
        LinkedHashMap linkedHashMap = new LinkedHashMap(iB < 16 ? 16 : iB);
        for (Object obj : i03Var) {
            linkedHashMap.put(((zj6) obj).b, obj);
        }
        d = linkedHashMap;
    }

    public zj6(String str) {
        super(str, i);
        this.b = str;
    }

    public static zj6 valueOf(String str) {
        return (zj6) Enum.valueOf(zj6.class, str);
    }

    public static zj6[] values() {
        return (zj6[]) f.clone();
    }
}
