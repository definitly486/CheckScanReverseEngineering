package androidx.compose.foundation.layout;

import androidx.compose.foundation.layout.WrapContentElement;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.media3.muxer.MuxerUtil;
import defpackage.aa4;
import defpackage.bm3;
import defpackage.jh2;
import defpackage.tg;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes.dex */
public final class WrapContentElement extends ModifierNodeElement<WrapContentNode> {
    public static final Companion Companion = new Companion(null);
    private final Object align;
    private final bm3<IntSize, LayoutDirection, IntOffset> alignmentCallback;
    private final Direction direction;
    private final String inspectorName;
    private final boolean unbounded;

    /* JADX WARN: Multi-variable type inference failed */
    public WrapContentElement(Direction direction, boolean z, bm3<? super IntSize, ? super LayoutDirection, IntOffset> bm3Var, Object obj, String str) {
        this.direction = direction;
        this.unbounded = z;
        this.alignmentCallback = bm3Var;
        this.align = obj;
        this.inspectorName = str;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public WrapContentNode create() {
        return new WrapContentNode(this.direction, this.unbounded, this.alignmentCallback);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || WrapContentElement.class != obj.getClass()) {
            return false;
        }
        WrapContentElement wrapContentElement = (WrapContentElement) obj;
        return this.direction == wrapContentElement.direction && this.unbounded == wrapContentElement.unbounded && aa4.e(this.align, wrapContentElement.align);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public int hashCode() {
        return this.align.hashCode() + tg.c(this.direction.hashCode() * 31, 31, this.unbounded);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void inspectableProperties(InspectorInfo inspectorInfo) {
        inspectorInfo.setName(this.inspectorName);
        inspectorInfo.getProperties().set("align", this.align);
        inspectorInfo.getProperties().set("unbounded", Boolean.valueOf(this.unbounded));
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public void update(WrapContentNode wrapContentNode) {
        wrapContentNode.setDirection(this.direction);
        wrapContentNode.setUnbounded(this.unbounded);
        wrapContentNode.setAlignmentCallback(this.alignmentCallback);
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final IntOffset height$lambda$0(Alignment.Vertical vertical, IntSize intSize, LayoutDirection layoutDirection) {
            return IntOffset.m9161boximpl(IntOffset.m9164constructorimpl(((long) vertical.align(0, (int) (intSize.m9217unboximpl() & MuxerUtil.UNSIGNED_INT_MAX_VALUE))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final IntOffset size$lambda$0(Alignment alignment, IntSize intSize, LayoutDirection layoutDirection) {
            return IntOffset.m9161boximpl(alignment.mo5655alignKFBX0sM(IntSize.Companion.m9218getZeroYbymL2g(), intSize.m9217unboximpl(), layoutDirection));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final IntOffset width$lambda$0(Alignment.Horizontal horizontal, IntSize intSize, LayoutDirection layoutDirection) {
            return IntOffset.m9161boximpl(IntOffset.m9164constructorimpl(((long) horizontal.align(0, (int) (intSize.m9217unboximpl() >> 32), layoutDirection)) << 32));
        }

        public final WrapContentElement height(final Alignment.Vertical vertical, boolean z) {
            return new WrapContentElement(Direction.Vertical, z, new bm3() { // from class: il9
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    return WrapContentElement.Companion.height$lambda$0(vertical, (IntSize) obj, (LayoutDirection) obj2);
                }
            }, vertical, "wrapContentHeight");
        }

        public final WrapContentElement size(final Alignment alignment, boolean z) {
            return new WrapContentElement(Direction.Both, z, new bm3() { // from class: jl9
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    return WrapContentElement.Companion.size$lambda$0(alignment, (IntSize) obj, (LayoutDirection) obj2);
                }
            }, alignment, "wrapContentSize");
        }

        public final WrapContentElement width(final Alignment.Horizontal horizontal, boolean z) {
            return new WrapContentElement(Direction.Horizontal, z, new bm3() { // from class: hl9
                @Override // defpackage.bm3
                public final Object invoke(Object obj, Object obj2) {
                    return WrapContentElement.Companion.width$lambda$0(horizontal, (IntSize) obj, (LayoutDirection) obj2);
                }
            }, horizontal, "wrapContentWidth");
        }

        private Companion() {
        }
    }
}
