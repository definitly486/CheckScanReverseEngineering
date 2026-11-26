package androidx.compose.ui.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.unit.Constraints;
import defpackage.dm3;

/* JADX INFO: loaded from: classes2.dex */
public final class LayoutModifierImpl extends Modifier.Node implements LayoutModifierNode {
    public static final int $stable = 8;
    private dm3<? super MeasureScope, ? super Measurable, ? super Constraints, ? extends MeasureResult> measureBlock;

    public LayoutModifierImpl(dm3<? super MeasureScope, ? super Measurable, ? super Constraints, ? extends MeasureResult> dm3Var) {
        this.measureBlock = dm3Var;
    }

    public final dm3<MeasureScope, Measurable, Constraints, MeasureResult> getMeasureBlock() {
        return this.measureBlock;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* JADX INFO: renamed from: measure-3p2s80s */
    public MeasureResult mo1073measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
        return this.measureBlock.invoke(measureScope, measurable, Constraints.m8982boximpl(j));
    }

    public final void setMeasureBlock(dm3<? super MeasureScope, ? super Measurable, ? super Constraints, ? extends MeasureResult> dm3Var) {
        this.measureBlock = dm3Var;
    }

    public String toString() {
        return "LayoutModifierImpl(measureBlock=" + this.measureBlock + ')';
    }
}
