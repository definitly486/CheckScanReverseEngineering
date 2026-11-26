package io.appmetrica.analytics.ndkcrashesapi.internal;

import defpackage.g03;
import defpackage.i03;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v1 io.appmetrica.analytics.ndkcrashesapi.internal.NativeCrashSource[], still in use, count: 1, list:
  (r0v1 io.appmetrica.analytics.ndkcrashesapi.internal.NativeCrashSource[]) from 0x001c: CONSTRUCTOR (r0v1 io.appmetrica.analytics.ndkcrashesapi.internal.NativeCrashSource[]) A[MD:(T extends java.lang.Enum<T>[]):void (m), WRAPPED] call: i03.<init>(java.lang.Enum[]):void type: CONSTRUCTOR
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
/* JADX INFO: loaded from: classes5.dex */
public final class NativeCrashSource {
    UNKNOWN,
    CRASHPAD;

    private static final /* synthetic */ g03 b;

    static {
        b = new i03(nativeCrashSourceArr);
    }

    private NativeCrashSource() {
        super(str, i);
    }

    public static g03<NativeCrashSource> getEntries() {
        return b;
    }

    public static NativeCrashSource valueOf(String str) {
        return (NativeCrashSource) Enum.valueOf(NativeCrashSource.class, str);
    }

    public static NativeCrashSource[] values() {
        return (NativeCrashSource[]) a.clone();
    }
}
