package defpackage;

import android.os.Bundle;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.navigation.NavArgs;

/* JADX INFO: loaded from: classes5.dex */
public final class tt0 implements NavArgs {
    public final String a;
    public final String b;
    public final String c;
    public final int d;
    public final boolean e;
    public final String f;
    public final String g;
    public final boolean h;

    public tt0(int i, String str, String str2, String str3, String str4, String str5, boolean z, boolean z2) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = i;
        this.e = z;
        this.f = str4;
        this.g = str5;
        this.h = z2;
    }

    public static final tt0 fromBundle(Bundle bundle) {
        String str;
        int i = c9.j(bundle, TtmlNode.ATTR_ID, tt0.class) ? bundle.getInt(TtmlNode.ATTR_ID) : 1;
        if (!bundle.containsKey(TypedValues.AttributesType.S_TARGET)) {
            fg.c("Required argument \"target\" is missing and does not have an android:defaultValue");
            return null;
        }
        String string = bundle.getString(TypedValues.AttributesType.S_TARGET);
        if (!bundle.containsKey("tab")) {
            fg.c("Required argument \"tab\" is missing and does not have an android:defaultValue");
            return null;
        }
        String string2 = bundle.getString("tab");
        if (!bundle.containsKey("campaignCode")) {
            fg.c("Required argument \"campaignCode\" is missing and does not have an android:defaultValue");
            return null;
        }
        String string3 = bundle.getString("campaignCode");
        boolean z = bundle.containsKey("from_show_case") ? bundle.getBoolean("from_show_case") : false;
        String string4 = "";
        if (bundle.containsKey("offer_id")) {
            String string5 = bundle.getString("offer_id");
            if (string5 == null) {
                fg.c("Argument \"offer_id\" is marked as non-null but was passed a null value.");
                return null;
            }
            str = string5;
        } else {
            str = "";
        }
        if (!bundle.containsKey("category_id") || (string4 = bundle.getString("category_id")) != null) {
            return new tt0(i, string, string2, string3, str, string4, z, bundle.containsKey("is_category") ? bundle.getBoolean("is_category") : false);
        }
        fg.c("Argument \"category_id\" is marked as non-null but was passed a null value.");
        return null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof tt0)) {
            return false;
        }
        tt0 tt0Var = (tt0) obj;
        return aa4.e(this.a, tt0Var.a) && aa4.e(this.b, tt0Var.b) && aa4.e(this.c, tt0Var.c) && this.d == tt0Var.d && this.e == tt0Var.e && this.f.equals(tt0Var.f) && this.g.equals(tt0Var.g) && this.h == tt0Var.h;
    }

    public final int hashCode() {
        String str = this.a;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.b;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.c;
        return Boolean.hashCode(this.h) + zg.b(zg.b(tg.c(ej0.b(this.d, (iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31, 31), 31, this.e), 31, this.f), 31, this.g);
    }

    public final String toString() {
        StringBuilder sbD = ad2.d("BrandlinkFragmentArgs(target=", this.a, ", tab=", this.b, ", campaignCode=");
        o2.e(sbD, this.c, ", id=", this.d, ", fromShowCase=");
        sbD.append(this.e);
        sbD.append(", offerId=");
        sbD.append(this.f);
        sbD.append(", categoryId=");
        sbD.append(this.g);
        sbD.append(", isCategory=");
        sbD.append(this.h);
        sbD.append(")");
        return sbD.toString();
    }
}
