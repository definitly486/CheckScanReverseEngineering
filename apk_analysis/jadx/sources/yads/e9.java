package yads;

import defpackage.ta8;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class e9 {
    public static c a(Map map) {
        Set setY0;
        Long lValueOf;
        String strB = v83.b(map, oa3.AD_AB_EXPERIMENTS);
        String strOptString = "";
        if (strB == null) {
            strB = "";
        }
        String strB2 = v83.b(map, oa3.AD_ANALYTICS_PARAMETERS);
        if (strB2 == null) {
            setY0 = defpackage.ox2.b;
        } else {
            try {
                strOptString = new JSONObject(strB2).optString("test_ids", "");
            } catch (Throwable unused) {
            }
            List listY = ta8.Y(strOptString, new String[]{";"});
            ArrayList arrayList = new ArrayList();
            Iterator it = listY.iterator();
            while (it.hasNext()) {
                try {
                    lValueOf = Long.valueOf(Long.parseLong((String) it.next()));
                } catch (Throwable unused2) {
                    lValueOf = null;
                }
                if (lValueOf != null) {
                    arrayList.add(lValueOf);
                }
            }
            setY0 = defpackage.qn1.y0(arrayList);
        }
        return new c(strB, setY0);
    }
}
