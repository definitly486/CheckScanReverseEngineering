package yads;

import defpackage.qa8;
import defpackage.ta8;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class k96 {
    public static j96 a(String str) {
        Integer numO;
        int length = str.length();
        for (int i = 0; i < length; i++) {
            if (str.charAt(i) == '-') {
                str = str.substring(0, i);
                break;
            }
        }
        List listX = ta8.X(str, new char[]{'.'});
        String str2 = (String) defpackage.qn1.W(0, listX);
        if (str2 == null || (numO = qa8.o(10, str2)) == null) {
            return null;
        }
        int iIntValue = numO.intValue();
        int size = listX.size() - 1;
        Object obj = CommonUrlParts.Values.FALSE_INTEGER;
        Integer numP = qa8.p((String) (1 <= size ? listX.get(1) : CommonUrlParts.Values.FALSE_INTEGER));
        if (numP == null) {
            return null;
        }
        int iIntValue2 = numP.intValue();
        if (2 <= listX.size() - 1) {
            obj = listX.get(2);
        }
        Integer numP2 = qa8.p((String) obj);
        if (numP2 != null) {
            return new j96(iIntValue, iIntValue2, numP2.intValue());
        }
        return null;
    }
}
