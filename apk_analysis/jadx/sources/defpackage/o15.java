package defpackage;

import com.warefly.checkscan.component.logger.CrashlyticsException;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes5.dex */
public final class o15 implements n15 {
    @Override // defpackage.n15
    public final String a(String str) {
        Object objA0;
        Object obj;
        if (str == null || ta8.M(str)) {
            return new String();
        }
        String string = ta8.f0(str).toString();
        int length = string.length();
        if (length >= 10) {
            try {
                string = string.substring(length - 10, length);
            } catch (Throwable th) {
                objA0 = new k57.a(th);
            }
        }
        ArrayList arrayList = new ArrayList(18);
        ua8.m0("+7 (***) *** ** **", arrayList);
        ArrayList arrayList2 = new ArrayList(kn1.q(arrayList, 10));
        Iterator it = arrayList.iterator();
        int i = -1;
        while (it.hasNext()) {
            char cCharValue = ((Character) it.next()).charValue();
            if (cCharValue == '*') {
                i++;
                cCharValue = string.charAt(i);
            }
            arrayList2.add(Character.valueOf(cCharValue));
        }
        objA0 = qn1.a0(arrayList2, "", null, null, 0, null, 62);
        Throwable thA = k57.a(objA0);
        if (thA == null) {
            obj = objA0;
        } else {
            s0.c("Invalid Phone ".concat(str));
            s0.d(new CrashlyticsException.ErrorMessagePhone("Invalid Phone ".concat(str + " " + thA.getMessage())));
            obj = str;
        }
        return (String) obj;
    }
}
