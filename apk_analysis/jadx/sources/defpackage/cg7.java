package defpackage;

import android.os.Bundle;
import android.os.Parcelable;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.presentation.bonuses.view.chooseRegion.view.ChooseRegionFragment;
import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public final class cg7 implements lk3 {
    public final fl3 a;

    public cg7(fl3 fl3Var) {
        fl3Var.getClass();
        this.a = fl3Var;
    }

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        ChooseRegionFragment chooseRegionFragment = new ChooseRegionFragment();
        Serializable serializable = this.a;
        serializable.getClass();
        Bundle bundle = new Bundle();
        if (Parcelable.class.isAssignableFrom(fl3.class)) {
            bundle.putParcelable("fromCome", (Parcelable) serializable);
        } else {
            if (!Serializable.class.isAssignableFrom(fl3.class)) {
                n1.e(fl3.class.getName().concat(" must implement Parcelable or Serializable or must be an Enum."));
                return null;
            }
            bundle.putSerializable("fromCome", serializable);
        }
        chooseRegionFragment.setArguments(bundle);
        return chooseRegionFragment;
    }

    @Override // defpackage.df7
    public final String b() {
        return cg7.class.getName();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof cg7) && this.a == ((cg7) obj).a;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "ChooseRegion(fromCome=" + this.a + ")";
    }

    public /* synthetic */ cg7(int i) {
        this(fl3.Default);
    }

    public cg7() {
        this(0);
    }
}
