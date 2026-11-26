package androidx.compose.runtime;

/* JADX INFO: loaded from: classes2.dex */
public final class PausableCompositionKt {
    public static final PausableComposition PausableComposition(Applier<?> applier, CompositionContext compositionContext) {
        return new CompositionImpl(compositionContext, applier);
    }
}
