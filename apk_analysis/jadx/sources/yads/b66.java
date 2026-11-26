package yads;

import android.util.Log;
import androidx.webkit.ProxyConfig;
import defpackage.ra8;
import defpackage.u96;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class b66 {
    public static final List a = u96.i("The integrated version of the Yandex Mobile Ads SDK is outdated.", "Please update com.yandex.android:mobileads to the latest version.");

    public static List a() {
        if (fv.a() == null) {
            return defpackage.kx2.b;
        }
        return u96.h("Changelog: " + fv.a());
    }

    public static void b() {
        Integer numValueOf;
        ArrayList arrayListH0 = defpackage.qn1.h0(a(), defpackage.qn1.h0(u96.i("Learn more about the latest version of the SDK here:", "https://yandex.ru/dev/mobile-ads/doc/android/quick-start/android-ads-component.html"), a));
        Iterator it = arrayListH0.iterator();
        String strA0 = null;
        if (it.hasNext()) {
            numValueOf = Integer.valueOf(((String) it.next()).length());
            while (it.hasNext()) {
                Integer numValueOf2 = Integer.valueOf(((String) it.next()).length());
                if (numValueOf.compareTo(numValueOf2) < 0) {
                    numValueOf = numValueOf2;
                }
            }
        } else {
            numValueOf = null;
        }
        if (numValueOf != null) {
            int iIntValue = numValueOf.intValue();
            String strX = ra8.x(iIntValue + 4, ProxyConfig.MATCH_ALL_SCHEMES);
            ArrayList arrayList = new ArrayList(defpackage.kn1.q(arrayListH0, 10));
            Iterator it2 = arrayListH0.iterator();
            while (it2.hasNext()) {
                arrayList.add(a(iIntValue, (String) it2.next()));
            }
            strA0 = defpackage.qn1.a0(defpackage.qn1.i0(strX, defpackage.qn1.h0(arrayList, u96.h(strX))), "\n", null, null, 0, null, 62);
        }
        Log.e("Yandex Mobile Ads", "Yandex Mobile Ads version validation\n" + strA0 + "\n");
    }

    public static String a(int i, String str) {
        return defpackage.pg.g("* ", str, ra8.x(i - str.length(), " "), " *");
    }
}
