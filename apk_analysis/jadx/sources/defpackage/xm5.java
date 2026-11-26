package defpackage;

import com.warefly.checkscan.presentation.bonuses.shopPage.redirectDialog.view.RedirectDialogView$$State;
import com.warefly.checkscan.presentation.newBankCards.view.NewBankCardsView$$State;
import com.warefly.checkscan.presentation.tasks.taskDetails.view.TaskDetailsView$$State;

/* JADX INFO: loaded from: classes5.dex */
public final class xm5 extends pe9 {
    public final /* synthetic */ int a;

    public /* synthetic */ xm5(int i) {
        this.a = i;
    }

    @Override // defpackage.pe9
    public final kh5 a() {
        switch (this.a) {
            case 0:
                return new NewBankCardsView$$State();
            case 1:
                return new RedirectDialogView$$State();
            default:
                return new TaskDetailsView$$State();
        }
    }
}
