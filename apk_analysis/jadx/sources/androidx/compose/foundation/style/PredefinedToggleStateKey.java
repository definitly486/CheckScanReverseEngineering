package androidx.compose.foundation.style;

import androidx.compose.ui.state.ToggleableState;

/* JADX INFO: loaded from: classes.dex */
public final class PredefinedToggleStateKey extends StyleStateKey<ToggleableState> implements PredefinedKey {
    public static final PredefinedToggleStateKey INSTANCE = new PredefinedToggleStateKey();
    public static final int $stable = 8;

    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ToggleableState.values().length];
            try {
                iArr[ToggleableState.On.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[ToggleableState.Off.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private PredefinedToggleStateKey() {
        super(ToggleableState.Off);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.compose.foundation.style.StyleStateKey
    public ToggleableState getValueFrom$foundation(MutableStyleState mutableStyleState) {
        int predefinedState$foundation = mutableStyleState.getPredefinedState$foundation() & 96;
        if (predefinedState$foundation != 0) {
            return predefinedState$foundation != 32 ? ToggleableState.Indeterminate : ToggleableState.On;
        }
        return ToggleableState.Off;
    }

    @Override // androidx.compose.foundation.style.StyleStateKey
    public void setValueTo$foundation(ToggleableState toggleableState, MutableStyleState mutableStyleState) {
        int i;
        int predefinedState$foundation = mutableStyleState.getPredefinedState$foundation() & (-97);
        int i2 = WhenMappings.$EnumSwitchMapping$0[toggleableState.ordinal()];
        if (i2 != 1) {
            i = i2 != 2 ? 64 : 0;
        } else {
            i = 32;
        }
        mutableStyleState.setPredefinedState$foundation(predefinedState$foundation | i);
    }
}
