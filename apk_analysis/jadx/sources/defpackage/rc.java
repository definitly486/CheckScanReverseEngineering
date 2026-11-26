package defpackage;

import com.warefly.checkscan.presentation.bonuses.favoritePreviews.view.FavoritePreviewsView$$State;
import com.warefly.checkscan.presentation.electrocheque.onboarding.presenter.ElectroChequesOnBoardingView$$State;
import com.warefly.checkscan.presentation.operations.allOperations.presenter.AllOperationsView$$State;
import com.warefly.checkscan.presentation.qrHand.howFindData.view.HowFindDataInChequeView$$State;

/* JADX INFO: loaded from: classes5.dex */
public final class rc extends pe9 {
    public final /* synthetic */ int a;

    public /* synthetic */ rc(int i) {
        this.a = i;
    }

    @Override // defpackage.pe9
    public final kh5 a() {
        switch (this.a) {
            case 0:
                return new AllOperationsView$$State();
            case 1:
                return new ElectroChequesOnBoardingView$$State();
            case 2:
                return new FavoritePreviewsView$$State();
            default:
                return new HowFindDataInChequeView$$State();
        }
    }
}
