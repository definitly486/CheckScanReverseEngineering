package defpackage;

import android.os.Bundle;
import android.os.Parcelable;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.presentation.scanner.view.ScannerFragment;
import java.io.Serializable;

/* JADX INFO: loaded from: classes5.dex */
public final class yh7 implements lk3 {
    public final vg7 a;
    public final long b;
    public final String c;

    public yh7(vg7 vg7Var, long j, String str) {
        vg7Var.getClass();
        this.a = vg7Var;
        this.b = j;
        this.c = str;
    }

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        ScannerFragment scannerFragment = new ScannerFragment();
        Serializable serializable = this.a;
        serializable.getClass();
        String str = this.c;
        str.getClass();
        Bundle bundle = new Bundle();
        if (Parcelable.class.isAssignableFrom(vg7.class)) {
            bundle.putParcelable("fromWeb", (Parcelable) serializable);
        } else {
            if (!Serializable.class.isAssignableFrom(vg7.class)) {
                n1.e(vg7.class.getName().concat(" must implement Parcelable or Serializable or must be an Enum."));
                return null;
            }
            bundle.putSerializable("fromWeb", serializable);
        }
        bundle.putLong("from_id", this.b);
        bundle.putString("from_type", str);
        scannerFragment.setArguments(bundle);
        return scannerFragment;
    }

    @Override // defpackage.df7
    public final String b() {
        return yh7.class.getName();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof yh7)) {
            return false;
        }
        yh7 yh7Var = (yh7) obj;
        return this.a == yh7Var.a && this.b == yh7Var.b && aa4.e(this.c, yh7Var.c);
    }

    public final int hashCode() {
        return this.c.hashCode() + vg.b(this.a.hashCode() * 31, 31, this.b);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Scanner(fromWeb=");
        sb.append(this.a);
        sb.append(", fromId=");
        sb.append(this.b);
        return kh.c(sb, ", fromType=", this.c, ")");
    }

    public yh7() {
        this(0);
    }

    public /* synthetic */ yh7(int i) {
        this(vg7.Default, -1L, new String());
    }
}
