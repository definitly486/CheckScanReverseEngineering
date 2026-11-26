package yads;

import android.content.Context;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Locale;

/* JADX INFO: loaded from: classes6.dex */
public final class yj0 {
    public final Context a;
    public final HashMap b;
    public final int c;
    public final du5 d;
    public final boolean e;

    /* JADX WARN: Code duplicated, block: B:13:0x002a  */
    public yj0(Context context) {
        String strB;
        TelephonyManager telephonyManager;
        this.a = context == null ? null : context.getApplicationContext();
        int i = u56.a;
        if (context == null || (telephonyManager = (TelephonyManager) context.getSystemService("phone")) == null) {
            strB = oj.b(Locale.getDefault().getCountry());
        } else {
            String networkCountryIso = telephonyManager.getNetworkCountryIso();
            if (TextUtils.isEmpty(networkCountryIso)) {
                strB = oj.b(Locale.getDefault().getCountry());
            } else {
                strB = oj.b(networkCountryIso);
            }
        }
        int[] iArrA = zj0.a(strB);
        HashMap map = new HashMap(8);
        map.put(0, 1000000L);
        k55 k55Var = zj0.n;
        map.put(2, (Long) k55Var.get(iArrA[0]));
        map.put(3, (Long) zj0.o.get(iArrA[1]));
        map.put(4, (Long) zj0.p.get(iArrA[2]));
        map.put(5, (Long) zj0.q.get(iArrA[3]));
        map.put(10, (Long) zj0.r.get(iArrA[4]));
        map.put(9, (Long) zj0.s.get(iArrA[5]));
        map.put(7, (Long) k55Var.get(iArrA[0]));
        this.b = map;
        this.c = 2000;
        this.d = x00.a;
        this.e = true;
    }
}
