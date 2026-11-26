package yads;

import com.my.tracker.ads.AdFormat;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 yads.g13[], still in use, count: 1, list:
  (r0v1 yads.g13[]) from 0x002c: CONSTRUCTOR (r0v1 yads.g13[]) A[MD:(T extends java.lang.Enum<T>[]):void (m), WRAPPED] call: i03.<init>(java.lang.Enum[]):void type: CONSTRUCTOR
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
public final class g13 {
    INTERSTITIAL(AdFormat.INTERSTITIAL),
    REWARDED(AdFormat.REWARDED),
    APP_OPEN("appopen");

    public static final f13 c = new f13();
    public static final /* synthetic */ defpackage.g03 h;
    public final String b;

    static {
        h = new defpackage.i03(new g13[]{r0, r1, r2});
    }

    public g13(String str) {
        super(str, i);
        this.b = str;
    }

    public static g13 valueOf(String str) {
        return (g13) Enum.valueOf(g13.class, str);
    }

    public static g13[] values() {
        return (g13[]) g.clone();
    }
}
