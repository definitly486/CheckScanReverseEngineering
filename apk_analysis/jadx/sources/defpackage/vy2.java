package defpackage;

import androidx.camera.camera2.impl.TorchControl;
import androidx.camera.camera2.pipe.Result3A;
import androidx.compose.ui.text.SaversKt;
import androidx.navigation.AnimBuilder;
import androidx.navigation.NavController;
import com.posthog.surveys.SurveyRatingDisplayType;
import yads.bt4;
import yads.e92;
import yads.gl1;
import yads.th1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class vy2 implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ vy2(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                nb6 nb6Var = (nb6) obj;
                nb6Var.getClass();
                nb6Var.n.getClass();
                return 30;
            case 1:
                return NavController.handleDeepLink$lambda$21$lambda$18((AnimBuilder) obj);
            case 2:
                return SaversKt.SpanStyleSaver$lambda$1(obj);
            case 3:
                return SurveyRatingDisplayType.Companion.fromValue$lambda$0((SurveyRatingDisplayType) obj);
            case 4:
                return TorchControl.setTorchAsync_Oup_wC0$lambda$1$3((Result3A) obj);
            case 5:
                return bt4.a(obj);
            case 6:
                return Boolean.valueOf(e92.j(obj));
            case 7:
                return Boolean.valueOf(gl1.i(obj));
            default:
                return Boolean.valueOf(th1.e(obj));
        }
    }
}
