package defpackage;

import com.warefly.checkscan.presentation.affiliation.view.AffiliationCheckView$$State;
import com.warefly.checkscan.presentation.tasks.dialogs.noAttempts.view.NoAttemptsView$$State;
import com.warefly.checkscan.presentation.tasks.dialogs.result.view.DailyTaskResultView$$State;

/* JADX INFO: loaded from: classes5.dex */
public final class ib extends pe9 {
    public final /* synthetic */ int a;

    public /* synthetic */ ib(int i) {
        this.a = i;
    }

    @Override // defpackage.pe9
    public final kh5 a() {
        switch (this.a) {
            case 0:
                return new AffiliationCheckView$$State();
            case 1:
                return new DailyTaskResultView$$State();
            default:
                return new NoAttemptsView$$State();
        }
    }
}
