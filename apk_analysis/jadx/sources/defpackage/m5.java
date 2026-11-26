package defpackage;

import android.view.View;
import com.my.target.m1;
import com.my.target.m2;
import com.warefly.checkscan.auth.presentation.main.view.PhoneSignUpFragment;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class m5 implements xl3, qq4, m1.b {
    public final /* synthetic */ Object b;

    public /* synthetic */ m5(m2 m2Var, xda xdaVar) {
        this.b = xdaVar;
    }

    @Override // defpackage.qq4
    public void a(View view, String str) {
        PhoneSignUpFragment phoneSignUpFragment = (PhoneSignUpFragment) this.b;
        view.getClass();
        phoneSignUpFragment.o().onOpenLinkWebViewClicked(str);
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        return (wc9) ((nl3) this.b).invoke(obj);
    }

    public /* synthetic */ m5(Object obj) {
        this.b = obj;
    }

    @Override // com.my.target.m1.b
    /* JADX INFO: renamed from: a */
    public void mo1a() {
        String str = ((xda) this.b).B;
    }
}
