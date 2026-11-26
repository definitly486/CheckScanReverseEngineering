package yads;

import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class yo {
    public final boolean a;
    public final boolean b;

    public yo(Map map) {
        String strB = v83.b(map, oa3.AD_BASE64_ENCODING);
        if (strB != null) {
            Boolean.parseBoolean(strB);
        }
        String strB2 = v83.b(map, oa3.AD_MEDIA_BASE64_ENCODING);
        boolean z = strB2 == null ? true : Boolean.parseBoolean(strB2);
        String strB3 = v83.b(map, oa3.AD_DIV_BASE64_ENCODING);
        boolean z2 = strB3 != null ? Boolean.parseBoolean(strB3) : true;
        this.a = z;
        this.b = z2;
    }
}
