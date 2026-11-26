package defpackage;

import com.warefly.checkscan.presentation.cheques.exportCheques.dialog.view.LightDatePickerView$$State;
import com.warefly.checkscan.presentation.rebindCard.view.RebindCardView$$State;

/* JADX INFO: loaded from: classes5.dex */
public final class bq4 extends pe9 {
    public final /* synthetic */ int a;

    public /* synthetic */ bq4(int i) {
        this.a = i;
    }

    @Override // defpackage.pe9
    public final kh5 a() {
        switch (this.a) {
            case 0:
                return new LightDatePickerView$$State();
            default:
                return new RebindCardView$$State();
        }
    }
}
