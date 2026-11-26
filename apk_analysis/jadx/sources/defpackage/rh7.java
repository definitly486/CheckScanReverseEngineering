package defpackage;

import androidx.core.os.BundleKt;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import com.warefly.checkscan.presentation.balance.promoSelectCard.view.PromoSelectCardFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class rh7 implements lk3 {
    public final int a;
    public final String b;
    public final Integer c;
    public final String d;
    public final Integer e;

    public rh7(int i, String str, Integer num, String str2, Integer num2) {
        this.a = i;
        this.b = str;
        this.c = num;
        this.d = str2;
        this.e = num2;
    }

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        PromoSelectCardFragment.s.getClass();
        PromoSelectCardFragment promoSelectCardFragment = new PromoSelectCardFragment();
        b36 b36Var = new b36("PROMO_ID_PARAM", Integer.valueOf(this.a));
        b36 b36Var2 = new b36("PROMO_KEY_PARAM", this.b);
        Integer num = this.c;
        promoSelectCardFragment.setArguments(BundleKt.bundleOf(b36Var, b36Var2, new b36("TASK_ID_PARAM", Integer.valueOf(num != null ? num.intValue() : -1)), new b36("SOURCE_PARAM", this.d), new b36("SOURCE_TASK_ID_PARAM", this.e)));
        return promoSelectCardFragment;
    }

    @Override // defpackage.df7
    public final String b() {
        return rh7.class.getName();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof rh7)) {
            return false;
        }
        rh7 rh7Var = (rh7) obj;
        return this.a == rh7Var.a && aa4.e(this.b, rh7Var.b) && aa4.e(this.c, rh7Var.c) && aa4.e(this.d, rh7Var.d) && aa4.e(this.e, rh7Var.e);
    }

    public final int hashCode() {
        int iHashCode = Integer.hashCode(this.a) * 31;
        String str = this.b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        Integer num = this.c;
        int iHashCode3 = (iHashCode2 + (num == null ? 0 : num.hashCode())) * 31;
        String str2 = this.d;
        int iHashCode4 = (iHashCode3 + (str2 == null ? 0 : str2.hashCode())) * 31;
        Integer num2 = this.e;
        return iHashCode4 + (num2 != null ? num2.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sbE = ng.e(this.a, "PromoSelectCard(id=", ", onboardingKey=", this.b, ", taskId=");
        sbE.append(this.c);
        sbE.append(", source=");
        sbE.append(this.d);
        sbE.append(", sourceTaskId=");
        sbE.append(this.e);
        sbE.append(")");
        return sbE.toString();
    }
}
