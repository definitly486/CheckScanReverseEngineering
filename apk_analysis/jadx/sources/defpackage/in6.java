package defpackage;

import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.animation.core.KeyframesSpec;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.foundation.text.TextFieldKeyInputKt;
import androidx.compose.material3.ProgressIndicatorKt;
import androidx.compose.ui.text.SaversKt;
import androidx.compose.ui.text.input.TextFieldValue;
import yads.r22;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class in6 implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ in6(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return ProgressIndicatorKt._get_circularIndeterminateRotationAnimationSpec_$lambda$41((KeyframesSpec.KeyframesSpecConfig) obj);
            case 1:
                return SaversKt.HyphensSaver$lambda$1(obj);
            case 2:
                return TextFieldKeyInputKt.textFieldKeyInput_2WJ9YEU$lambda$0((TextFieldValue) obj);
            case 3:
                return Integer.valueOf(VectorConvertersKt.IntToVector$lambda$1((AnimationVector1D) obj));
            default:
                return Boolean.valueOf(r22.a(obj));
        }
    }
}
