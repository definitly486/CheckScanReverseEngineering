package androidx.compose.ui.input.pointer;

/* JADX INFO: loaded from: classes2.dex */
public final class PointerInputEventProcessorKt {
    public static final int ProcessResult(boolean z, boolean z2, boolean z3) {
        return ProcessResult.m7654constructorimpl((z ? 1 : 0) | ((z2 ? 1 : 0) << 1) | ((z3 ? 1 : 0) << 2));
    }

    private static final int toInt(boolean z) {
        return z ? 1 : 0;
    }
}
