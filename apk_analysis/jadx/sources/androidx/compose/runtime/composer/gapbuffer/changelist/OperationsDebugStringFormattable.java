package androidx.compose.runtime.composer.gapbuffer.changelist;

import defpackage.n1;

/* JADX INFO: loaded from: classes2.dex */
public abstract class OperationsDebugStringFormattable {
    public static final int $stable = 0;

    public static /* synthetic */ String toDebugString$default(OperationsDebugStringFormattable operationsDebugStringFormattable, String str, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: toDebugString");
            return null;
        }
        if ((i & 1) != 0) {
            str = "  ";
        }
        return operationsDebugStringFormattable.toDebugString(str);
    }

    public abstract String toDebugString(String str);
}
