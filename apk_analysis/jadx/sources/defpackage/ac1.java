package defpackage;

import com.warefly.checkscan.presentation.scanner.view.ScannerView$$State;
import com.warefly.checkscan.presentation.tasks.checkboxSteps.view.CheckboxTaskStepsDetailsView$$State;

/* JADX INFO: loaded from: classes5.dex */
public final class ac1 extends pe9 {
    public final /* synthetic */ int a;

    public /* synthetic */ ac1(int i) {
        this.a = i;
    }

    @Override // defpackage.pe9
    public final kh5 a() {
        switch (this.a) {
            case 0:
                return new CheckboxTaskStepsDetailsView$$State();
            default:
                return new ScannerView$$State();
        }
    }
}
