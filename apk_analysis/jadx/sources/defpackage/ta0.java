package defpackage;

import com.warefly.checkscan.bankLanding.presentation.bank.view.BankLandingView$$State;
import com.warefly.checkscan.presentation.tasks.dialogs.error.view.TaskErrorView$$State;

/* JADX INFO: loaded from: classes.dex */
public final class ta0 extends pe9 {
    public final /* synthetic */ int a;

    public /* synthetic */ ta0(int i) {
        this.a = i;
    }

    @Override // defpackage.pe9
    public final kh5 a() {
        switch (this.a) {
            case 0:
                return new BankLandingView$$State();
            default:
                return new TaskErrorView$$State();
        }
    }
}
