package androidx.compose.foundation.layout;

import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.unit.TextUnit;
import defpackage.aa4;
import defpackage.j59;
import defpackage.jh2;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
final class AlignmentLineOffsetTextUnitElement extends ModifierNodeElement<AlignmentLineOffsetTextUnitNode> {
    private final long after;
    private final AlignmentLine alignmentLine;
    private final long before;
    private final nl3<InspectorInfo, j59> inspectorInfo;

    /* JADX WARN: Multi-variable type inference failed */
    private AlignmentLineOffsetTextUnitElement(AlignmentLine alignmentLine, long j, long j2, nl3<? super InspectorInfo, j59> nl3Var) {
        this.alignmentLine = alignmentLine;
        this.before = j;
        this.after = j2;
        this.inspectorInfo = nl3Var;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public AlignmentLineOffsetTextUnitNode create() {
        return new AlignmentLineOffsetTextUnitNode(this.alignmentLine, this.before, this.after, null);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        AlignmentLineOffsetTextUnitElement alignmentLineOffsetTextUnitElement = obj instanceof AlignmentLineOffsetTextUnitElement ? (AlignmentLineOffsetTextUnitElement) obj : null;
        return alignmentLineOffsetTextUnitElement != null && aa4.e(this.alignmentLine, alignmentLineOffsetTextUnitElement.alignmentLine) && TextUnit.m9233equalsimpl0(this.before, alignmentLineOffsetTextUnitElement.before) && TextUnit.m9233equalsimpl0(this.after, alignmentLineOffsetTextUnitElement.after);
    }

    /* JADX INFO: renamed from: getAfter-XSAIIZE, reason: not valid java name */
    public final long m1724getAfterXSAIIZE() {
        return this.after;
    }

    public final AlignmentLine getAlignmentLine() {
        return this.alignmentLine;
    }

    /* JADX INFO: renamed from: getBefore-XSAIIZE, reason: not valid java name */
    public final long m1725getBeforeXSAIIZE() {
        return this.before;
    }

    public final nl3<InspectorInfo, j59> getInspectorInfo() {
        return this.inspectorInfo;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public int hashCode() {
        return TextUnit.m9237hashCodeimpl(this.after) + ((TextUnit.m9237hashCodeimpl(this.before) + (this.alignmentLine.hashCode() * 31)) * 31);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void inspectableProperties(InspectorInfo inspectorInfo) {
        this.inspectorInfo.invoke(inspectorInfo);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void update(AlignmentLineOffsetTextUnitNode alignmentLineOffsetTextUnitNode) {
        alignmentLineOffsetTextUnitNode.setAlignmentLine(this.alignmentLine);
        alignmentLineOffsetTextUnitNode.m1729setBeforeR2X_6o(this.before);
        alignmentLineOffsetTextUnitNode.m1728setAfterR2X_6o(this.after);
    }

    public /* synthetic */ AlignmentLineOffsetTextUnitElement(AlignmentLine alignmentLine, long j, long j2, nl3 nl3Var, jh2 jh2Var) {
        this(alignmentLine, j, j2, nl3Var);
    }
}
