package androidx.compose.runtime.tooling;

/* JADX INFO: loaded from: classes2.dex */
public final class CompositionDataKt {
    public static final CompositionInstance findCompositionInstance(CompositionData compositionData) {
        if (compositionData instanceof CompositionInstance) {
            return (CompositionInstance) compositionData;
        }
        return null;
    }
}
