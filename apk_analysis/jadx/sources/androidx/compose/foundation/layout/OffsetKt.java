package androidx.compose.foundation.layout;

import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.IntOffset;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import defpackage.av5;
import defpackage.j59;
import defpackage.nl3;
import defpackage.qg;
import defpackage.zu5;

/* JADX INFO: loaded from: classes.dex */
public final class OffsetKt {
    public static final Modifier absoluteOffset(Modifier modifier, nl3<? super Density, IntOffset> nl3Var) {
        return modifier.then(new OffsetPxElement(nl3Var, false, new av5(nl3Var, 0)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 absoluteOffset$lambda$0(nl3 nl3Var, InspectorInfo inspectorInfo) {
        inspectorInfo.setName("absoluteOffset");
        inspectorInfo.getProperties().set(TypedValues.CycleType.S_WAVE_OFFSET, nl3Var);
        return j59.a;
    }

    /* JADX INFO: renamed from: absoluteOffset-VpY3zN4, reason: not valid java name */
    public static final Modifier m1990absoluteOffsetVpY3zN4(Modifier modifier, final float f, final float f2) {
        return modifier.then(new OffsetElement(f, f2, false, new nl3() { // from class: bv5
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return OffsetKt.absoluteOffset_VpY3zN4$lambda$0(f, f2, (InspectorInfo) obj);
            }
        }, null));
    }

    /* JADX INFO: renamed from: absoluteOffset-VpY3zN4$default, reason: not valid java name */
    public static /* synthetic */ Modifier m1991absoluteOffsetVpY3zN4$default(Modifier modifier, float f, float f2, int i, Object obj) {
        if ((i & 1) != 0) {
            f = Dp.m9042constructorimpl(0.0f);
        }
        if ((i & 2) != 0) {
            f2 = Dp.m9042constructorimpl(0.0f);
        }
        return m1990absoluteOffsetVpY3zN4(modifier, f, f2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 absoluteOffset_VpY3zN4$lambda$0(float f, float f2, InspectorInfo inspectorInfo) {
        inspectorInfo.setName("absoluteOffset");
        qg.e(f, inspectorInfo.getProperties(), "x", inspectorInfo).set("y", Dp.m9040boximpl(f2));
        return j59.a;
    }

    public static final Modifier offset(Modifier modifier, nl3<? super Density, IntOffset> nl3Var) {
        return modifier.then(new OffsetPxElement(nl3Var, true, new zu5(nl3Var, 0)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 offset$lambda$0(nl3 nl3Var, InspectorInfo inspectorInfo) {
        inspectorInfo.setName(TypedValues.CycleType.S_WAVE_OFFSET);
        inspectorInfo.getProperties().set(TypedValues.CycleType.S_WAVE_OFFSET, nl3Var);
        return j59.a;
    }

    /* JADX INFO: renamed from: offset-VpY3zN4, reason: not valid java name */
    public static final Modifier m1992offsetVpY3zN4(Modifier modifier, final float f, final float f2) {
        return modifier.then(new OffsetElement(f, f2, true, new nl3() { // from class: cv5
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return OffsetKt.offset_VpY3zN4$lambda$0(f, f2, (InspectorInfo) obj);
            }
        }, null));
    }

    /* JADX INFO: renamed from: offset-VpY3zN4$default, reason: not valid java name */
    public static /* synthetic */ Modifier m1993offsetVpY3zN4$default(Modifier modifier, float f, float f2, int i, Object obj) {
        if ((i & 1) != 0) {
            f = Dp.m9042constructorimpl(0.0f);
        }
        if ((i & 2) != 0) {
            f2 = Dp.m9042constructorimpl(0.0f);
        }
        return m1992offsetVpY3zN4(modifier, f, f2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 offset_VpY3zN4$lambda$0(float f, float f2, InspectorInfo inspectorInfo) {
        inspectorInfo.setName(TypedValues.CycleType.S_WAVE_OFFSET);
        qg.e(f, inspectorInfo.getProperties(), "x", inspectorInfo).set("y", Dp.m9040boximpl(f2));
        return j59.a;
    }
}
