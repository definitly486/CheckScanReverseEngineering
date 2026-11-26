package androidx.compose.foundation.layout;

import androidx.compose.foundation.layout.internal.InlineClassHelperKt;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.unit.Dp;
import defpackage.j59;
import defpackage.jh2;
import defpackage.nl3;
import defpackage.rg;

/* JADX INFO: loaded from: classes.dex */
final class PaddingElement extends ModifierNodeElement<PaddingNode> {
    private float bottom;
    private float end;
    private final nl3<InspectorInfo, j59> inspectorInfo;
    private boolean rtlAware;
    private float start;
    private float top;

    /* JADX WARN: Multi-variable type inference failed */
    private PaddingElement(float f, float f2, float f3, float f4, boolean z, nl3<? super InspectorInfo, j59> nl3Var) {
        this.start = f;
        this.top = f2;
        this.end = f3;
        this.bottom = f4;
        this.rtlAware = z;
        this.inspectorInfo = nl3Var;
        boolean z2 = true;
        boolean z3 = f >= 0.0f || Float.isNaN(f);
        float f5 = this.top;
        boolean z4 = z3 & (f5 >= 0.0f || Float.isNaN(f5));
        float f6 = this.end;
        boolean z5 = z4 & (f6 >= 0.0f || Float.isNaN(f6));
        float f7 = this.bottom;
        if (f7 < 0.0f && !Float.isNaN(f7)) {
            z2 = false;
        }
        if (!z5 || !z2) {
            InlineClassHelperKt.throwIllegalArgumentException("Padding must be non-negative");
        }
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public PaddingNode create() {
        return new PaddingNode(this.start, this.top, this.end, this.bottom, this.rtlAware, null);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public boolean equals(Object obj) {
        PaddingElement paddingElement = obj instanceof PaddingElement ? (PaddingElement) obj : null;
        return paddingElement != null && Dp.m9047equalsimpl0(this.start, paddingElement.start) && Dp.m9047equalsimpl0(this.top, paddingElement.top) && Dp.m9047equalsimpl0(this.end, paddingElement.end) && Dp.m9047equalsimpl0(this.bottom, paddingElement.bottom) && this.rtlAware == paddingElement.rtlAware;
    }

    /* JADX INFO: renamed from: getBottom-D9Ej5fM, reason: not valid java name */
    public final float m2018getBottomD9Ej5fM() {
        return this.bottom;
    }

    /* JADX INFO: renamed from: getEnd-D9Ej5fM, reason: not valid java name */
    public final float m2019getEndD9Ej5fM() {
        return this.end;
    }

    public final nl3<InspectorInfo, j59> getInspectorInfo() {
        return this.inspectorInfo;
    }

    public final boolean getRtlAware() {
        return this.rtlAware;
    }

    /* JADX INFO: renamed from: getStart-D9Ej5fM, reason: not valid java name */
    public final float m2020getStartD9Ej5fM() {
        return this.start;
    }

    /* JADX INFO: renamed from: getTop-D9Ej5fM, reason: not valid java name */
    public final float m2021getTopD9Ej5fM() {
        return this.top;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public int hashCode() {
        return Boolean.hashCode(this.rtlAware) + rg.c(this.bottom, rg.c(this.end, rg.c(this.top, Dp.m9048hashCodeimpl(this.start) * 31, 31), 31), 31);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void inspectableProperties(InspectorInfo inspectorInfo) {
        this.inspectorInfo.invoke(inspectorInfo);
    }

    /* JADX INFO: renamed from: setBottom-0680j_4, reason: not valid java name */
    public final void m2022setBottom0680j_4(float f) {
        this.bottom = f;
    }

    /* JADX INFO: renamed from: setEnd-0680j_4, reason: not valid java name */
    public final void m2023setEnd0680j_4(float f) {
        this.end = f;
    }

    public final void setRtlAware(boolean z) {
        this.rtlAware = z;
    }

    /* JADX INFO: renamed from: setStart-0680j_4, reason: not valid java name */
    public final void m2024setStart0680j_4(float f) {
        this.start = f;
    }

    /* JADX INFO: renamed from: setTop-0680j_4, reason: not valid java name */
    public final void m2025setTop0680j_4(float f) {
        this.top = f;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void update(PaddingNode paddingNode) {
        paddingNode.m2044setStart0680j_4(this.start);
        paddingNode.m2045setTop0680j_4(this.top);
        paddingNode.m2043setEnd0680j_4(this.end);
        paddingNode.m2042setBottom0680j_4(this.bottom);
        paddingNode.setRtlAware(this.rtlAware);
    }

    public /* synthetic */ PaddingElement(float f, float f2, float f3, float f4, boolean z, nl3 nl3Var, jh2 jh2Var) {
        this(f, f2, f3, f4, z, nl3Var);
    }

    public /* synthetic */ PaddingElement(float f, float f2, float f3, float f4, boolean z, nl3 nl3Var, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? Dp.m9042constructorimpl(0.0f) : f, (i & 2) != 0 ? Dp.m9042constructorimpl(0.0f) : f2, (i & 4) != 0 ? Dp.m9042constructorimpl(0.0f) : f3, (i & 8) != 0 ? Dp.m9042constructorimpl(0.0f) : f4, z, nl3Var, null);
    }
}
