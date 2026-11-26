package defpackage;

import androidx.compose.foundation.lazy.grid.LazyGridMeasureKt;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.text.SaversKt;
import com.posthog.surveys.SurveyQuestionBranchingType;
import yads.bt4;
import yads.e92;
import yads.gl1;
import yads.hr3;
import yads.th1;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class ty2 implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ ty2(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                nb6 nb6Var = (nb6) obj;
                nb6Var.getClass();
                nb6Var.n.getClass();
                return 20;
            case 1:
                return LazyGridMeasureKt.measureLazyGrid_t1x4au0$lambda$2((Placeable.PlacementScope) obj);
            case 2:
                return SaversKt.ParagraphStyleSaver$lambda$1(obj);
            case 3:
                ne4 ne4Var = (ne4) obj;
                ne4Var.getClass();
                df4 df4VarD = iq7.d(ne4Var);
                if (df4VarD == null) {
                    df4VarD = d31.n(ne4Var).isInterface() ? new da6(ne4Var) : null;
                }
                if (df4VarD != null) {
                    return ev0.a(df4VarD);
                }
                return null;
            case 4:
                return SurveyQuestionBranchingType.Companion.fromValue$lambda$0((SurveyQuestionBranchingType) obj);
            case 5:
                return bt4.c(obj);
            case 6:
                return Boolean.valueOf(e92.h(obj));
            case 7:
                return Boolean.valueOf(gl1.g(obj));
            case 8:
                return hr3.a((dc4) obj);
            default:
                return Boolean.valueOf(th1.c(obj));
        }
    }
}
