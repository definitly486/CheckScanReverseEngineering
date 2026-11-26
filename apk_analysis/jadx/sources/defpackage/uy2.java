package defpackage;

import com.posthog.surveys.SurveyQuestionType;
import yads.bt4;
import yads.e92;
import yads.gl1;
import yads.hs1;
import yads.rr1;
import yads.th1;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class uy2 implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ uy2(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                nb6 nb6Var = (nb6) obj;
                nb6Var.getClass();
                nb6Var.n.getClass();
                return 1000;
            case 1:
                return SurveyQuestionType.Companion.fromValue$lambda$0((SurveyQuestionType) obj);
            case 2:
                return bt4.b(obj);
            case 3:
                return Boolean.valueOf(e92.i(obj));
            case 4:
                return Boolean.valueOf(gl1.h(obj));
            case 5:
                return Boolean.valueOf(hs1.a(obj));
            case 6:
                return rr1.a((String) obj);
            default:
                return Boolean.valueOf(th1.d(obj));
        }
    }
}
