package defpackage;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.presentation.bonuses.onlineShops.view.OnlineShopsFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class mh7 implements lk3 {
    public final int a;
    public final String b;
    public final boolean c;
    public final kd.o0 d;
    public final uv7 e;

    public mh7(int i, String str, boolean z, kd.o0 o0Var, uv7 uv7Var) {
        str.getClass();
        o0Var.getClass();
        uv7Var.getClass();
        this.a = i;
        this.b = str;
        this.c = z;
        this.d = o0Var;
        this.e = uv7Var;
    }

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        OnlineShopsFragment onlineShopsFragment = new OnlineShopsFragment();
        String str = this.b;
        str.getClass();
        uv7 uv7Var = this.e;
        uv7Var.getClass();
        kd.o0 o0Var = this.d;
        o0Var.getClass();
        onlineShopsFragment.setArguments(new br0(str, this.a, uv7Var, o0Var).getArguments());
        return onlineShopsFragment;
    }

    @Override // defpackage.df7
    public final String b() {
        return mh7.class.getName();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof mh7)) {
            return false;
        }
        mh7 mh7Var = (mh7) obj;
        return this.a == mh7Var.a && aa4.e(this.b, mh7Var.b) && this.c == mh7Var.c && this.d == mh7Var.d && this.e == mh7Var.e;
    }

    public final int hashCode() {
        return this.e.hashCode() + ((this.d.hashCode() + tg.c(zg.b(Integer.hashCode(this.a) * 31, 31, this.b), 31, this.c)) * 31);
    }

    public final String toString() {
        StringBuilder sbE = ng.e(this.a, "OnlineShops(shopsId=", ", toolbarTitle=", this.b, ", isTopSelection=");
        sbE.append(this.c);
        sbE.append(", selectedFrom=");
        sbE.append(this.d);
        sbE.append(", reason=");
        sbE.append(this.e);
        sbE.append(")");
        return sbE.toString();
    }

    public /* synthetic */ mh7(int i, String str, kd.o0 o0Var, uv7 uv7Var, int i2) {
        this(i, str, false, (i2 & 8) != 0 ? kd.o0.Bonuses : o0Var, uv7Var);
    }
}
