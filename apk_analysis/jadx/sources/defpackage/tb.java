package defpackage;

import com.warefly.checkscan.presentation.flows.changePhone.view.ChangePhoneFlowView$$State;
import com.warefly.checkscan.presentation.stock.view.AgreementView$$State;

/* JADX INFO: loaded from: classes5.dex */
public final class tb extends pe9 {
    public final /* synthetic */ int a;

    public /* synthetic */ tb(int i) {
        this.a = i;
    }

    @Override // defpackage.pe9
    public final kh5 a() {
        switch (this.a) {
            case 0:
                return new AgreementView$$State();
            default:
                return new ChangePhoneFlowView$$State();
        }
    }
}
