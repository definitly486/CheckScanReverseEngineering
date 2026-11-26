package androidx.compose.foundation.layout;

import androidx.collection.MutableLongList;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.DpRect;
import defpackage.fg;
import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
final class GridConfigurationScopeImpl implements GridConfigurationScope, Density {
    private final /* synthetic */ Density $$delegate_0;
    private float columnGap;
    private final MutableLongList columnSpecs;
    private final long constraints;
    private int flow;
    private float rowGap;
    private final MutableLongList rowSpecs;

    private GridConfigurationScopeImpl(Density density, long j) {
        this.$$delegate_0 = density;
        this.constraints = j;
        this.columnSpecs = new MutableLongList(0, 1, null);
        this.rowSpecs = new MutableLongList(0, 1, null);
        this.columnGap = Dp.m9042constructorimpl(0.0f);
        this.rowGap = Dp.m9042constructorimpl(0.0f);
        this.flow = GridFlow.m1944constructorimpl(0);
    }

    @Override // androidx.compose.foundation.layout.GridConfigurationScope
    public void column(float f) {
        mo1923column118E5d0(GridTrackSize.Companion.m1978Percentage9Tp3RV8(f));
    }

    @Override // androidx.compose.foundation.layout.GridConfigurationScope
    /* JADX INFO: renamed from: column-0680j_4 */
    public void mo1922column0680j_4(float f) {
        mo1923column118E5d0(GridTrackSize.Companion.m1975FixedpsSkOvk(f));
    }

    @Override // androidx.compose.foundation.layout.GridConfigurationScope
    /* JADX INFO: renamed from: column-118E5d0 */
    public void mo1923column118E5d0(long j) {
        this.columnSpecs.add(j);
    }

    @Override // androidx.compose.foundation.layout.GridConfigurationScope
    /* JADX INFO: renamed from: column-XZblgos */
    public void mo1924columnXZblgos(float f) {
        mo1923column118E5d0(GridTrackSize.Companion.m1976FlexKGB9zo8(f));
    }

    @Override // androidx.compose.foundation.layout.GridConfigurationScope
    /* JADX INFO: renamed from: columnGap-0680j_4 */
    public void mo1925columnGap0680j_4(float f) {
        if (f >= 0.0f) {
            this.columnGap = f;
        } else {
            fg.c("Column gap must be non-negative");
        }
    }

    @Override // androidx.compose.foundation.layout.GridConfigurationScope
    /* JADX INFO: renamed from: gap-0680j_4 */
    public void mo1926gap0680j_4(float f) {
        if (f < 0.0f) {
            fg.c("Gap must be non-negative");
        } else {
            this.columnGap = f;
            this.rowGap = f;
        }
    }

    @Override // androidx.compose.foundation.layout.GridConfigurationScope
    /* JADX INFO: renamed from: gap-YgX7TsA */
    public void mo1927gapYgX7TsA(float f, float f2) {
        if (f < 0.0f) {
            fg.c("Row gap must be non-negative");
        } else if (f2 < 0.0f) {
            fg.c("Column gap must be non-negative");
        } else {
            this.rowGap = f;
            this.columnGap = f2;
        }
    }

    /* JADX INFO: renamed from: getColumnGap-D9Ej5fM, reason: not valid java name */
    public final float m1939getColumnGapD9Ej5fM() {
        return this.columnGap;
    }

    public final MutableLongList getColumnSpecs() {
        return this.columnSpecs;
    }

    @Override // androidx.compose.foundation.layout.GridConfigurationScope
    /* JADX INFO: renamed from: getConstraints-msEJaDk */
    public long mo1928getConstraintsmsEJaDk() {
        return this.constraints;
    }

    @Override // androidx.compose.ui.unit.Density
    public float getDensity() {
        return this.$$delegate_0.getDensity();
    }

    @Override // androidx.compose.foundation.layout.GridConfigurationScope
    /* JADX INFO: renamed from: getFlow-ITJdzs4 */
    public int mo1929getFlowITJdzs4() {
        return this.flow;
    }

    @Override // androidx.compose.ui.unit.FontScaling
    public float getFontScale() {
        return this.$$delegate_0.getFontScale();
    }

    /* JADX INFO: renamed from: getRowGap-D9Ej5fM, reason: not valid java name */
    public final float m1940getRowGapD9Ej5fM() {
        return this.rowGap;
    }

    public final MutableLongList getRowSpecs() {
        return this.rowSpecs;
    }

    @Override // androidx.compose.ui.unit.Density
    /* JADX INFO: renamed from: roundToPx--R2X_6o */
    public int mo1427roundToPxR2X_6o(long j) {
        return this.$$delegate_0.mo1427roundToPxR2X_6o(j);
    }

    @Override // androidx.compose.ui.unit.Density
    /* JADX INFO: renamed from: roundToPx-0680j_4 */
    public int mo1428roundToPx0680j_4(float f) {
        return this.$$delegate_0.mo1428roundToPx0680j_4(f);
    }

