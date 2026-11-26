package defpackage;

import android.os.Bundle;
import android.os.Parcelable;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.warefly.checkscan.presentation.flows.bonuses.view.BonusesInnerFlowFragment;
import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public final class qf7 implements lk3 {
    public final String a;
    public final int b;
    public final sq0 c;

    public qf7(int i, sq0 sq0Var, String str) {
        str.getClass();
        sq0Var.getClass();
        this.a = str;
        this.b = i;
        this.c = sq0Var;
    }

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        BonusesInnerFlowFragment bonusesInnerFlowFragment = new BonusesInnerFlowFragment();
        String str = this.a;
        str.getClass();
        Serializable serializable = this.c;
        serializable.getClass();
        Bundle bundle = new Bundle();
        bundle.putString("toolbarTitle", str);
        bundle.putInt(TtmlNode.ATTR_ID, this.b);
        if (Parcelable.class.isAssignableFrom(sq0.class)) {
            bundle.putParcelable(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, (Parcelable) serializable);
        } else {
            if (!Serializable.class.isAssignableFrom(sq0.class)) {
                n1.e(sq0.class.getName().concat(" must implement Parcelable or Serializable or must be an Enum."));
                return null;
            }
            bundle.putSerializable(ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, serializable);
        }
        bonusesInnerFlowFragment.setArguments(bundle);
        return bonusesInnerFlowFragment;
    }

    @Override // defpackage.df7
    public final String b() {
        return qf7.class.getName();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof qf7)) {
            return false;
        }
        qf7 qf7Var = (qf7) obj;
        return aa4.e(this.a, qf7Var.a) && this.b == qf7Var.b && this.c == qf7Var.c;
    }

    public final int hashCode() {
        return this.c.hashCode() + ej0.b(this.b, this.a.hashCode() * 31, 31);
    }

    public final String toString() {
        StringBuilder sbA = mz0.a(this.b, "BonusesFlow(toolbarTitle=", this.a, ", bonusesId=", ", type=");
        sbA.append(this.c);
        sbA.append(")");
        return sbA.toString();
    }

    public /* synthetic */ qf7(int i, sq0 sq0Var, int i2) {
        this((i2 & 2) != 0 ? -1 : i, sq0Var, "");
    }
}
