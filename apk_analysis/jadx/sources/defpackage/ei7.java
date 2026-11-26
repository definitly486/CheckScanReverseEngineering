package defpackage;

import android.os.Bundle;
import android.os.Parcelable;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.presentation.flows.specifyPlace.view.SpecifyPlaceFlowFragment;
import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public final class ei7 implements lk3 {
    public final fi7 a;
    public final String b;
    public final long c;

    public ei7(long j, fi7 fi7Var, String str) {
        fi7Var.getClass();
        this.a = fi7Var;
        this.b = str;
        this.c = j;
    }

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        SpecifyPlaceFlowFragment specifyPlaceFlowFragment = new SpecifyPlaceFlowFragment();
        Serializable serializable = this.a;
        serializable.getClass();
        Bundle bundle = new Bundle();
        if (Parcelable.class.isAssignableFrom(fi7.class)) {
            bundle.putParcelable("reason", (Parcelable) serializable);
        } else {
            if (!Serializable.class.isAssignableFrom(fi7.class)) {
                n1.e(fi7.class.getName().concat(" must implement Parcelable or Serializable or must be an Enum."));
                return null;
            }
            bundle.putSerializable("reason", serializable);
        }
        bundle.putString("waitingQueueReceiptQr", this.b);
        bundle.putLong("cheque_request_id", this.c);
        specifyPlaceFlowFragment.setArguments(bundle);
        return specifyPlaceFlowFragment;
    }

    @Override // defpackage.df7
    public final String b() {
        return ei7.class.getName();
    }
}
