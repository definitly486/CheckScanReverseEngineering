package defpackage;

import com.posthog.surveys.SurveyTextContentType;
import yads.bt4;
import yads.hs1;
import yads.j25;
import yads.q52;
import yads.ry1;
import yads.tr1;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class lg8 implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ lg8(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return SurveyTextContentType.Companion.fromValue$lambda$0((SurveyTextContentType) obj);
            case 1:
                return Long.valueOf(bt4.b((Number) obj));
            case 2:
                return Boolean.valueOf(hs1.b(obj));
            case 3:
                return Boolean.valueOf(j25.a(obj));
            case 4:
                return Boolean.valueOf(q52.a(obj));
            case 5:
                return Boolean.valueOf(ry1.a(obj));
            default:
                return tr1.a((String) obj);
        }
    }
}
