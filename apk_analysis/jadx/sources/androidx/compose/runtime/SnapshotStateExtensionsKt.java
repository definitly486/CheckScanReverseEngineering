package androidx.compose.runtime;

/* JADX INFO: loaded from: classes2.dex */
public final class SnapshotStateExtensionsKt {
    public static final DoubleState asDoubleState(State<Double> state) {
        return state instanceof DoubleState ? (DoubleState) state : new UnboxedDoubleState(state);
    }

    public static final FloatState asFloatState(State<Float> state) {
        return state instanceof FloatState ? (FloatState) state : new UnboxedFloatState(state);
    }

    public static final IntState asIntState(State<Integer> state) {
        return state instanceof IntState ? (IntState) state : new UnboxedIntState(state);
    }

    public static final LongState asLongState(State<Long> state) {
        return state instanceof LongState ? (LongState) state : new UnboxedLongState(state);
    }
}
