package androidx.compose.material3;

import androidx.compose.foundation.IndicationNodeFactory;
import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorProducer;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.unit.Dp;
import defpackage.aa4;
import defpackage.jh2;
import defpackage.rg;

/* JADX INFO: loaded from: classes2.dex */
final class RippleNodeFactory implements IndicationNodeFactory {
    private final boolean bounded;
    private final long color;
    private final ColorProducer colorProducer;
    private final float radius;

    private RippleNodeFactory(boolean z, float f, ColorProducer colorProducer) {
        this(z, f, colorProducer, Color.Companion.m6268getUnspecified0d7_KjU());
    }

    @Override // androidx.compose.foundation.IndicationNodeFactory
    public DelegatableNode create(InteractionSource interactionSource) {
        ColorProducer colorProducer = this.colorProducer;
        if (colorProducer == null) {
            colorProducer = new ColorProducer() { // from class: androidx.compose.material3.RippleNodeFactory$create$colorProducer$1
                @Override // androidx.compose.ui.graphics.ColorProducer
                /* JADX INFO: renamed from: invoke-0d7_KjU */
                public final long mo3400invoke0d7_KjU() {
                    return this.this$0.color;
                }
            };
        }
        return new DelegatingThemeAwareRippleNode(interactionSource, this.bounded, this.radius, colorProducer, null);
    }

    @Override // androidx.compose.foundation.IndicationNodeFactory
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RippleNodeFactory)) {
            return false;
        }
        RippleNodeFactory rippleNodeFactory = (RippleNodeFactory) obj;
        if (this.bounded == rippleNodeFactory.bounded && Dp.m9047equalsimpl0(this.radius, rippleNodeFactory.radius) && aa4.e(this.colorProducer, rippleNodeFactory.colorProducer)) {
            return Color.m6233equalsimpl0(this.color, rippleNodeFactory.color);
        }
        return false;
    }

    @Override // androidx.compose.foundation.IndicationNodeFactory
    public int hashCode() {
        int iC = rg.c(this.radius, Boolean.hashCode(this.bounded) * 31, 31);
        ColorProducer colorProducer = this.colorProducer;
        return Color.m6239hashCodeimpl(this.color) + ((iC + (colorProducer != null ? colorProducer.hashCode() : 0)) * 31);
    }

    public /* synthetic */ RippleNodeFactory(boolean z, float f, ColorProducer colorProducer, jh2 jh2Var) {
        this(z, f, colorProducer);
    }

    private RippleNodeFactory(boolean z, float f, ColorProducer colorProducer, long j) {
        this.bounded = z;
        this.radius = f;
        this.colorProducer = colorProducer;
        this.color = j;
    }

    public /* synthetic */ RippleNodeFactory(boolean z, float f, long j, jh2 jh2Var) {
        this(z, f, j);
    }

    private RippleNodeFactory(boolean z, float f, long j) {
        this(z, f, (ColorProducer) null, j);
    }
}
