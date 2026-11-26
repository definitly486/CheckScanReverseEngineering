package defpackage;

import com.warefly.checkscan.presentation.dateTimePickers.inputTimePicker.view.InputTimePickerView$$State;
import com.warefly.checkscan.presentation.update.presenter.UpdateView$$State;

/* JADX INFO: loaded from: classes5.dex */
public final class v54 extends pe9 {
    public final /* synthetic */ int a;

    public /* synthetic */ v54(int i) {
        this.a = i;
    }

    @Override // defpackage.pe9
    public final kh5 a() {
        switch (this.a) {
            case 0:
                return new InputTimePickerView$$State();
            default:
                return new UpdateView$$State();
        }
    }
}
