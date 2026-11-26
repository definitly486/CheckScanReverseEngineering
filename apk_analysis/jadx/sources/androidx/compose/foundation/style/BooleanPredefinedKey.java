package androidx.compose.foundation.style;

import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
public final class BooleanPredefinedKey extends StyleStateKey<Boolean> implements PredefinedKey {
    public static final int $stable = 8;
    private final int mask;

    public BooleanPredefinedKey(int i, boolean z) {
        super(Boolean.valueOf(z));
        this.mask = i;
    }

    public final int getMask() {
        return this.mask;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.compose.foundation.style.StyleStateKey
    public Boolean getValueFrom$foundation(MutableStyleState mutableStyleState) {
        return Boolean.valueOf((this.mask & mutableStyleState.getPredefinedState$foundation()) != 0);
    }

    public void setValueTo$foundation(boolean z, MutableStyleState mutableStyleState) {
        int i = this.mask;
        int predefinedState$foundation = mutableStyleState.getPredefinedState$foundation();
        int i2 = i & (~predefinedState$foundation);
        if (!z) {
            predefinedState$foundation = 0;
        }
        mutableStyleState.setPredefinedState$foundation(i2 | predefinedState$foundation);
    }

    public /* synthetic */ BooleanPredefinedKey(int i, boolean z, int i2, jh2 jh2Var) {
        this(i, (i2 & 2) != 0 ? false : z);
    }

    @Override // androidx.compose.foundation.style.StyleStateKey
    public /* bridge */ /* synthetic */ void setValueTo$foundation(Boolean bool, MutableStyleState mutableStyleState) {
        setValueTo$foundation(bool.booleanValue(), mutableStyleState);
    }
}
