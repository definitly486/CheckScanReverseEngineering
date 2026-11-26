package androidx.compose.material.ripple;

import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.runtime.RememberObserver;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.snapshots.SnapshotStateMap;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import defpackage.a32;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.jh2;
import defpackage.pg8;
import defpackage.r57;
import defpackage.ul2;
import defpackage.y22;
import java.util.Iterator;
import java.util.Map;
import org.conscrypt.metrics.ConscryptStatsLog;

/* JADX INFO: loaded from: classes.dex */
@ul2
final class CommonRippleIndicationInstance extends RippleIndicationInstance implements RememberObserver {
    private final boolean bounded;
    private final State<Color> color;
    private final float radius;
    private final State<RippleAlpha> rippleAlpha;
    private final SnapshotStateMap<PressInteraction.Press, RippleAnimation> ripples;
    private float targetRadius;

    /* JADX INFO: renamed from: androidx.compose.material.ripple.CommonRippleIndicationInstance$addRipple$2, reason: invalid class name */
    @bd2(c = "androidx.compose.material.ripple.CommonRippleIndicationInstance$addRipple$2", f = "CommonRipple.kt", l = {ConscryptStatsLog.TLS_HANDSHAKE_REPORTED__CIPHER_SUITE__TLS_PSK_WITH_AES_256_CBC_SHA}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass2 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        final /* synthetic */ PressInteraction.Press $interaction;
        final /* synthetic */ RippleAnimation $rippleAnimation;
        int label;
        final /* synthetic */ CommonRippleIndicationInstance this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(RippleAnimation rippleAnimation, CommonRippleIndicationInstance commonRippleIndicationInstance, PressInteraction.Press press, e02<? super AnonymousClass2> e02Var) {
            super(2, e02Var);
            this.$rippleAnimation = rippleAnimation;
            this.this$0 = commonRippleIndicationInstance;
            this.$interaction = press;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new AnonymousClass2(this.$rippleAnimation, this.this$0, this.$interaction, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((AnonymousClass2) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r3v4, types: [j59, java.lang.Object] */
        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            try {
                if (i == 0) {
                    r57.b(obj);
                    RippleAnimation rippleAnimation = this.$rippleAnimation;
                    this.label = 1;
                    if (rippleAnimation.animate(this) == a32Var) {
                        return a32Var;
                    }
                } else {
                    if (i != 1) {
                        ah.f("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    r57.b(obj);
                }
                this.this$0.ripples.remove(this.$interaction);
                this = j59.a;
                return this;
            } catch (Throwable th) {
                this.this$0.ripples.remove(this.$interaction);
                throw th;
            }
        }
    }

    private CommonRippleIndicationInstance(boolean z, float f, State<Color> state, State<RippleAlpha> state2) {
        super(z, state2);
        this.bounded = z;
        this.radius = f;
        this.color = state;
        this.rippleAlpha = state2;
        this.ripples = SnapshotStateKt.mutableStateMapOf();
        this.targetRadius = Float.NaN;
    }

    /* JADX INFO: renamed from: drawRipples-4WTKRHQ, reason: not valid java name */
    private final void m3052drawRipples4WTKRHQ(DrawScope drawScope, long j) {
        long j2;
        Iterator<Map.Entry<PressInteraction.Press, RippleAnimation>> it = this.ripples.entrySet().iterator();
        while (it.hasNext()) {
            RippleAnimation value = it.next().getValue();
            float pressedAlpha = this.rippleAlpha.getValue().getPressedAlpha();
            if (pressedAlpha == 0.0f) {
                j2 = j;
            } else {
                j2 = j;
                value.m3054draw4WTKRHQ(drawScope, Color.m6231copywmQWz5c$default(j2, pressedAlpha, 0.0f, 0.0f, 0.0f, 14, null));
            }
            j = j2;
        }
    }

    @Override // androidx.compose.material.ripple.RippleIndicationInstance
    public void addRipple(PressInteraction.Press press, y22 y22Var) {
        Iterator<Map.Entry<PressInteraction.Press, RippleAnimation>> it = this.ripples.entrySet().iterator();
        while (it.hasNext()) {
            it.next().getValue().finish();
        }
        RippleAnimation rippleAnimation = new RippleAnimation(this.bounded ? Offset.m5976boximpl(press.m1681getPressPositionF1C5BW0()) : null, this.targetRadius, this.bounded, null);
        this.ripples.put(press, rippleAnimation);
        av0.c(y22Var, null, null, new AnonymousClass2(rippleAnimation, this, press, null), 3);
    }

    @Override // androidx.compose.foundation.IndicationInstance
    public void drawIndication(ContentDrawScope contentDrawScope) {
        this.targetRadius = Float.isNaN(this.radius) ? RippleAnimationKt.m3055getRippleEndRadiuscSwnlzA(contentDrawScope, this.bounded, contentDrawScope.mo6806getSizeNHjbRc()) : contentDrawScope.mo1434toPx0680j_4(this.radius);
        long jM6242unboximpl = this.color.getValue().m6242unboximpl();
        contentDrawScope.drawContent();
        m3059drawStateLayerH2RKhps(contentDrawScope, this.radius, jM6242unboximpl);
        m3052drawRipples4WTKRHQ(contentDrawScope, jM6242unboximpl);
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onAbandoned() {
        this.ripples.clear();
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onForgotten() {
        this.ripples.clear();
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void onRemembered() {
    }

    @Override // androidx.compose.material.ripple.RippleIndicationInstance
    public void removeRipple(PressInteraction.Press press) {
        RippleAnimation rippleAnimation = this.ripples.get(press);
        if (rippleAnimation != null) {
            rippleAnimation.finish();
        }
    }

    public /* synthetic */ CommonRippleIndicationInstance(boolean z, float f, State state, State state2, jh2 jh2Var) {
        this(z, f, state, state2);
    }
}
