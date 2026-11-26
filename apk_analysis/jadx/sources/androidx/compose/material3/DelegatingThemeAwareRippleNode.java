package androidx.compose.material3;

import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.material.ripple.RippleAlpha;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorProducer;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNodeKt;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.ObserverModifierNode;
import androidx.compose.ui.node.ObserverModifierNodeKt;
import defpackage.j59;
import defpackage.jh2;
import defpackage.ll3;

/* JADX INFO: loaded from: classes2.dex */
final class DelegatingThemeAwareRippleNode extends DelegatingNode implements CompositionLocalConsumerModifierNode, ObserverModifierNode {
    private final boolean bounded;
    private final ColorProducer color;
    private final InteractionSource interactionSource;
    private final float radius;
    private DelegatableNode rippleNode;

    private DelegatingThemeAwareRippleNode(InteractionSource interactionSource, boolean z, float f, ColorProducer colorProducer) {
        this.interactionSource = interactionSource;
        this.bounded = z;
        this.radius = f;
        this.color = colorProducer;
    }

    private final void attachNewRipple() {
        this.rippleNode = delegate(androidx.compose.material.ripple.RippleKt.m3060createRippleModifierNodeTDGSqEk(this.interactionSource, this.bounded, this.radius, new ColorProducer() { // from class: androidx.compose.material3.DelegatingThemeAwareRippleNode$attachNewRipple$calculateColor$1
            @Override // androidx.compose.ui.graphics.ColorProducer
            /* JADX INFO: renamed from: invoke-0d7_KjU, reason: not valid java name */
            public final long mo3400invoke0d7_KjU() {
                long jMo3400invoke0d7_KjU = this.this$0.color.mo3400invoke0d7_KjU();
                if (jMo3400invoke0d7_KjU != 16) {
                    return jMo3400invoke0d7_KjU;
                }
                RippleConfiguration rippleConfiguration = (RippleConfiguration) CompositionLocalConsumerModifierNodeKt.currentValueOf(this.this$0, RippleKt.getLocalRippleConfiguration());
                return (rippleConfiguration == null || rippleConfiguration.m3773getColor0d7_KjU() == 16) ? ((Color) CompositionLocalConsumerModifierNodeKt.currentValueOf(this.this$0, ContentColorKt.getLocalContentColor())).m6242unboximpl() : rippleConfiguration.m3773getColor0d7_KjU();
            }
        }, new ll3() { // from class: androidx.compose.material3.g1
            @Override // defpackage.ll3
            public final Object invoke() {
                return DelegatingThemeAwareRippleNode.attachNewRipple$lambda$1(this.b);
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final RippleAlpha attachNewRipple$lambda$1(DelegatingThemeAwareRippleNode delegatingThemeAwareRippleNode) {
        RippleAlpha rippleAlpha;
        RippleConfiguration rippleConfiguration = (RippleConfiguration) CompositionLocalConsumerModifierNodeKt.currentValueOf(delegatingThemeAwareRippleNode, RippleKt.getLocalRippleConfiguration());
        return (rippleConfiguration == null || (rippleAlpha = rippleConfiguration.getRippleAlpha()) == null) ? RippleDefaults.INSTANCE.getRippleAlpha() : rippleAlpha;
    }

    private final void removeRipple() {
        DelegatableNode delegatableNode = this.rippleNode;
        if (delegatableNode != null) {
            undelegate(delegatableNode);
        }
        this.rippleNode = null;
    }

    private final void updateConfiguration() {
        ObserverModifierNodeKt.observeReads(this, new ll3() { // from class: androidx.compose.material3.f1
            @Override // defpackage.ll3
            public final Object invoke() {
                return DelegatingThemeAwareRippleNode.updateConfiguration$lambda$0(this.b);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 updateConfiguration$lambda$0(DelegatingThemeAwareRippleNode delegatingThemeAwareRippleNode) {
        if (((RippleConfiguration) CompositionLocalConsumerModifierNodeKt.currentValueOf(delegatingThemeAwareRippleNode, RippleKt.getLocalRippleConfiguration())) == null) {
            delegatingThemeAwareRippleNode.removeRipple();
        } else if (delegatingThemeAwareRippleNode.rippleNode == null) {
            delegatingThemeAwareRippleNode.attachNewRipple();
        }
        return j59.a;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onAttach() {
        updateConfiguration();
    }

    @Override // androidx.compose.ui.node.ObserverModifierNode
    public void onObservedReadsChanged() {
        updateConfiguration();
    }

    public /* synthetic */ DelegatingThemeAwareRippleNode(InteractionSource interactionSource, boolean z, float f, ColorProducer colorProducer, jh2 jh2Var) {
        this(interactionSource, z, f, colorProducer);
    }
}
