package defpackage;

import android.os.Bundle;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentFactory;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.warefly.checkscan.presentation.brandlink.view.BrandlinkFragment;

/* JADX INFO: loaded from: classes5.dex */
public final class tf7 implements lk3 {
    public final int a;
    public final String b;
    public final String c;
    public final String d;
    public final boolean e;
    public final String f;
    public final String g;
    public final boolean h;

    public /* synthetic */ tf7(int i, int i2, String str, String str2, String str3) {
        this((i2 & 1) != 0 ? 1 : i, (i2 & 2) != 0 ? null : str, (i2 & 4) != 0 ? null : str2, (i2 & 8) != 0 ? null : str3, new String(), new String(), false, false);
    }

    @Override // defpackage.lk3
    public final Fragment a(FragmentFactory fragmentFactory) {
        BrandlinkFragment brandlinkFragment = new BrandlinkFragment();
        String str = this.f;
        str.getClass();
        String str2 = this.g;
        str2.getClass();
        Bundle bundle = new Bundle();
        bundle.putInt(TtmlNode.ATTR_ID, this.a);
        bundle.putString(TypedValues.AttributesType.S_TARGET, this.c);
        bundle.putString("tab", this.b);
        bundle.putString("campaignCode", this.d);
        bundle.putBoolean("from_show_case", this.e);
        bundle.putString("offer_id", str);
        bundle.putString("category_id", str2);
        bundle.putBoolean("is_category", this.h);
        brandlinkFragment.setArguments(bundle);
        return brandlinkFragment;
    }

    @Override // defpackage.df7
    public final String b() {
        return tf7.class.getName();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof tf7)) {
            return false;
        }
        tf7 tf7Var = (tf7) obj;
        return this.a == tf7Var.a && aa4.e(this.b, tf7Var.b) && aa4.e(this.c, tf7Var.c) && aa4.e(this.d, tf7Var.d) && this.e == tf7Var.e && aa4.e(this.f, tf7Var.f) && aa4.e(this.g, tf7Var.g) && this.h == tf7Var.h;
    }

    public final int hashCode() {
        int iHashCode = Integer.hashCode(this.a) * 31;
        String str = this.b;
        int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.c;
        int iHashCode3 = (iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.d;
        return Boolean.hashCode(this.h) + zg.b(zg.b(tg.c((iHashCode3 + (str3 != null ? str3.hashCode() : 0)) * 31, 31, this.e), 31, this.f), 31, this.g);
    }

    public final String toString() {
        StringBuilder sbE = ng.e(this.a, "BrandLink(brandId=", ", tab=", this.b, ", target=");
        kv2.c(sbE, this.c, ", campaignCode=", this.d, ", fromShowCase=");
        sbE.append(this.e);
        sbE.append(", offerId=");
        sbE.append(this.f);
        sbE.append(", categoryId=");
        sbE.append(this.g);
        sbE.append(", isCategory=");
        sbE.append(this.h);
        sbE.append(")");
        return sbE.toString();
    }

    public tf7(int i, String str, String str2, String str3, String str4, String str5, boolean z, boolean z2) {
        str4.getClass();
        str5.getClass();
        this.a = i;
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = z;
        this.f = str4;
        this.g = str5;
        this.h = z2;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public tf7() {
        int i = 0;
        this(i, 255, null, null, null);
    }
}
