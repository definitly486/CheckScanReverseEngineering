package androidx.compose.foundation.lazy.layout;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import defpackage.jh2;
import defpackage.kx6;
import defpackage.y74;

/* JADX INFO: loaded from: classes.dex */
public final class LazyLayoutNearestRangeState implements State<y74> {
    public static final int $stable = 0;
    private static final Companion Companion = new Companion(null);
    private final int extraItemCount;
    private int lastFirstVisibleItem;
    private final int slidingWindowSize;
    private final MutableState value$delegate;

    public LazyLayoutNearestRangeState(int i, int i2, int i3) {
        this.slidingWindowSize = i2;
        this.extraItemCount = i3;
        this.value$delegate = SnapshotStateKt.mutableStateOf(Companion.calculateNearestItemsRange(i, i2, i3), SnapshotStateKt.structuralEqualityPolicy());
        this.lastFirstVisibleItem = i;
    }

    private void setValue(y74 y74Var) {
        this.value$delegate.setValue(y74Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.compose.runtime.State
    public y74 getValue() {
        return (y74) this.value$delegate.getValue();
    }

    public final void update(int i) {
        if (i != this.lastFirstVisibleItem) {
            this.lastFirstVisibleItem = i;
            setValue(Companion.calculateNearestItemsRange(i, this.slidingWindowSize, this.extraItemCount));
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final y74 calculateNearestItemsRange(int i, int i2, int i3) {
            int i4 = (i / i2) * i2;
            return kx6.n(Math.max(i4 - i3, 0), i4 + i2 + i3);
        }

        private Companion() {
        }
    }
}
