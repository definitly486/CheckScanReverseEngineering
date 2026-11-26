package androidx.room.util;

import defpackage.aa4;
import defpackage.na8;
import defpackage.qn1;

/* JADX INFO: loaded from: classes3.dex */
public final class FtsTableInfoKt {
    public static final boolean equalsCommon(FtsTableInfo ftsTableInfo, Object obj) {
        ftsTableInfo.getClass();
        if (ftsTableInfo == obj) {
            return true;
        }
        if (!(obj instanceof FtsTableInfo)) {
            return false;
        }
        FtsTableInfo ftsTableInfo2 = (FtsTableInfo) obj;
        if (aa4.e(ftsTableInfo.name, ftsTableInfo2.name) && aa4.e(ftsTableInfo.columns, ftsTableInfo2.columns)) {
            return aa4.e(ftsTableInfo.options, ftsTableInfo2.options);
        }
        return false;
    }

    public static final int hashCodeCommon(FtsTableInfo ftsTableInfo) {
        ftsTableInfo.getClass();
        return ftsTableInfo.options.hashCode() + ((ftsTableInfo.columns.hashCode() + (ftsTableInfo.name.hashCode() * 31)) * 31);
    }

    public static final String toStringCommon(FtsTableInfo ftsTableInfo) {
        ftsTableInfo.getClass();
        return na8.j("\n            |FtsTableInfo {\n            |   name = '" + ftsTableInfo.name + "',\n            |   columns = {" + TableInfoKt.formatString(qn1.m0(ftsTableInfo.columns)) + "\n            |   options = {" + TableInfoKt.formatString(qn1.m0(ftsTableInfo.options)) + "\n            |}\n        ");
    }
}
