package yads;

import com.my.tracker.ads.AdFormat;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 yads.n70[], still in use, count: 1, list:
  (r0v1 yads.n70[]) from 0x0075: CONSTRUCTOR (r0v1 yads.n70[]) A[MD:(T extends java.lang.Enum<T>[]):void (m), WRAPPED] call: i03.<init>(java.lang.Enum[]):void type: CONSTRUCTOR
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
public final class n70 {
    BANNER(AdFormat.BANNER),
    INTERSTITIAL(AdFormat.INTERSTITIAL),
    REWARDED(AdFormat.REWARDED),
    NATIVE("native"),
    INSTREAM("instream"),
    APPOPENAD("appopenad"),
    RETAIL_MEDIA("retail"),
    FEED("feed"),
    SHOWCASE("showcase");

    public static final m70 c = new m70();
    public static final /* synthetic */ defpackage.g03 n;
    public final String b;

    static {
        n = new defpackage.i03(new n70[]{r0, r1, r2, r3, r4, r5, r6, r7, r8});
    }

    public n70(String str) {
        super(str, i);
        this.b = str;
    }

    public static n70 valueOf(String str) {
        return (n70) Enum.valueOf(n70.class, str);
    }

    public static n70[] values() {
        return (n70[]) m.clone();
    }
}
