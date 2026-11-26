package androidx.compose.animation;

import defpackage.gh4;
import defpackage.me0;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class EnterExitTransitionKt$createGraphicsLayerBlock$1$1$alpha$2 extends gh4 implements nl3<EnterExitState, Float> {
    final /* synthetic */ EnterTransition $enter;
    final /* synthetic */ ExitTransition $exit;

    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[EnterExitState.values().length];
            try {
                iArr[EnterExitState.Visible.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[EnterExitState.PreEnter.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[EnterExitState.PostExit.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EnterExitTransitionKt$createGraphicsLayerBlock$1$1$alpha$2(EnterTransition enterTransition, ExitTransition exitTransition) {
        super(1);
        this.$enter = enterTransition;
        this.$exit = exitTransition;
    }

    @Override // defpackage.nl3
    public final Float invoke(EnterExitState enterExitState) {
        int i = WhenMappings.$EnumSwitchMapping$0[enterExitState.ordinal()];
        float alpha = 1.0f;
        if (i != 1) {
            if (i == 2) {
                Fade fade = this.$enter.getData$animation().getFade();
                if (fade != null) {
                    alpha = fade.getAlpha();
                }
            } else {
                if (i != 3) {
                    me0.e();
                    return null;
                }
                Fade fade2 = this.$exit.getData$animation().getFade();
                if (fade2 != null) {
                    alpha = fade2.getAlpha();
                }
            }
        }
        return Float.valueOf(alpha);
    }
}