    @Override // androidx.compose.foundation.layout.GridConfigurationScope
    public void row(float f) {
        mo1935row118E5d0(GridTrackSize.Companion.m1978Percentage9Tp3RV8(f));
    }

    @Override // androidx.compose.foundation.layout.GridConfigurationScope
    /* JADX INFO: renamed from: row-0680j_4 */
    public void mo1934row0680j_4(float f) {
        mo1935row118E5d0(GridTrackSize.Companion.m1975FixedpsSkOvk(f));
    }

    @Override // androidx.compose.foundation.layout.GridConfigurationScope
    /* JADX INFO: renamed from: row-118E5d0 */
    public void mo1935row118E5d0(long j) {
        this.rowSpecs.add(j);
    }

    @Override // androidx.compose.foundation.layout.GridConfigurationScope
    /* JADX INFO: renamed from: row-XZblgos */
    public void mo1936rowXZblgos(float f) {
        mo1935row118E5d0(GridTrackSize.Companion.m1976FlexKGB9zo8(f));
    }

    @Override // androidx.compose.foundation.layout.GridConfigurationScope
    /* JADX INFO: renamed from: rowGap-0680j_4 */
    public void mo1937rowGap0680j_4(float f) {
        if (f >= 0.0f) {
            this.rowGap = f;
        } else {
            fg.c("Row gap must be non-negative");
        }
    }

    /* JADX INFO: renamed from: setColumnGap-0680j_4, reason: not valid java name */
    public final void m1941setColumnGap0680j_4(float f) {
        this.columnGap = f;
    }

    @Override // androidx.compose.foundation.layout.GridConfigurationScope
    /* JADX INFO: renamed from: setFlow-4t4_IgM */
    public void mo1938setFlow4t4_IgM(int i) {
        this.flow = i;
    }

    /* JADX INFO: renamed from: setRowGap-0680j_4, reason: not valid java name */
    public final void m1942setRowGap0680j_4(float f) {
        this.rowGap = f;
    }

    @Override // androidx.compose.ui.unit.FontScaling
    /* JADX INFO: renamed from: toDp-GaN1DYA */
    public float mo1429toDpGaN1DYA(long j) {
        return this.$$delegate_0.mo1429toDpGaN1DYA(j);
    }

    @Override // androidx.compose.ui.unit.Density
    /* JADX INFO: renamed from: toDp-u2uoSUM */
    public float mo1430toDpu2uoSUM(float f) {
        return this.$$delegate_0.mo1430toDpu2uoSUM(f);
    }

    @Override // androidx.compose.ui.unit.Density
    /* JADX INFO: renamed from: toDpSize-k-rfVVM */
    public long mo1432toDpSizekrfVVM(long j) {
        return this.$$delegate_0.mo1432toDpSizekrfVVM(j);
    }

    @Override // androidx.compose.ui.unit.Density
    /* JADX INFO: renamed from: toPx--R2X_6o */
    public float mo1433toPxR2X_6o(long j) {
        return this.$$delegate_0.mo1433toPxR2X_6o(j);
    }

    @Override // androidx.compose.ui.unit.Density
    /* JADX INFO: renamed from: toPx-0680j_4 */
    public float mo1434toPx0680j_4(float f) {
        return this.$$delegate_0.mo1434toPx0680j_4(f);
    }

    @Override // androidx.compose.ui.unit.Density
    public Rect toRect(DpRect dpRect) {
        return this.$$delegate_0.toRect(dpRect);
    }

    @Override // androidx.compose.ui.unit.Density
    /* JADX INFO: renamed from: toSize-XkaWNTQ */
    public long mo1435toSizeXkaWNTQ(long j) {
        return this.$$delegate_0.mo1435toSizeXkaWNTQ(j);
    }

    @Override // androidx.compose.ui.unit.FontScaling
    /* JADX INFO: renamed from: toSp-0xMU5do */
    public long mo1436toSp0xMU5do(float f) {
        return this.$$delegate_0.mo1436toSp0xMU5do(f);
    }

    @Override // androidx.compose.ui.unit.Density
    /* JADX INFO: renamed from: toSp-kPz2Gy4 */
    public long mo1437toSpkPz2Gy4(float f) {
        return this.$$delegate_0.mo1437toSpkPz2Gy4(f);
    }

    @Override // androidx.compose.ui.unit.Density
    /* JADX INFO: renamed from: toDp-u2uoSUM */
    public float mo1431toDpu2uoSUM(int i) {
        return this.$$delegate_0.mo1431toDpu2uoSUM(i);
    }

    @Override // androidx.compose.ui.unit.Density
    /* JADX INFO: renamed from: toSp-kPz2Gy4 */
    public long mo1438toSpkPz2Gy4(int i) {
        return this.$$delegate_0.mo1438toSpkPz2Gy4(i);
    }

    public /* synthetic */ GridConfigurationScopeImpl(Density density, long j, jh2 jh2Var) {
        this(density, j);
    }
}
