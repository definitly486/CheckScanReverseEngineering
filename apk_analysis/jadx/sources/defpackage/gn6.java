package defpackage;

import androidx.compose.animation.core.KeyframesSpec;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.foundation.text.TextFieldKeyInput;
import androidx.compose.material3.ProgressIndicatorKt;
import androidx.compose.ui.text.SaversKt;
import androidx.compose.ui.text.input.TextFieldValue;
import yads.a92;
import yads.e14;
import yads.f11;
import yads.ig6;
import yads.mh0;
import yads.v14;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class gn6 implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ gn6(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return ProgressIndicatorKt._get_circularIndeterminateProgressAnimationSpec_$lambda$42((KeyframesSpec.KeyframesSpecConfig) obj);
            case 1:
                return SaversKt.TextDirectionSaver$lambda$1(obj);
            case 2:
                return TextFieldKeyInput._init_$lambda$0((TextFieldValue) obj);
            case 3:
                return VectorConvertersKt.FloatToVector$lambda$0(((Float) obj).floatValue());
            case 4:
                return Boolean.valueOf(a92.c(obj));
            case 5:
                return e14.a((v14) obj);
            case 6:
                return f11.a((String) obj);
            default:
                return ig6.a((mh0) obj);
        }
    }
}
