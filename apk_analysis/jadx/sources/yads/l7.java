package yads;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v16 yads.l7[], still in use, count: 1, list:
  (r0v16 yads.l7[]) from 0x00be: CONSTRUCTOR (r0v16 yads.l7[]) A[MD:(T extends java.lang.Enum<T>[]):void (m), WRAPPED] call: i03.<init>(java.lang.Enum[]):void type: CONSTRUCTOR
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
public final class l7 {
    /* JADX INFO: Fake field, exist only in values array */
    APPLOVIN("applovin"),
    /* JADX INFO: Fake field, exist only in values array */
    APPLOVINMAX("applovin_max"),
    /* JADX INFO: Fake field, exist only in values array */
    BIGOADS("bigoads"),
    /* JADX INFO: Fake field, exist only in values array */
    CHARTBOOST("chartboost"),
    /* JADX INFO: Fake field, exist only in values array */
    DIGITALTURBINE("digitalturbine"),
    /* JADX INFO: Fake field, exist only in values array */
    GOOGLE("admanager"),
    /* JADX INFO: Fake field, exist only in values array */
    ADMOB("admob"),
    /* JADX INFO: Fake field, exist only in values array */
    INMOBI("inmobi"),
    /* JADX INFO: Fake field, exist only in values array */
    IRONSOURCE("ironsource"),
    /* JADX INFO: Fake field, exist only in values array */
    MINTEGRAL("mintegral"),
    /* JADX INFO: Fake field, exist only in values array */
    MYTARGET("mytarget"),
    /* JADX INFO: Fake field, exist only in values array */
    PANGLE("pangle"),
    /* JADX INFO: Fake field, exist only in values array */
    TAPJOY("tapjoy"),
    /* JADX INFO: Fake field, exist only in values array */
    UNITYADS("unityads"),
    /* JADX INFO: Fake field, exist only in values array */
    VUNGLE("vungle"),
    /* JADX INFO: Fake field, exist only in values array */
    YANDEX("yandex");

    public static final k7 c = new k7();
    public static final /* synthetic */ defpackage.g03 e = new defpackage.i03(new l7[]{new l7("applovin"), new l7("applovin_max"), new l7("bigoads"), new l7("chartboost"), new l7("digitalturbine"), new l7("admanager"), new l7("admob"), new l7("inmobi"), new l7("ironsource"), new l7("mintegral"), new l7("mytarget"), new l7("pangle"), new l7("tapjoy"), new l7("unityads"), new l7("vungle"), new l7("yandex")});
    public final String b;

    static {
    }

    public l7(String str) {
        super(str, i);
        this.b = str;
    }

    public static l7 valueOf(String str) {
        return (l7) Enum.valueOf(l7.class, str);
    }

    public static l7[] values() {
        return (l7[]) d.clone();
    }
}
