package defpackage;

import com.google.android.material.textfield.TextInputEditText;
import com.warefly.checkscan.auth.databinding.FragmentPhoneSignUpBinding;
import com.warefly.checkscan.auth.presentation.main.view.PhoneSignUpFragment;
import com.warefly.checkscan.presentation.upridWeb.veiw.UpridWebFullScreenDialog;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class s76 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ s76(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                PhoneSignUpFragment.a aVar = PhoneSignUpFragment.l;
                TextInputEditText textInputEditText = ((FragmentPhoneSignUpBinding) obj).etPhone;
                textInputEditText.getClass();
                le9.e(textInputEditText);
                return;
            case 1:
                v89.g gVar = v89.g.INSTANCE;
                UpridWebFullScreenDialog.a aVar2 = UpridWebFullScreenDialog.f;
                ((UpridWebFullScreenDialog) obj).g(gVar);
                return;
            default:
                d9a d9aVar = (d9a) obj;
                synchronized (d9aVar) {
                    try {
                        ArrayList arrayList = new ArrayList(d9aVar.d.keySet());
                        int size = arrayList.size();
                        int i2 = 0;
                        while (i2 < size) {
                            Object obj2 = arrayList.get(i2);
                            i2++;
                            ((Runnable) obj2).run();
                        }
                        if (d9aVar.d.keySet().size() > 0) {
                            d9aVar.b.postDelayed(d9aVar.e, d9aVar.c);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                    break;
                }
                return;
        }
    }
}
