package androidx.compose.material3;

import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.PrimitiveSnapshotStateKt;
import androidx.compose.runtime.saveable.ListSaverKt;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.runtime.saveable.SaverScope;
import defpackage.et0;
import defpackage.jh2;
import defpackage.kt8;
import defpackage.kx6;
import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class TopAppBarState {
    public static final int $stable = 0;
    public static final Companion Companion = new Companion(null);
    private static final Saver<TopAppBarState, ?> Saver = ListSaverKt.listSaver(new kt8(1), new et0(4));
    private MutableFloatState _heightOffset;
    private final MutableFloatState contentOffset$delegate;
    private float heightOffsetLimit;

    public TopAppBarState(float f, float f2, float f3) {
        this.heightOffsetLimit = f;
        this.contentOffset$delegate = PrimitiveSnapshotStateKt.mutableFloatStateOf(f3);
        this._heightOffset = PrimitiveSnapshotStateKt.mutableFloatStateOf(f2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List Saver$lambda$0(SaverScope saverScope, TopAppBarState topAppBarState) {
        return u96.i(Float.valueOf(topAppBarState.heightOffsetLimit), Float.valueOf(topAppBarState.getHeightOffset()), Float.valueOf(topAppBarState.getContentOffset()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final TopAppBarState Saver$lambda$1(List list) {
        return new TopAppBarState(((Number) list.get(0)).floatValue(), ((Number) list.get(1)).floatValue(), ((Number) list.get(2)).floatValue());
    }

    public final float getCollapsedFraction() {
        if (this.heightOffsetLimit == 0.0f) {
            return 0.0f;
        }
        return getHeightOffset() / this.heightOffsetLimit;
    }

    public final float getContentOffset() {
        return this.contentOffset$delegate.getFloatValue();
    }

    public final float getHeightOffset() {
        return this._heightOffset.getFloatValue();
    }

    public final float getHeightOffsetLimit() {
        return this.heightOffsetLimit;
    }

    public final float getOverlappedFraction() {
        float f = this.heightOffsetLimit;
        if (f == 0.0f) {
            return 0.0f;
        }
        return 1.0f - (kx6.d(f - getContentOffset(), this.heightOffsetLimit, 0.0f) / this.heightOffsetLimit);
    }

    public final void setContentOffset(float f) {
        this.contentOffset$delegate.setFloatValue(f);
    }

    public final void setHeightOffset(float f) {
        this._heightOffset.setFloatValue(kx6.d(f, this.heightOffsetLimit, 0.0f));
    }

    public final void setHeightOffsetLimit(float f) {
        this.heightOffsetLimit = f;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final Saver<TopAppBarState, ?> getSaver() {
            return TopAppBarState.Saver;
        }

        private Companion() {
        }
    }
}
