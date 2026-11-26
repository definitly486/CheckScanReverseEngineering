package defpackage;

import android.view.View;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.presentation.cheques.view.ChequesFragment;
import com.warefly.checkscan.support.presentation.main.presenter.SupportSectionsPresenter;
import com.warefly.checkscan.support.presentation.main.view.SupportSectionsFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class ai1 extends gh4 implements nl3 {
    public final /* synthetic */ int f;
    public final /* synthetic */ Object g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ai1(ts5 ts5Var, ms5 ms5Var) {
        super(1);
        this.f = 1;
        this.g = ms5Var;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.f;
        Object obj2 = this.g;
        switch (i) {
            case 0:
                ((View) obj).getClass();
                ((ChequesFragment) obj2).o().exportCheques();
                return j59.a;
            case 1:
                a57 a57Var = (a57) obj;
                a57Var.getClass();
                return ts5.e((ms5) obj2, a57Var);
            default:
                ((View) obj).getClass();
                SupportSectionsPresenter supportSectionsPresenter = ((SupportSectionsFragment) obj2).presenter;
                if (supportSectionsPresenter != null) {
                    supportSectionsPresenter.loadContent();
                    return j59.a;
                }
                aa4.j("presenter");
                throw null;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ ai1(BaseFragment baseFragment, int i) {
        super(1);
        this.f = i;
        this.g = baseFragment;
    }
}
