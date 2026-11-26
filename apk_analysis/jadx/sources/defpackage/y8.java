package defpackage;

import com.warefly.checkscan.auth.presentation.addEmail.view.AddEmailView$$State;
import com.warefly.checkscan.presentation.cheques.exportCheques.view.ChequesExportView$$State;

/* JADX INFO: loaded from: classes.dex */
public final class y8 extends pe9 {
    public final /* synthetic */ int a;

    public /* synthetic */ y8(int i) {
        this.a = i;
    }

    @Override // defpackage.pe9
    public final kh5 a() {
        switch (this.a) {
            case 0:
                return new AddEmailView$$State();
            default:
                return new ChequesExportView$$State();
        }
    }
}
