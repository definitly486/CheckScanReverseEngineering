package defpackage;

import com.google.android.material.textfield.TextInputEditText;
import com.warefly.checkscan.support.presentation.form.view.SupportFormFragment;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class oe8 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ oe8(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                TextInputEditText textInputEditText = (TextInputEditText) obj;
                SupportFormFragment.a aVar = SupportFormFragment.j;
                textInputEditText.getClass();
                le9.e(textInputEditText);
                break;
            default:
                ((ll3) obj).invoke();
                break;
        }
    }
}
