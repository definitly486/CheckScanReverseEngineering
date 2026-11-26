package defpackage;

import android.view.View;
import androidx.fragment.app.Fragment;
import com.google.android.material.timepicker.MaterialTimePicker;
import com.warefly.checkscan.presentation.electrocheque.view.WebViewFragment;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class t65 implements View.OnClickListener {
    public final /* synthetic */ int b;
    public final /* synthetic */ Fragment c;

    public /* synthetic */ t65(Fragment fragment, int i) {
        this.b = i;
        this.c = fragment;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.b;
        Fragment fragment = this.c;
        switch (i) {
            case 0:
                ((MaterialTimePicker) fragment).lambda$onCreateView$1(view);
                break;
            default:
                ze4<Object>[] ze4VarArr = WebViewFragment.h;
                ((WebViewFragment) fragment).o().onBackPressed();
                break;
        }
    }
}
