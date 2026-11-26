package androidx.compose.animation;

import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.platform.InspectorInfo;
import com.google.firebase.perf.util.Constants;
import defpackage.aa4;
import defpackage.jh2;
import defpackage.ll3;

/* JADX INFO: loaded from: classes.dex */
public final class SkipToLookaheadSizeElement extends ModifierNodeElement<SkipToLookaheadSizeNode> {
    public static final int $stable = 0;
    private final ll3<Boolean> isEnabled;
    private final ScaleToBoundsImpl scaleToBounds;

    public /* synthetic */ SkipToLookaheadSizeElement(ScaleToBoundsImpl scaleToBoundsImpl, ll3 ll3Var, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? null : scaleToBoundsImpl, (i & 2) != 0 ? SkipToLookaheadSizeNodeKt.DefaultEnabled : ll3Var);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public SkipToLookaheadSizeNode create() {
        return new SkipToLookaheadSizeNode(this.scaleToBounds, this.isEnabled);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public boolean equals(Object obj) {
        if (!(obj instanceof SkipToLookaheadSizeElement)) {
            return false;
        }
        SkipToLookaheadSizeElement skipToLookaheadSizeElement = (SkipToLookaheadSizeElement) obj;
        return skipToLookaheadSizeElement.isEnabled == this.isEnabled && aa4.e(skipToLookaheadSizeElement.scaleToBounds, this.scaleToBounds);
    }

    public final ScaleToBoundsImpl getScaleToBounds() {
        return this.scaleToBounds;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public int hashCode() {
        int iHashCode = this.isEnabled.hashCode() * 31;
        ScaleToBoundsImpl scaleToBoundsImpl = this.scaleToBounds;
        return iHashCode + (scaleToBoundsImpl != null ? scaleToBoundsImpl.hashCode() : 0);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void inspectableProperties(InspectorInfo inspectorInfo) {
        inspectorInfo.setName("skipToLookahead");
        inspectorInfo.getProperties().set("scaleToBounds", this.scaleToBounds);
        inspectorInfo.getProperties().set(Constants.ENABLE_DISABLE, this.isEnabled);
    }

    public final ll3<Boolean> isEnabled() {
        return this.isEnabled;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void update(SkipToLookaheadSizeNode skipToLookaheadSizeNode) {
        skipToLookaheadSizeNode.setScaleToBounds(this.scaleToBounds);
        skipToLookaheadSizeNode.setEnabled(this.isEnabled);
    }

    public SkipToLookaheadSizeElement(ScaleToBoundsImpl scaleToBoundsImpl, ll3<Boolean> ll3Var) {
        this.scaleToBounds = scaleToBoundsImpl;
        this.isEnabled = ll3Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SkipToLookaheadSizeElement() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }
}
