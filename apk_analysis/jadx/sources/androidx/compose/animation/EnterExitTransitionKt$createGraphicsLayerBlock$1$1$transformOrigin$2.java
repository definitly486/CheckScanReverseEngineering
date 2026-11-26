package androidx.compose.animation;

import androidx.compose.ui.graphics.TransformOrigin;
import defpackage.gh4;
import defpackage.me0;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class EnterExitTransitionKt$createGraphicsLayerBlock$1$1$transformOrigin$2 extends gh4 implements nl3<EnterExitState, TransformOrigin> {
    final /* synthetic */ EnterTransition $enter;
    final /* synthetic */ ExitTransition $exit;
    final /* synthetic */ TransformOrigin $transformOriginWhenVisible;

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
    public EnterExitTransitionKt$createGraphicsLayerBlock$1$1$transformOrigin$2(TransformOrigin transformOrigin, EnterTransition enterTransition, ExitTransition exitTransition) {
        super(1);
        this.$transformOriginWhenVisible = transformOrigin;
        this.$enter = enterTransition;
        this.$exit = exitTransition;
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ TransformOrigin invoke(EnterExitState enterExitState) {
        return TransformOrigin.m6632boximpl(m1101invokeLIALnN8(enterExitState));
    }

    /* JADX INFO: renamed from: invoke-LIALnN8, reason: not valid java name */
    public final long m1101invokeLIALnN8(EnterExitState enterExitState) {
        TransformOrigin transformOriginM6632boximpl;
        long jM1146getTransformOriginSzJe1aQ;
        long jM1146getTransformOriginSzJe1aQ2;
        int i = WhenMappings.$EnumSwitchMapping$0[enterExitState.ordinal()];
        if (i != 1) {
            transformOriginM6632boximpl = null;
            if (i == 2) {
                Scale scale = this.$enter.getData$animation().getScale();
                if (scale != null) {
                    jM1146getTransformOriginSzJe1aQ = scale.m1146getTransformOriginSzJe1aQ();
                } else {
                    Scale scale2 = this.$exit.getData$animation().getScale();
                    if (scale2 != null) {
                        jM1146getTransformOriginSzJe1aQ = scale2.m1146getTransformOriginSzJe1aQ();
                    }
                }
                transformOriginM6632boximpl = TransformOrigin.m6632boximpl(jM1146getTransformOriginSzJe1aQ);
            } else {
                if (i != 3) {
                    me0.e();
                    return 0L;
                }
                Scale scale3 = this.$exit.getData$animation().getScale();
                if (scale3 != null) {
                    jM1146getTransformOriginSzJe1aQ2 = scale3.m1146getTransformOriginSzJe1aQ();
                } else {
                    Scale scale4 = this.$enter.getData$animation().getScale();
                    if (scale4 != null) {
                        jM1146getTransformOriginSzJe1aQ2 = scale4.m1146getTransformOriginSzJe1aQ();
                    }
                }
                transformOriginM6632boximpl = TransformOrigin.m6632boximpl(jM1146getTransformOriginSzJe1aQ2);
            }
        } else {
            transformOriginM6632boximpl = this.$transformOriginWhenVisible;
        }
        return transformOriginM6632boximpl != null ? transformOriginM6632boximpl.m6644unboximpl() : TransformOrigin.Companion.m6645getCenterSzJe1aQ();
    }
}
