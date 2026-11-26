package defpackage;

import android.view.View;
import com.warefly.checkscan.presentation.mailChange.presenter.MailChangePresenter;
import com.warefly.checkscan.presentation.mailChange.view.MailChangeFragment;
import com.warefly.checkscan.presentation.scanner.view.ScannerFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class t11 extends gh4 implements nl3 {
    public final /* synthetic */ int f;
    public final /* synthetic */ Object g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ t11(Object obj, int i) {
        super(1);
        this.f = i;
        this.g = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.f;
        Object obj2 = this.g;
        switch (i) {
            case 0:
                Integer num = (Integer) obj;
                ScannerFragment.g gVar = ((u11) obj2).e;
                num.getClass();
                gVar.invoke(num);
                return j59.a;
            case 1:
                ((View) obj).getClass();
                ((oi1) obj2).b.invoke();
                return j59.a;
            default:
                String str = (String) obj;
                str.getClass();
                MailChangePresenter mailChangePresenter = ((MailChangeFragment) obj2).mailChangePresenter;
                if (mailChangePresenter != null) {
                    mailChangePresenter.onMailChange(str);
                    return j59.a;
                }
                aa4.j("mailChangePresenter");
                throw null;
        }
    }
}
