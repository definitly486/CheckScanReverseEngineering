package yads;

import com.my.tracker.ads.AdFormat;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 yads.k54[], still in use, count: 1, list:
  (r0v1 yads.k54[]) from 0x0034: CONSTRUCTOR (r0v1 yads.k54[]) A[MD:(T extends java.lang.Enum<T>[]):void (m), WRAPPED] call: i03.<init>(java.lang.Enum[]):void type: CONSTRUCTOR
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
public final class k54 {
    INTERSTITIAL(AdFormat.INTERSTITIAL),
    /* JADX INFO: Fake field, exist only in values array */
    REWARDED(AdFormat.REWARDED),
    /* JADX INFO: Fake field, exist only in values array */
    BANNER(AdFormat.BANNER),
    NATIVE("native");

    public static final j54 c = new j54();
    public static final /* synthetic */ defpackage.g03 g;
    public final String b;

    static {
        g = new defpackage.i03(new k54[]{r0, r1, r2, r3});
    }

    public k54(String str) {
        super(str, i);
        this.b = str;
    }

    public static k54 valueOf(String str) {
        return (k54) Enum.valueOf(k54.class, str);
    }

    public static k54[] values() {
        return (k54[]) f.clone();
    }
}
