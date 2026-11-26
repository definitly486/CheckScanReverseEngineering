package androidx.compose.material3;

import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.PrimitiveSnapshotStateKt;
import defpackage.kx6;

/* JADX INFO: loaded from: classes2.dex */
final class BottomAppBarStateImpl implements BottomAppBarState {
    private MutableFloatState _heightOffset;
    private final MutableFloatState contentOffset$delegate;
    private final MutableFloatState heightOffsetLimit$delegate;

    public BottomAppBarStateImpl(float f, float f2, float f3) {
        this.heightOffsetLimit$delegate = PrimitiveSnapshotStateKt.mutableFloatStateOf(f);
        this.contentOffset$delegate = PrimitiveSnapshotStateKt.mutableFloatStateOf(f3);
        this._heightOffset = PrimitiveSnapshotStateKt.mutableFloatStateOf(f2);
    }

    @Override // androidx.compose.material3.BottomAppBarState
    public float getCollapsedFraction() {
        if (getHeightOffsetLimit() == 0.0f) {
            return 0.0f;
        }
        return getHeightOffset() / getHeightOffsetLimit();
    }

    @Override // androidx.compose.material3.BottomAppBarState
    public float getContentOffset() {
        return this.contentOffset$delegate.getFloatValue();
    }

    @Override // androidx.compose.material3.BottomAppBarState
    public float getHeightOffset() {
        return this._heightOffset.getFloatValue();
    }

    @Override // androidx.compose.material3.BottomAppBarState
    public float getHeightOffsetLimit() {
        return this.heightOffsetLimit$delegate.getFloatValue();
    }

    @Override // androidx.compose.material3.BottomAppBarState
    public void setContentOffset(float f) {
        this.contentOffset$delegate.setFloatValue(f);
    }

    @Override // androidx.compose.material3.BottomAppBarState
    public void setHeightOffset(float f) {
        this._heightOffset.setFloatValue(kx6.d(f, getHeightOffsetLimit(), 0.0f));
    }

    @Override // androidx.compose.material3.BottomAppBarState
    public void setHeightOffsetLimit(float f) {
        this.heightOffsetLimit$delegate.setFloatValue(f);
    }
}
