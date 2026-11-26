package defpackage;

import android.widget.TextView;
import com.my.tracker.obfuscated.m2;
import com.warefly.checkscan.databinding.FragmentUpridWebBinding;
import com.warefly.checkscan.presentation.upridWeb.veiw.UpridWebFullScreenDialog;
import com.wdullaer.materialdatetimepicker.time.RadialPickerLayout;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class rc6 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ rc6(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() throws Throwable {
        int i = this.b;
        int i2 = 1;
        int i3 = 0;
        Object obj = this.c;
        switch (i) {
            case 0:
                wc6 wc6Var = (wc6) obj;
                wc6Var.f();
                AtomicBoolean atomicBoolean = wc6Var.l;
                nb6 nb6Var = wc6Var.a;
                lc6 lc6Var = nb6Var.F;
                if (lc6Var != null && !lc6Var.isConnected()) {
                    nb6Var.v.a("Network isn't connected.");
                    atomicBoolean.set(false);
                } else if (!wc6Var.c()) {
                    atomicBoolean.set(false);
                } else if (!wc6Var.i(1)) {
                    atomicBoolean.set(false);
                } else {
                    wc6Var.g(new vc6(wc6Var, i3));
                }
                break;
            case 1:
                ((RadialPickerLayout) obj).lambda$onTouch$3();
                break;
            case 2:
                UpridWebFullScreenDialog upridWebFullScreenDialog = (UpridWebFullScreenDialog) obj;
                UpridWebFullScreenDialog.a aVar = UpridWebFullScreenDialog.f;
                FragmentUpridWebBinding fragmentUpridWebBindingE = upridWebFullScreenDialog.e();
                fragmentUpridWebBindingE.btnBackPlastic.setOnClickListener(new co6(upridWebFullScreenDialog, i2));
                TextView textView = fragmentUpridWebBindingE.btnBackPlastic;
                textView.getClass();
                textView.setVisibility(0);
                upridWebFullScreenDialog.g(new v89.e(UpridWebFullScreenDialog.i));
                break;
            default:
                ((m2) obj).f();
                break;
        }
    }
}
