package androidx.room.util;

import defpackage.aa4;
import defpackage.na8;

/* JADX INFO: loaded from: classes3.dex */
public final class ViewInfoKt {
    public static final boolean equalsCommon(ViewInfo viewInfo, Object obj) {
        boolean zE;
        viewInfo.getClass();
        if (viewInfo == obj) {
            return true;
        }
        if (!(obj instanceof ViewInfo)) {
            return false;
        }
        ViewInfo viewInfo2 = (ViewInfo) obj;
        if (aa4.e(viewInfo.name, viewInfo2.name)) {
            String str = viewInfo.sql;
            String str2 = viewInfo2.sql;
            if (str != null) {
                zE = aa4.e(str, str2);
            } else {
                zE = str2 == null;
            }
            if (zE) {
                return true;
            }
        }
        return false;
    }

    public static final int hashCodeCommon(ViewInfo viewInfo) {
        viewInfo.getClass();
        int iHashCode = viewInfo.name.hashCode() * 31;
        String str = viewInfo.sql;
        return iHashCode + (str != null ? str.hashCode() : 0);
    }

    public static final String toStringCommon(ViewInfo viewInfo) {
        viewInfo.getClass();
        return na8.j("\n            |ViewInfo {\n            |   name = '" + viewInfo.name + "',\n            |   sql = '" + viewInfo.sql + "'\n            |}\n        ");
    }
}
