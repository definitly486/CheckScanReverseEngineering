package androidx.room.util;

import android.database.Cursor;
import android.database.CursorWrapper;
import android.database.MatrixCursor;
import android.util.Log;
import defpackage.ah;
import defpackage.fg;
import defpackage.lt0;
import defpackage.m96;
import defpackage.nl3;
import defpackage.pg;
import defpackage.ra8;
import defpackage.yr;
import java.io.IOException;

/* JADX INFO: loaded from: classes3.dex */
public final class CursorUtil {
    public static final Cursor copyAndClose(Cursor cursor) throws IOException {
        cursor.getClass();
        try {
            MatrixCursor matrixCursor = new MatrixCursor(cursor.getColumnNames(), cursor.getCount());
            while (cursor.moveToNext()) {
                Object[] objArr = new Object[cursor.getColumnCount()];
                int columnCount = cursor.getColumnCount();
                for (int i = 0; i < columnCount; i++) {
                    int type = cursor.getType(i);
                    if (type == 0) {
                        objArr[i] = null;
                    } else if (type == 1) {
                        objArr[i] = Long.valueOf(cursor.getLong(i));
                    } else if (type == 2) {
                        objArr[i] = Double.valueOf(cursor.getDouble(i));
                    } else if (type == 3) {
                        objArr[i] = cursor.getString(i);
                    } else {
                        if (type != 4) {
                            throw new IllegalStateException();
                        }
                        objArr[i] = cursor.getBlob(i);
                    }
                }
                matrixCursor.addRow(objArr);
            }
            cursor.close();
            return matrixCursor;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                m96.c(cursor, th);
                throw th2;
            }
        }
    }

    public static final int findColumnIndexBySuffix(String[] strArr, String str) {
        strArr.getClass();
        str.getClass();
        String strConcat = ".".concat(str);
        String strD = lt0.d('`', ".", str);
        int length = strArr.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            String str2 = strArr[i];
            int i3 = i2 + 1;
            if (str2.length() >= str.length() + 2 && (ra8.u(str2, strConcat, false) || (str2.charAt(0) == '`' && ra8.u(str2, strD, false)))) {
                return i2;
            }
            i++;
            i2 = i3;
        }
        return -1;
    }

    public static final int getColumnIndex(Cursor cursor, String str) {
        cursor.getClass();
        str.getClass();
        int columnIndex = cursor.getColumnIndex(str);
        if (columnIndex >= 0) {
            return columnIndex;
        }
        int columnIndex2 = cursor.getColumnIndex("`" + str + '`');
        return columnIndex2 >= 0 ? columnIndex2 : findColumnIndexBySuffix(cursor, str);
    }

    public static final int getColumnIndexOrThrow(Cursor cursor, String str) {
        String strT;
        cursor.getClass();
        str.getClass();
        int columnIndex = getColumnIndex(cursor, str);
        if (columnIndex >= 0) {
            return columnIndex;
        }
        try {
            String[] columnNames = cursor.getColumnNames();
            columnNames.getClass();
            strT = yr.T(columnNames, null, null, null, 63);
        } catch (Exception e) {
            Log.d("RoomCursorUtil", "Cannot collect column names for debug purposes", e);
            strT = "unknown";
        }
        fg.c(pg.g("column '", str, "' does not exist. Available columns: ", strT));
        return 0;
    }

    public static final <R> R useCursor(Cursor cursor, nl3<? super Cursor, ? extends R> nl3Var) throws IOException {
        cursor.getClass();
        nl3Var.getClass();
        try {
            R rInvoke = nl3Var.invoke(cursor);
            cursor.close();
            return rInvoke;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                m96.c(cursor, th);
                throw th2;
            }
        }
    }

    public static final Cursor wrapMappedColumns(Cursor cursor, final String[] strArr, final int[] iArr) {
        cursor.getClass();
        strArr.getClass();
        iArr.getClass();
        if (strArr.length == iArr.length) {
            return new CursorWrapper(cursor) { // from class: androidx.room.util.CursorUtil.wrapMappedColumns.2
                @Override // android.database.CursorWrapper, android.database.Cursor
                public int getColumnIndex(String str) {
                    str.getClass();
                    String[] strArr2 = strArr;
                    int[] iArr2 = iArr;
                    int length = strArr2.length;
                    int i = 0;
                    int i2 = 0;
                    while (i < length) {
                        int i3 = i2 + 1;
                        if (ra8.v(strArr2[i], str, true)) {
                            return iArr2[i2];
                        }
                        i++;
                        i2 = i3;
                    }
                    return super.getColumnIndex(str);
                }
            };
        }
        ah.f("Expected columnNames.length == mapping.length");
        return null;
    }

    private static final int findColumnIndexBySuffix(Cursor cursor, String str) {
        return -1;
    }
}
