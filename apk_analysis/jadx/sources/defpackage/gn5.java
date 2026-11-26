package defpackage;

import com.warefly.checkscan.presentation.newSearchProducts.view.NewSearchProductsView$$State;
import com.warefly.checkscan.presentation.tasks.dialogs.success.view.TaskSuccessView$$State;

/* JADX INFO: loaded from: classes5.dex */
public final class gn5 extends pe9 {
    public final /* synthetic */ int a;

    public /* synthetic */ gn5(int i) {
        this.a = i;
    }

    @Override // defpackage.pe9
    public final kh5 a() {
        switch (this.a) {
            case 0:
                return new NewSearchProductsView$$State();
            default:
                return new TaskSuccessView$$State();
        }
    }
}
