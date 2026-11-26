package androidx.compose.foundation;

import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.node.DrawModifierNodeKt;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.node.SemanticsModifierNodeKt;
import androidx.compose.ui.platform.InspectorInfo;
import defpackage.aa4;
import defpackage.j59;
import defpackage.jh2;
import defpackage.jn;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
final class BackgroundElement extends ModifierNodeElement<BackgroundNode> {
    private final float alpha;
    private final Brush brush;
    private final long color;
    private final nl3<InspectorInfo, j59> inspectorInfo;
    private final Shape shape;

    public /* synthetic */ BackgroundElement(long j, Brush brush, float f, Shape shape, nl3 nl3Var, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? Color.Companion.m6268getUnspecified0d7_KjU() : j, (i & 2) != 0 ? null : brush, f, shape, nl3Var, null);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public BackgroundNode create() {
        return new BackgroundNode(this.color, this.brush, this.alpha, this.shape, null);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public boolean equals(Object obj) {
        BackgroundElement backgroundElement = obj instanceof BackgroundElement ? (BackgroundElement) obj : null;
        return backgroundElement != null && Color.m6233equalsimpl0(this.color, backgroundElement.color) && aa4.e(this.brush, backgroundElement.brush) && this.alpha == backgroundElement.alpha && aa4.e(this.shape, backgroundElement.shape);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public int hashCode() {
        int iM6239hashCodeimpl = Color.m6239hashCodeimpl(this.color) * 31;
        Brush brush = this.brush;
        return this.shape.hashCode() + jn.b(this.alpha, (iM6239hashCodeimpl + (brush != null ? brush.hashCode() : 0)) * 31, 31);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void inspectableProperties(InspectorInfo inspectorInfo) {
        this.inspectorInfo.invoke(inspectorInfo);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void update(BackgroundNode backgroundNode) {
        backgroundNode.m1291setColor8_81llA(this.color);
        backgroundNode.setBrush(this.brush);
        backgroundNode.setAlpha(this.alpha);
        if (!aa4.e(backgroundNode.getShape(), this.shape)) {
            backgroundNode.setShape(this.shape);
            SemanticsModifierNodeKt.invalidateSemantics(backgroundNode);
        }
        DrawModifierNodeKt.invalidateDraw(backgroundNode);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private BackgroundElement(long j, Brush brush, float f, Shape shape, nl3<? super InspectorInfo, j59> nl3Var) {
        this.color = j;
        this.brush = brush;
        this.alpha = f;
        this.shape = shape;
        this.inspectorInfo = nl3Var;
    }

    public /* synthetic */ BackgroundElement(long j, Brush brush, float f, Shape shape, nl3 nl3Var, jh2 jh2Var) {
        this(j, brush, f, shape, nl3Var);
    }
}
