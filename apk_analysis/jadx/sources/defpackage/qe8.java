package defpackage;

import android.view.View;
import com.warefly.checkscan.support.presentation.form.view.SupportFormFragment;
import yads.a2;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class qe8 implements View.OnClickListener {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ qe8(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                SupportFormFragment.a aVar = SupportFormFragment.j;
                ((SupportFormFragment) obj).o().onEmailCorrectClick();
                break;
            default:
                a2.b((a2) obj, view);
                break;
        }
    }
}
