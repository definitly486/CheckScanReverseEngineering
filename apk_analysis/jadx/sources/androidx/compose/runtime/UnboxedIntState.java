package androidx.compose.runtime;

/* JADX INFO: loaded from: classes2.dex */
public final class UnboxedIntState implements IntState {
    public static final int $stable = 0;
    private final State<Integer> baseState;

    public UnboxedIntState(State<Integer> state) {
        this.baseState = state;
    }

    @Override // androidx.compose.runtime.IntState
    public int getIntValue() {
        return this.baseState.getValue().intValue();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.compose.runtime.IntState, androidx.compose.runtime.State
    public Integer getValue() {
        return this.baseState.getValue();
    }

    public String toString() {
        return "UnboxedIntState(baseState=" + this.baseState + ")@" + hashCode();
    }
}
