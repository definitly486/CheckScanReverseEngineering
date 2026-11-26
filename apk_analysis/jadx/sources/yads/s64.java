package yads;

import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.LinkedHashMap;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r1v9 yads.s64[], still in use, count: 1, list:
  (r1v9 yads.s64[]) from 0x0125: CONSTRUCTOR (r2v9 i03) = (r1v9 yads.s64[]) A[MD:(T extends java.lang.Enum<T>[]):void (m)] call: i03.<init>(java.lang.Enum[]):void type: CONSTRUCTOR
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
/* JADX INFO: loaded from: classes6.dex */
public final class s64 {
    APPLOVIN("applovin"),
    APPLOVIN_MAX("applovin_max"),
    APPNEXT("appnext"),
    BIGOADS("bigoads"),
    CHARTBOOST("chartboost"),
    ADMOB("admob"),
    ADMANAGER("admanager"),
    DIGITAL_TURBINE("digitalturbine"),
    INMOBI("inmobi"),
    IRONSOURCE("ironsource"),
    MINTEGRAL("mintegral"),
    MYTARGET("mytarget"),
    PANGLE("pangle"),
    PETALADS("petalads"),
    STARTAPP("startapp"),
    TAPJOY("tapjoy"),
    UNITYADS("unityads"),
    VUNGLE("vungle"),
    ZMATICOO("zmaticoo"),
    UNDEFINED(StringUtils.UNDEFINED);

    public static final r64 c;
    public static final LinkedHashMap d;
    public final String b;

    static {
        defpackage.i03 i03Var = new defpackage.i03(s64VarArr);
        c = new r64();
        int iB = defpackage.m05.b(defpackage.kn1.q(i03Var, 10));
        LinkedHashMap linkedHashMap = new LinkedHashMap(iB < 16 ? 16 : iB);
        for (Object obj : i03Var) {
            linkedHashMap.put(((s64) obj).b, obj);
        }
        d = linkedHashMap;
    }

    public s64(String str) {
        super(str, i);
        this.b = str;
    }

    public static s64 valueOf(String str) {
        return (s64) Enum.valueOf(s64.class, str);
    }

    public static s64[] values() {
        return (s64[]) y.clone();
    }
}
