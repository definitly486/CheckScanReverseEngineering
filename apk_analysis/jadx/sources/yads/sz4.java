package yads;

import com.my.tracker.ads.AdFormat;
import defpackage.up7;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 yads.sz4[], still in use, count: 1, list:
  (r0v1 yads.sz4[]) from 0x0026: CONSTRUCTOR (r0v1 yads.sz4[]) A[MD:(T extends java.lang.Enum<T>[]):void (m), WRAPPED] call: i03.<init>(java.lang.Enum[]):void type: CONSTRUCTOR
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
@up7
public final class sz4 {
    /* JADX INFO: Fake field, exist only in values array */
    INTERSTITIAL(AdFormat.INTERSTITIAL),
    /* JADX INFO: Fake field, exist only in values array */
    REWARDED(AdFormat.REWARDED),
    /* JADX INFO: Fake field, exist only in values array */
    APP_OPEN("appopen");

    public static final rz4 Companion = new rz4();
    public static final defpackage.cl4 c = defpackage.nm4.a(defpackage.po4.PUBLICATION, new defpackage.po(3));
    public static final /* synthetic */ defpackage.g03 e = new defpackage.i03(new sz4[]{new sz4(AdFormat.INTERSTITIAL), new sz4(AdFormat.REWARDED), new sz4("appopen")});
    public final String b;

    static {
    }

    public sz4(String str) {
        super(str, i);
        this.b = str;
    }

    public static sz4 valueOf(String str) {
        return (sz4) Enum.valueOf(sz4.class, str);
    }

    public static sz4[] values() {
        return (sz4[]) d.clone();
    }
}
