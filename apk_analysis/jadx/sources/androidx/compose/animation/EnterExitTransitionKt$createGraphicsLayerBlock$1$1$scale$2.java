package androidx.compose.animation;

import defpackage.gh4;
import defpackage.me0;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class EnterExitTransitionKt$createGraphicsLayerBlock$1$1$scale$2 extends gh4 implements nl3<EnterExitState, Float> {
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
    public EnterExitTransitionKt$createGraphicsLayerBlock$1$1$scale$2(EnterTransition enterTransition, ExitTransition exitTransition) {
        super(1);
        this.$enter = enterTransition;
        this.$exit = exitTransition;
    }

    @Override // defpackage.nl3
    public final Float invoke(EnterExitState enterExitState) {
        int i = WhenMappings.$EnumSwitchMapping$0[enterExitState.ordinal()];
        float scale = 1.0f;
        if (i != 1) {
            if (i == 2) {
                Scale scale2 = this.$enter.getData$animation().getScale();
                if (scale2 != null) {
                    scale = scale2.getScale();
                }
            } else {
                if (i != 3) {
                    me0.e();
                    return null;
                }
                Scale scale3 = this.$exit.getData$animation().getScale();
                if (scale3 != null) {
                    scale = scale3.getScale();
                }
            }
        }
        return Float.valueOf(scale);
    }
}
