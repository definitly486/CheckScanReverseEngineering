package yads;

import defpackage.u96;
import java.util.List;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 yads.ix4[], still in use, count: 1, list:
  (r0v1 yads.ix4[]) from 0x0038: CONSTRUCTOR (r0v1 yads.ix4[]) A[MD:(T extends java.lang.Enum<T>[]):void (m), WRAPPED] call: i03.<init>(java.lang.Enum[]):void type: CONSTRUCTOR
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
/* JADX INFO: loaded from: classes3.dex */
public final class ix4 {
    /* JADX INFO: Fake field, exist only in values array */
    EF11(u96.h("io.flutter.embedding.android.FlutterActivity")),
    /* JADX INFO: Fake field, exist only in values array */
    EF25(u96.h("com.facebook.react.bridge.ReactContext")),
    /* JADX INFO: Fake field, exist only in values array */
    EF45(u96.i("com.unity3d.player.UnityPlayer", "com.unity3d.player.UnityPlayerActivity"));

    public static final /* synthetic */ defpackage.g03 d;
    public final List b;

    static {
        d = new defpackage.i03(ix4VarArr);
    }

    public ix4(List list) {
        super(str, i);
        this.b = list;
    }

    public static ix4 valueOf(String str) {
        return (ix4) Enum.valueOf(ix4.class, str);
    }

    public static ix4[] values() {
        return (ix4[]) c.clone();
    }
}
