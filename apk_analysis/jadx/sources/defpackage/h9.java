package defpackage;

import com.warefly.checkscan.presentation.addScreenshots.view.AddScreenshotsView$$State;
import com.warefly.checkscan.support.presentation.questions.view.SupportQuestionsView$$State;

/* JADX INFO: loaded from: classes5.dex */
public final class h9 extends pe9 {
    public final /* synthetic */ int a;

    public /* synthetic */ h9(int i) {
        this.a = i;
    }

    @Override // defpackage.pe9
    public final kh5 a() {
        switch (this.a) {
            case 0:
                return new AddScreenshotsView$$State();
            default:
                return new SupportQuestionsView$$State();
        }
    }
}
