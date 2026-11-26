package com.tapjoy;

import defpackage.g03;
import defpackage.i03;
import defpackage.jh2;
import java.util.Iterator;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 com.tapjoy.TJLogLevel[], still in use, count: 1, list:
  (r0v1 com.tapjoy.TJLogLevel[]) from 0x0030: CONSTRUCTOR (r0v1 com.tapjoy.TJLogLevel[]) A[MD:(T extends java.lang.Enum<T>[]):void (m), WRAPPED] call: i03.<init>(java.lang.Enum[]):void type: CONSTRUCTOR
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
public final class TJLogLevel {
    ERROR(0),
    WARNING(1),
    INFO(2),
    DEBUG(3);

    public static final Companion Companion = new Companion(null);
    public static final /* synthetic */ g03 c;
    public final int a;

    public static final class Companion {
        public Companion(jh2 jh2Var) {
        }

        public final TJLogLevel valueOf(int i) {
            TJLogLevel next;
            Iterator<TJLogLevel> it = TJLogLevel.getEntries().iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (next.getLevel() != i);
            TJLogLevel tJLogLevel = next;
            return tJLogLevel == null ? TJLogLevel.ERROR : tJLogLevel;
        }
    }

    static {
        c = new i03(new TJLogLevel[]{r0, r1, r2, r3});
    }

    public TJLogLevel(int i) {
        super(str, i);
        this.a = i;
    }

    public static g03<TJLogLevel> getEntries() {
        return c;
    }

    public static TJLogLevel valueOf(String str) {
        return (TJLogLevel) Enum.valueOf(TJLogLevel.class, str);
    }

    public static TJLogLevel[] values() {
        return (TJLogLevel[]) b.clone();
    }

    public final int getLevel() {
        return this.a;
    }

    public final int getValue() {
        return this.a;
    }

    public static final TJLogLevel valueOf(int i) {
        return Companion.valueOf(i);
    }
}
