package androidx.compose.animation;

import androidx.compose.ui.graphics.Color;
import defpackage.gh4;
import defpackage.me0;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class VeilModifierNode$draw$veilColor$2 extends gh4 implements nl3<EnterExitState, Color> {
    final /* synthetic */ VeilModifierNode this$0;

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
    public VeilModifierNode$draw$veilColor$2(VeilModifierNode veilModifierNode) {
        super(1);
        this.this$0 = veilModifierNode;
    }

    @Override // defpackage.nl3
    public /* bridge */ /* synthetic */ Color invoke(EnterExitState enterExitState) {
        return Color.m6222boximpl(m1187invokevNxB06k(enterExitState));
    }

    /* JADX INFO: renamed from: invoke-vNxB06k, reason: not valid java name */
    public final long m1187invokevNxB06k(EnterExitState enterExitState) {
        int i = WhenMappings.$EnumSwitchMapping$0[enterExitState.ordinal()];
        if (i == 1) {
            Veil veil = this.this$0.getEnter().getData$animation().getVeil();
            if (veil != null) {
                return veil.m1186getTargetColor0d7_KjU();
            }
            Veil veil2 = this.this$0.getExit().getData$animation().getVeil();
            return veil2 != null ? veil2.m1185getInitialColor0d7_KjU() : Color.Companion.m6267getTransparent0d7_KjU();
        }
        if (i == 2) {
            Veil veil3 = this.this$0.getEnter().getData$animation().getVeil();
            return veil3 != null ? veil3.m1185getInitialColor0d7_KjU() : Color.Companion.m6267getTransparent0d7_KjU();
        }
        if (i == 3) {
            Veil veil4 = this.this$0.getExit().getData$animation().getVeil();
            return veil4 != null ? veil4.m1186getTargetColor0d7_KjU() : Color.Companion.m6267getTransparent0d7_KjU();
        }
        me0.e();
        return 0L;
    }
}
