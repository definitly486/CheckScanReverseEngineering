package androidx.compose.foundation;

import androidx.compose.foundation.ProgressSemanticsKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.semantics.ProgressBarRangeInfo;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import defpackage.j59;
import defpackage.kx6;
import defpackage.mm1;
import defpackage.nl3;
import defpackage.nm1;
import defpackage.vu2;

/* JADX INFO: loaded from: classes2.dex */
public final class ProgressSemanticsKt {
    public static final Modifier progressSemantics(Modifier modifier) {
        return SemanticsModifierKt.semantics(modifier, true, new vu2(3));
    }

    public static Modifier progressSemantics$default(Modifier modifier, float f, nm1 nm1Var, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            nm1Var = new mm1(0.0f, 1.0f);
        }
        if ((i2 & 4) != 0) {
            i = 0;
        }
        return progressSemantics(modifier, f, nm1Var, i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 progressSemantics$lambda$0(float f, nm1 nm1Var, int i, SemanticsPropertyReceiver semanticsPropertyReceiver) {
        SemanticsPropertiesKt.setProgressBarRangeInfo(semanticsPropertyReceiver, new ProgressBarRangeInfo(((Number) kx6.j(Float.valueOf(f), nm1Var)).floatValue(), nm1Var, i));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 progressSemantics$lambda$1(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        SemanticsPropertiesKt.setProgressBarRangeInfo(semanticsPropertyReceiver, ProgressBarRangeInfo.Companion.getIndeterminate());
        return j59.a;
    }

    public static final Modifier progressSemantics(Modifier modifier, final float f, final nm1<Float> nm1Var, final int i) {
        return SemanticsModifierKt.semantics(modifier, true, new nl3() { // from class: un6
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return ProgressSemanticsKt.progressSemantics$lambda$0(f, nm1Var, i, (SemanticsPropertyReceiver) obj);
            }
        });
    }
}
