package defpackage;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.presentation.flows.requests.view.RequestsFlowFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class wh7 implements lk3 {
    public final String a;
    public final boolean b;
    public final vg7 c;
    public final long d;
    public final String e;

    public wh7(String str, boolean z, long j, String str2, int i) {
        str = (i & 1) != 0 ? null : str;
        vg7 vg7Var = vg7.Default;
        j = (i & 8) != 0 ? -1L : j;
        str2 = (i & 16) != 0 ? new String() : str2;
        vg7Var.getClass();
        str2.getClass();
        this.a = str;
        this.b = z;
        this.c = vg7Var;
        this.d = j;
        this.e = str2;
    }

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        RequestsFlowFragment requestsFlowFragment = new RequestsFlowFragment();
        requestsFlowFragment.setArguments(new sf3(this.a, this.c, this.b, this.d, this.e).getArguments());
        return requestsFlowFragment;
    }

    @Override // defpackage.df7
    public final String b() {
        return wh7.class.getName();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof wh7)) {
            return false;
        }
        wh7 wh7Var = (wh7) obj;
        return aa4.e(this.a, wh7Var.a) && this.b == wh7Var.b && this.c == wh7Var.c && this.d == wh7Var.d && this.e.equals(wh7Var.e);
    }

    public final int hashCode() {
        String str = this.a;
        return this.e.hashCode() + vg.b((this.c.hashCode() + tg.c((str == null ? 0 : str.hashCode()) * 31, 31, this.b)) * 31, 31, this.d);
    }

    public final String toString() {
        StringBuilder sbB = p2.b("RequestsFlow(qrCode=", this.a, ", toScan=", ", fromWeb=", this.b);
        sbB.append(this.c);
        sbB.append(", fromId=");
        sbB.append(this.d);
        return kh.c(sbB, ", fromType=", this.e, ")");
    }
}
