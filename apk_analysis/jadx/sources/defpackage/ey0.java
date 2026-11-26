package defpackage;

import com.warefly.checkscan.presentation.flows.catalog.presenter.CatalogFlowView$$State;
import com.warefly.checkscan.presentation.qrHand.calendarDialog.view.CalendarSpinnerView$$State;

/* JADX INFO: loaded from: classes5.dex */
public final class ey0 extends pe9 {
    public final /* synthetic */ int a;

    public /* synthetic */ ey0(int i) {
        this.a = i;
    }

    @Override // defpackage.pe9
    public final kh5 a() {
        switch (this.a) {
            case 0:
                return new CalendarSpinnerView$$State();
            default:
                return new CatalogFlowView$$State();
        }
    }
}
