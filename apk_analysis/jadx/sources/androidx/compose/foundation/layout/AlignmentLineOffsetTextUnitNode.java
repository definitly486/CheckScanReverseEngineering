package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.TextUnit;
import defpackage.jh2;

/* JADX INFO: loaded from: classes.dex */
final class AlignmentLineOffsetTextUnitNode extends Modifier.Node implements LayoutModifierNode {
    private long after;
    private AlignmentLine alignmentLine;
    private long before;

    private AlignmentLineOffsetTextUnitNode(AlignmentLine alignmentLine, long j, long j2) {
        this.alignmentLine = alignmentLine;
        this.before = j;
        this.after = j2;
    }

    /* JADX INFO: renamed from: getAfter-XSAIIZE, reason: not valid java name */
    public final long m1726getAfterXSAIIZE() {
        return this.after;
    }

    public final AlignmentLine getAlignmentLine() {
        return this.alignmentLine;
    }

    /* JADX INFO: renamed from: getBefore-XSAIIZE, reason: not valid java name */
    public final long m1727getBeforeXSAIIZE() {
        return this.before;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* JADX INFO: renamed from: measure-3p2s80s */
    public MeasureResult mo1073measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
        return AlignmentLineKt.m1709alignmentLineOffsetMeasuretjqqzMA(measureScope, this.alignmentLine, TextUnit.m9234getRawTypeimpl(this.before) == 0 ? Dp.Companion.m9062getUnspecifiedD9Ej5fM() : measureScope.mo1429toDpGaN1DYA(this.before), TextUnit.m9234getRawTypeimpl(this.after) == 0 ? Dp.Companion.m9062getUnspecifiedD9Ej5fM() : measureScope.mo1429toDpGaN1DYA(this.after), measurable, j);
    }

    /* JADX INFO: renamed from: setAfter--R2X_6o, reason: not valid java name */
    public final void m1728setAfterR2X_6o(long j) {
        this.after = j;
    }

    public final void setAlignmentLine(AlignmentLine alignmentLine) {
        this.alignmentLine = alignmentLine;
    }

    /* JADX INFO: renamed from: setBefore--R2X_6o, reason: not valid java name */
    public final void m1729setBeforeR2X_6o(long j) {
        this.before = j;
    }

    public /* synthetic */ AlignmentLineOffsetTextUnitNode(AlignmentLine alignmentLine, long j, long j2, jh2 jh2Var) {
        this(alignmentLine, j, j2);
    }
}
