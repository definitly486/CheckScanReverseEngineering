package defpackage;

import com.warefly.checkscan.presentation.cheques.view.ChequesView$$State;
import com.warefly.checkscan.products.presentation.selections.view.SelectionsView$$State;

/* JADX INFO: loaded from: classes5.dex */
public final class di1 extends pe9 {
    public final /* synthetic */ int a;

    public /* synthetic */ di1(int i) {
        this.a = i;
    }

    @Override // defpackage.pe9
    public final kh5 a() {
        switch (this.a) {
            case 0:
                return new ChequesView$$State();
            default:
                return new SelectionsView$$State();
        }
    }
}
