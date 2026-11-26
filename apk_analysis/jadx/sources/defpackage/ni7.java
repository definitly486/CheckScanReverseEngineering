package defpackage;

import android.os.Bundle;
import android.os.Parcelable;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.presentation.flows.verification.view.VerificationFlowFragment;
import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public final class ni7 implements lk3 {
    public final String a;
    public final gl3 b;
    public final int c;

    public ni7(String str, gl3 gl3Var, int i) {
        gl3Var.getClass();
        this.a = str;
        this.b = gl3Var;
        this.c = i;
    }

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        VerificationFlowFragment verificationFlowFragment = new VerificationFlowFragment();
        Serializable serializable = this.b;
        serializable.getClass();
        Bundle bundle = new Bundle();
        bundle.putString("phone", this.a);
        if (Parcelable.class.isAssignableFrom(gl3.class)) {
            bundle.putParcelable("fromType", (Parcelable) serializable);
        } else {
            if (!Serializable.class.isAssignableFrom(gl3.class)) {
                n1.e(gl3.class.getName().concat(" must implement Parcelable or Serializable or must be an Enum."));
                return null;
            }
            bundle.putSerializable("fromType", serializable);
        }
        bundle.putInt("codeLength", this.c);
        verificationFlowFragment.setArguments(bundle);
        return verificationFlowFragment;
    }

    @Override // defpackage.df7
    public final String b() {
        return ni7.class.getName();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ni7)) {
            return false;
        }
        ni7 ni7Var = (ni7) obj;
        return this.a.equals(ni7Var.a) && this.b == ni7Var.b && this.c == ni7Var.c;
    }

    public final int hashCode() {
        return Integer.hashCode(this.c) + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Verification(phone=");
        sb.append(this.a);
        sb.append(", fromType=");
        sb.append(this.b);
        sb.append(", codeLength=");
        return l2.e(sb, ")", this.c);
    }
}
