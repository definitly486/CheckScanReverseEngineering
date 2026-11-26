package defpackage;

import androidx.compose.animation.core.KeyframesSpec;
import androidx.compose.material3.IconButtonKt;
import androidx.compose.material3.ProgressIndicatorKt;
import androidx.compose.material3.TextKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.SaversKt;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.navigation.NavOptionsBuilder;
import androidx.navigation.PopUpToBuilder;
import yads.a30;
import yads.jq1;
import yads.l20;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class h04 implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ h04(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return IconButtonKt.SurfaceIconButton$lambda$23$lambda$22((SemanticsPropertyReceiver) obj);
            case 1:
                return NavOptionsBuilder.popUpTo$lambda$2((PopUpToBuilder) obj);
            case 2:
                return ProgressIndicatorKt._get_linearIndeterminateFirstLineHeadAnimationSpec_$lambda$43((KeyframesSpec.KeyframesSpecConfig) obj);
            case 3:
                return SaversKt.FontWeightSaver$lambda$1(obj);
            case 4:
                return TextKt.Text_fLXpl1I$lambda$14$lambda$13((TextLayoutResult) obj);
            case 5:
                return Integer.valueOf(a30.a((l20) obj));
            default:
                return Boolean.valueOf(jq1.a(obj));
        }
    }
}
