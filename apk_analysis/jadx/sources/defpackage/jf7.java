package defpackage;

import androidx.core.os.BundleKt;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.presentation.flows.specifyPlace.addCheque.view.AddChequeFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class jf7 implements lk3 {
    public final String a;
    public final fi7 b;
    public final long c;

    public jf7(long j, fi7 fi7Var, String str) {
        str.getClass();
        fi7Var.getClass();
        this.a = str;
        this.b = fi7Var;
        this.c = j;
    }

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        AddChequeFragment.h.getClass();
        fi7 fi7Var = this.b;
        fi7Var.getClass();
        String str = this.a;
        str.getClass();
        AddChequeFragment addChequeFragment = new AddChequeFragment();
        addChequeFragment.setArguments(BundleKt.bundleOf(new b36("CHEQUE_REQUEST_ID_KEY", Long.valueOf(this.c)), new b36("SPECIFY_REASON_KEY", fi7Var), new b36("WAITING_QUEUE_RECEIPT_QR_KEY", str)));
        return addChequeFragment;
    }

    @Override // defpackage.df7
    public final String b() {
        return jf7.class.getName();
    }
}
