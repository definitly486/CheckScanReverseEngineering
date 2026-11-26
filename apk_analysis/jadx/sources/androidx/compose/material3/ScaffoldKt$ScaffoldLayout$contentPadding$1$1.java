package androidx.compose.material3;

import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;

/* JADX INFO: loaded from: classes2.dex */
public final class ScaffoldKt$ScaffoldLayout$contentPadding$1$1 implements PaddingValues {
    private final MutableState paddingHolder$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(PaddingKt.m2026PaddingValues0680j_4(Dp.m9042constructorimpl(0.0f)), null, 2, null);

    @Override // androidx.compose.foundation.layout.PaddingValues
    /* JADX INFO: renamed from: calculateBottomPadding-D9Ej5fM */
    public float mo1982calculateBottomPaddingD9Ej5fM() {
        return getPaddingHolder().mo1982calculateBottomPaddingD9Ej5fM();
    }

    @Override // androidx.compose.foundation.layout.PaddingValues
    /* JADX INFO: renamed from: calculateLeftPadding-u2uoSUM */
    public float mo1983calculateLeftPaddingu2uoSUM(LayoutDirection layoutDirection) {
        return getPaddingHolder().mo1983calculateLeftPaddingu2uoSUM(layoutDirection);
    }

    @Override // androidx.compose.foundation.layout.PaddingValues
    /* JADX INFO: renamed from: calculateRightPadding-u2uoSUM */
    public float mo1984calculateRightPaddingu2uoSUM(LayoutDirection layoutDirection) {
        return getPaddingHolder().mo1984calculateRightPaddingu2uoSUM(layoutDirection);
    }

    @Override // androidx.compose.foundation.layout.PaddingValues
    /* JADX INFO: renamed from: calculateTopPadding-D9Ej5fM */
    public float mo1985calculateTopPaddingD9Ej5fM() {
        return getPaddingHolder().mo1985calculateTopPaddingD9Ej5fM();
    }

    public final PaddingValues getPaddingHolder() {
        return (PaddingValues) this.paddingHolder$delegate.getValue();
    }

    public final void setPaddingHolder(PaddingValues paddingValues) {
        this.paddingHolder$delegate.setValue(paddingValues);
    }
}
