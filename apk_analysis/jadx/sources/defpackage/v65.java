package defpackage;

import android.widget.TextView;
import com.google.android.material.timepicker.MaterialTimePicker;
import com.warefly.checkscan.databinding.FragmentUpridWebBinding;
import com.warefly.checkscan.presentation.upridWeb.veiw.UpridWebFullScreenDialog;
import yads.rl4;
import yads.tl4;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class v65 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ v65(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                ((MaterialTimePicker) obj).lambda$onViewCreated$3();
                break;
            case 1:
                UpridWebFullScreenDialog upridWebFullScreenDialog = (UpridWebFullScreenDialog) obj;
                UpridWebFullScreenDialog.a aVar = UpridWebFullScreenDialog.f;
                FragmentUpridWebBinding fragmentUpridWebBindingE = upridWebFullScreenDialog.e();
                fragmentUpridWebBindingE.btnBackPlastic.setOnClickListener(new co6(upridWebFullScreenDialog, 1));
                TextView textView = fragmentUpridWebBindingE.btnBackPlastic;
                textView.getClass();
                textView.setVisibility(0);
                upridWebFullScreenDialog.g(new v89.e(UpridWebFullScreenDialog.i));
                break;
            default:
                rl4.a((tl4) obj);
                break;
        }
    }
}
