package com.google.android.gms.common.data;

import android.content.ContentValues;
import android.database.CharArrayBuffer;
import android.database.Cursor;
import android.database.CursorIndexOutOfBoundsException;
import android.database.CursorWindow;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.google.android.gms.common.internal.Asserts;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.sqlite.CursorWrapper;
import defpackage.fg;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class DataHolder extends AbstractSafeParcelable implements Closeable {
    public static final Parcelable.Creator<DataHolder> CREATOR = new zad();
    public static final a l = new a(new String[0]);
    public final int b;
    public final String[] c;
    public Bundle d;
    public final CursorWindow[] e;
    public final int f;
    public final Bundle g;
    public int[] h;
    public int i;
    public int j;
    public final boolean k;

    public DataHolder(Cursor cursor, int i, Bundle bundle) {
        int startPosition;
        CursorWrapper cursorWrapper = new CursorWrapper(cursor);
        String[] columnNames = cursorWrapper.getColumnNames();
        ArrayList arrayList = new ArrayList();
        try {
            int count = cursorWrapper.getCount();
            CursorWindow window = cursorWrapper.getWindow();
            if (window == null || window.getStartPosition() != 0) {
                startPosition = 0;
            } else {
                window.acquireReference();
                cursorWrapper.setWindow(null);
                arrayList.add(window);
                startPosition = window.getNumRows();
            }
            while (startPosition < count && cursorWrapper.moveToPosition(startPosition)) {
                CursorWindow window2 = cursorWrapper.getWindow();
                if (window2 != null) {
                    window2.acquireReference();
                    cursorWrapper.setWindow(null);
                } else {
                    window2 = new CursorWindow(false);
                    window2.setStartPosition(startPosition);
                    cursorWrapper.fillWindow(startPosition, window2);
                }
                if (window2.getNumRows() == 0) {
                    break;
                }
                arrayList.add(window2);
                startPosition = window2.getStartPosition() + window2.getNumRows();
            }
            cursorWrapper.close();
            this(columnNames, (CursorWindow[]) arrayList.toArray(new CursorWindow[arrayList.size()]), i, bundle);
        } catch (Throwable th) {
            cursorWrapper.close();
            throw th;
        }
    }

    /* JADX WARN: Code duplicated, block: B:73:0x01c8 A[LOOP:2: B:72:0x01c6->B:73:0x01c8, LOOP_END] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v0, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3, types: [int] */
    /* JADX WARN: Type inference failed for: r9v9 */
    public static CursorWindow[] a(Builder builder) {
        boolean z;
        int size;
        ?? r9;
        int i;
        String str;
        String str2;
        String str3;
        String str4;
        boolean zPutDouble;
        String[] strArr = builder.a;
        String str5 = ")";
        String str6 = "Allocating additional cursor window for large data set (row ";
        boolean z2 = false;
        if (strArr.length == 0) {
            return new CursorWindow[0];
        }
        ArrayList arrayList = builder.b;
        int size2 = arrayList.size();
        CursorWindow cursorWindow = new CursorWindow(false);
        ?? arrayList2 = new ArrayList();
        arrayList2.add(cursorWindow);
        cursorWindow.setNumColumns(strArr.length);
        int i2 = 0;
        boolean z3 = false;
        while (i2 < size2) {
            try {
                if (!cursorWindow.allocRow()) {
                    StringBuilder sb = new StringBuilder(String.valueOf(i2).length() + 61);
                    sb.append(str6);
                    sb.append(i2);
                    sb.append(str5);
                    Log.d("DataHolder", sb.toString());
                    cursorWindow = new CursorWindow(z2);
                    cursorWindow.setStartPosition(i2);
                    cursorWindow.setNumColumns(strArr.length);
                    arrayList2.add(cursorWindow);
                    if (!cursorWindow.allocRow()) {
                        Log.e("DataHolder", "Unable to allocate row to hold data.");
                        arrayList2.remove(cursorWindow);
                        return (CursorWindow[]) arrayList2.toArray(new CursorWindow[arrayList2.size()]);
                    }
                }
                Map map = (Map) arrayList.get(i2);
                ArrayList arrayList3 = arrayList;
                int i3 = 0;
                boolean zPutString = true;
                while (true) {
                    try {
                        if (i3 < strArr.length) {
                            if (zPutString) {
                                String str7 = strArr[i3];
                                int i4 = size2;
                                Object obj = map.get(str7);
                                if (obj == null) {
                                    zPutString = cursorWindow.putNull(i2, i3);
                                    str3 = str5;
                                } else {
                                    str3 = str5;
                                    if (obj instanceof String) {
                                        zPutString = cursorWindow.putString((String) obj, i2, i3);
                                    } else {
                                        if (obj instanceof Long) {
                                            str4 = str6;
                                            zPutDouble = cursorWindow.putLong(((Long) obj).longValue(), i2, i3);
                                        } else {
                                            str4 = str6;
                                            if (obj instanceof Integer) {
                                                zPutDouble = cursorWindow.putLong(((Integer) obj).intValue(), i2, i3);
                                            } else if (obj instanceof Boolean) {
                                                zPutDouble = cursorWindow.putLong(true != ((Boolean) obj).booleanValue() ? 0L : 1L, i2, i3);
                                            } else if (obj instanceof byte[]) {
                                                zPutDouble = cursorWindow.putBlob((byte[]) obj, i2, i3);
                                            } else if (obj instanceof Double) {
                                                zPutDouble = cursorWindow.putDouble(((Double) obj).doubleValue(), i2, i3);
                                            } else {
                                                if (!(obj instanceof Float)) {
                                                    String string = obj.toString();
                                                    StringBuilder sb2 = new StringBuilder(String.valueOf(str7).length() + 32 + string.length());
                                                    sb2.append("Unsupported object for column ");
                                                    sb2.append(str7);
                                                    sb2.append(": ");
                                                    sb2.append(string);
                                                    throw new IllegalArgumentException(sb2.toString());
                                                }
                                                zPutDouble = cursorWindow.putDouble(((Float) obj).floatValue(), i2, i3);
                                            }
                                        }
                                        zPutString = zPutDouble;
                                    }
                                    i3++;
                                    size2 = i4;
                                    str5 = str3;
                                    str6 = str4;
                                }
                                str4 = str6;
                                i3++;
                                size2 = i4;
                                str5 = str3;
                                str6 = str4;
                            } else {
                                i = size2;
                                str = str5;
                                str2 = str6;
                            }
                            size = arrayList2.size();
                            for (r9 = z; r9 < size; r9++) {
                                ((CursorWindow) arrayList2.get(r9)).close();
                            }
                            throw e;
                        }
                        i = size2;
                        str = str5;
                        str2 = str6;
                        if (zPutString) {
                            z = false;
                            z3 = false;
                        }
                        i2++;
                        z2 = z;
                        arrayList = arrayList3;
                        size2 = i;
                        str5 = str;
                        str6 = str2;
                        if (z3) {
                            z = false;
                            throw new zac("Could not add the value to a new CursorWindow. The size of value may be larger than what a CursorWindow can handle.");
                        }
                        StringBuilder sb3 = new StringBuilder(String.valueOf(i2).length() + 63);
                        sb3.append("Couldn't populate window data for row ");
                        sb3.append(i2);
                        sb3.append(" - allocating new window.");
                        Log.d("DataHolder", sb3.toString());
                        cursorWindow.freeLastRow();
                        z = false;
                        try {
                            CursorWindow cursorWindow2 = new CursorWindow(false);
                            cursorWindow2.setStartPosition(i2);
                            cursorWindow2.setNumColumns(strArr.length);
                            arrayList2.add(cursorWindow2);
                            i2--;
                            cursorWindow = cursorWindow2;
                            z3 = true;
                            i2++;
                            z2 = z;
                            arrayList = arrayList3;
                            size2 = i;
                            str5 = str;
                            str6 = str2;
                        } catch (RuntimeException e) {
                            e = e;
                        }
                        e = e;
                    } catch (RuntimeException e2) {
                        e = e2;
                        z = false;
                    }
                    size = arrayList2.size();
                    while (r9 < size) {
                        ((CursorWindow) arrayList2.get(r9)).close();
                    }
                    throw e;
                }
            } catch (RuntimeException e3) {
                e = e3;
                z = z2;
            }
        }
        return (CursorWindow[]) arrayList2.toArray(new CursorWindow[arrayList2.size()]);
    }

    public static Builder builder(String[] strArr) {
        return new Builder(strArr);
    }

    public static DataHolder empty(int i) {
        return new DataHolder(l, i);
    }

    public void acquireReference() {
        synchronized (this) {
            try {
                int i = this.j;
                if (i <= 0) {
                    throw new IllegalStateException("Attempt to acquire reference to an already-closed DataHolder");
                }
                this.j = i + 1;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        releaseReference();
    }

    public DataHolder copy() {
        DataHolder dataHolder;
        synchronized (this) {
            if (isClosed()) {
                throw new IllegalStateException("Cannot copy a closed DataHolder");
            }
            CursorWindow[] cursorWindowArr = this.e;
            CursorWindow[] cursorWindowArr2 = (CursorWindow[]) Arrays.copyOf(cursorWindowArr, cursorWindowArr.length);
            for (int i = 0; i < cursorWindowArr2.length; i++) {
                try {
                    cursorWindowArr2[i].acquireReference();
                } catch (RuntimeException e) {
                    for (int i2 = 0; i2 < i; i2++) {
                        cursorWindowArr2[i2].releaseReference();
                    }
                    if (e instanceof IllegalStateException) {
                        throw new IllegalStateException("Closed CursorWindow encountered during DataHolder copy", e);
                    }
                    throw e;
                }
            }
            dataHolder = new DataHolder(this.c, cursorWindowArr2, this.f, this.g);
        }
        return dataHolder;
    }

    public final void f(int i, String str) {
        Bundle bundle = this.d;
        if (bundle == null || !bundle.containsKey(str)) {
            fg.c("No such column: ".concat(String.valueOf(str)));
        } else if (isClosed()) {
            fg.c("Buffer is closed.");
        } else if (i < 0 || i >= this.i) {
            throw new CursorIndexOutOfBoundsException(i, this.i);
        }
    }

    public final void finalize() throws Throwable {
        try {
            if (this.k && this.e.length > 0 && !isClosed()) {
                synchronized (this) {
                    try {
                        if (this.j > 1) {
                            this.j = 1;
                        }
                        releaseReference();
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                String string = toString();
                StringBuilder sb = new StringBuilder(String.valueOf(string).length() + 178);
                sb.append("Internal data leak within a DataBuffer object detected!  Be sure to explicitly call release() on all DataBuffer extending objects when you are done with them. (internal object: ");
                sb.append(string);
                sb.append(")");
                Log.e("DataBuffer", sb.toString());
            }
            super.finalize();
        } catch (Throwable th2) {
            super.finalize();
            throw th2;
        }
    }

    public boolean getBoolean(String str, int i, int i2) {
        f(i, str);
        return this.e[i2].getLong(i, this.d.getInt(str)) == 1;
    }

    public byte[] getByteArray(String str, int i, int i2) {
        f(i, str);
        return this.e[i2].getBlob(i, this.d.getInt(str));
    }

    public int getCount() {
        return this.i;
    }

    public int getInteger(String str, int i, int i2) {
        f(i, str);
        return this.e[i2].getInt(i, this.d.getInt(str));
    }

    public long getLong(String str, int i, int i2) {
        f(i, str);
        return this.e[i2].getLong(i, this.d.getInt(str));
    }

    public Bundle getMetadata() {
        return this.g;
    }

    public int getStatusCode() {
        return this.f;
    }

    public String getString(String str, int i, int i2) {
        f(i, str);
        return this.e[i2].getString(i, this.d.getInt(str));
    }

    public int getWindowIndex(int i) {
        int length;
        int i2 = 0;
        Preconditions.checkState(i >= 0 && i < this.i);
        while (true) {
            int[] iArr = this.h;
            length = iArr.length;
            if (i2 >= length) {
                break;
            }
            if (i < iArr[i2]) {
                i2--;
                break;
            }
            i2++;
        }
        return i2 == length ? i2 - 1 : i2;
    }

    public boolean hasColumn(String str) {
        return this.d.containsKey(str);
    }

    public boolean hasNull(String str, int i, int i2) {
        f(i, str);
        return this.e[i2].isNull(i, this.d.getInt(str));
    }

    public boolean isClosed() {
        boolean z;
        synchronized (this) {
            z = this.j <= 0;
        }
        return z;
    }

    public void releaseReference() {
        synchronized (this) {
            try {
                int i = this.j - 1;
                this.j = i;
                if (i == 0) {
                    for (CursorWindow cursorWindow : this.e) {
                        cursorWindow.releaseReference();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int iBeginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeStringArray(parcel, 1, this.c, false);
        SafeParcelWriter.writeTypedArray(parcel, 2, this.e, i, false);
        SafeParcelWriter.writeInt(parcel, 3, getStatusCode());
        SafeParcelWriter.writeBundle(parcel, 4, getMetadata(), false);
        SafeParcelWriter.writeInt(parcel, 1000, this.b);
        SafeParcelWriter.finishObjectHeader(parcel, iBeginObjectHeader);
        if ((i & 1) != 0) {
            releaseReference();
        }
    }

    public final void zaa() {
        this.d = new Bundle();
        int i = 0;
        while (true) {
            String[] strArr = this.c;
            if (i >= strArr.length) {
                break;
            }
            this.d.putInt(strArr[i], i);
            i++;
        }
        CursorWindow[] cursorWindowArr = this.e;
        this.h = new int[cursorWindowArr.length];
        int numRows = 0;
        for (int i2 = 0; i2 < cursorWindowArr.length; i2++) {
            this.h[i2] = numRows;
            numRows += cursorWindowArr[i2].getNumRows() - (numRows - cursorWindowArr[i2].getStartPosition());
        }
        this.i = numRows;
    }

    public final float zab(String str, int i, int i2) {
        f(i, str);
        return this.e[i2].getFloat(i, this.d.getInt(str));
    }

    public final double zac(String str, int i, int i2) {
        f(i, str);
        return this.e[i2].getDouble(i, this.d.getInt(str));
    }

    public final void zad(String str, int i, int i2, CharArrayBuffer charArrayBuffer) {
        f(i, str);
        this.e[i2].copyStringToBuffer(i, this.d.getInt(str), charArrayBuffer);
    }

    public static class Builder {
        public final String[] a;
        public final ArrayList b = new ArrayList();

        public /* synthetic */ Builder(String[] strArr) {
            this.a = (String[]) Preconditions.checkNotNull(strArr);
            new HashMap();
        }

        public DataHolder build(int i, Bundle bundle) {
            return new DataHolder(this.a, DataHolder.a(this), i, bundle);
        }

        public Builder withRow(ContentValues contentValues) {
            Asserts.checkNotNull(contentValues);
            HashMap map = new HashMap(contentValues.size());
            for (Map.Entry<String, Object> entry : contentValues.valueSet()) {
                map.put(entry.getKey(), entry.getValue());
            }
            return zaa(map);
        }

        public Builder zaa(HashMap map) {
            Asserts.checkNotNull(map);
            this.b.add(map);
            return this;
        }

        public DataHolder build(int i) {
            return new DataHolder(this, i);
        }
    }

    public DataHolder(int i, String[] strArr, CursorWindow[] cursorWindowArr, int i2, Bundle bundle) {
        this.j = 1;
        this.k = true;
        this.b = i;
        this.c = strArr;
        this.e = cursorWindowArr;
        this.f = i2;
        this.g = bundle;
    }

    public DataHolder(String[] strArr, CursorWindow[] cursorWindowArr, int i, Bundle bundle) {
        this.j = 1;
        this.k = true;
        this.b = 1;
        this.c = (String[]) Preconditions.checkNotNull(strArr);
        this.e = (CursorWindow[]) Preconditions.checkNotNull(cursorWindowArr);
        this.f = i;
        this.g = bundle;
        zaa();
    }

    public DataHolder(Builder builder, int i) {
        this(builder.a, a(builder), i, null);
    }
}
