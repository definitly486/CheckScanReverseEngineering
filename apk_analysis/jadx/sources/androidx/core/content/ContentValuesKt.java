package androidx.core.content;

import android.content.ContentValues;
import defpackage.b36;
import defpackage.w7;

/* JADX INFO: loaded from: classes5.dex */
public final class ContentValuesKt {
    /* JADX WARN: Multi-variable type inference failed */
    public static final ContentValues contentValuesOf(b36<String, ? extends Object>... b36VarArr) {
        ContentValues contentValues = new ContentValues(b36VarArr.length);
        for (b36<String, ? extends Object> b36Var : b36VarArr) {
            String str = b36Var.b;
            B b = b36Var.c;
            if (b == 0) {
                contentValues.putNull(str);
            } else if (b instanceof String) {
                contentValues.put(str, (String) b);
            } else if (b instanceof Integer) {
                contentValues.put(str, (Integer) b);
            } else if (b instanceof Long) {
                contentValues.put(str, (Long) b);
            } else if (b instanceof Boolean) {
                contentValues.put(str, (Boolean) b);
            } else if (b instanceof Float) {
                contentValues.put(str, (Float) b);
            } else if (b instanceof Double) {
                contentValues.put(str, (Double) b);
            } else if (b instanceof byte[]) {
                contentValues.put(str, (byte[]) b);
            } else if (b instanceof Byte) {
                contentValues.put(str, (Byte) b);
            } else {
                if (!(b instanceof Short)) {
                    w7.f(34, "Illegal value type ", b.getClass().getCanonicalName(), " for key \"", str);
                    return null;
                }
                contentValues.put(str, (Short) b);
            }
        }
        return contentValues;
    }
}
