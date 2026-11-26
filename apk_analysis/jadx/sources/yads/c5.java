package yads;

import android.content.Context;
import defpackage.ta8;
import defpackage.u96;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes6.dex */
public final class c5 {
    public final gw3 a;
    public final cn b;

    public c5() {
        gw3 gw3Var = new gw3();
        cn cnVar = new cn();
        this.a = gw3Var;
        this.b = cnVar;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0060  */
    /* JADX WARN: Code duplicated, block: B:45:0x00bf  */
    public final String a(Context context) {
        List listH0;
        String str;
        boolean zA;
        String str2;
        List list;
        this.a.getClass();
        String str3 = (String) gw3.a(context, hw3.AD_HOST.b);
        if (str3 == null) {
            cn cnVar = this.b;
            fe5 fe5VarA = cnVar.a.a.a(context);
            Object obj = null;
            if (fe5VarA == null || (str2 = fe5VarA.Y) == null) {
                listH0 = defpackage.kx2.b;
            } else {
                String str4 = (String) gw3.a(context, hw3.FALLBACK_HOSTS.b);
                if (str4 != null) {
                    List listY = ta8.Y(str4, new String[]{StringUtils.COMMA});
                    ArrayList arrayList = new ArrayList();
                    for (Object obj2 : listY) {
                        if (!ta8.M((String) obj2)) {
                            arrayList.add(obj2);
                        }
                    }
                    boolean zIsEmpty = arrayList.isEmpty();
                    list = arrayList;
                    if (zIsEmpty) {
                        list = null;
                    }
                } else {
                    list = null;
                }
                if (list == null) {
                    list = fe5VarA.B0;
                }
                listH0 = defpackage.qn1.h0(list, u96.h(str2));
            }
            if (listH0.size() > 1) {
                for (Object obj3 : defpackage.qn1.P(listH0)) {
                    String strA = b56.a((String) obj3);
                    if (strA == null || !(!ta8.M(strA))) {
                        zA = false;
                    } else {
                        u93 u93Var = cnVar.b;
                        ConcurrentHashMap concurrentHashMap = u93.b;
                        zA = u93Var.a(1000, strA);
                    }
                    if (zA) {
                        obj = obj3;
                        break;
                    }
                }
                String str5 = (String) obj;
                if (str5 == null) {
                    str = (String) defpackage.qn1.b0(listH0);
                } else {
                    str3 = str5;
                }
                if (str3 == null) {
                    str3 = "yandex.com/ads";
                }
            } else {
                str = (String) defpackage.qn1.V(listH0);
            }
            str3 = str;
            if (str3 == null) {
                str3 = "yandex.com/ads";
            }
        }
        return a(str3);
    }

    public static String a(String str) {
        return defpackage.bj.c("https://", str);
    }
}
