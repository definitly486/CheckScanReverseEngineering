package androidx.room.util;

import androidx.sqlite.SQLiteStatement;
import defpackage.fg;
import defpackage.uz4;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class MappedColumnsSQLiteStatementWrapper implements SQLiteStatement {
    private final Map<String, Integer> columnNameToIndexMap;
    private final String[] columnNames;
    private final SQLiteStatement delegate;
    private final int[] mapping;

    public MappedColumnsSQLiteStatementWrapper(SQLiteStatement sQLiteStatement, String[] strArr, int[] iArr) {
        sQLiteStatement.getClass();
        strArr.getClass();
        iArr.getClass();
        this.delegate = sQLiteStatement;
        this.columnNames = strArr;
        this.mapping = iArr;
        if (strArr.length != iArr.length) {
            fg.c("Expected columnNames.size == mapping.size");
            throw null;
        }
        uz4 uz4Var = new uz4();
        int length = strArr.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            uz4Var.put(strArr[i], Integer.valueOf(this.mapping[i2]));
            i++;
            i2++;
        }
        int columnCount = getColumnCount();
        for (int i3 = 0; i3 < columnCount; i3++) {
            if (!uz4Var.containsKey(getColumnName(i3))) {
                uz4Var.put(getColumnName(i3), Integer.valueOf(i3));
            }
        }
        this.columnNameToIndexMap = uz4Var.b();
    }

    @Override // androidx.sqlite.SQLiteStatement
    /* JADX INFO: renamed from: bindBlob */
    public void mo9361bindBlob(int i, byte[] bArr) {
        bArr.getClass();
        this.delegate.mo9361bindBlob(i, bArr);
    }

    @Override // androidx.sqlite.SQLiteStatement
    public void bindBoolean(int i, boolean z) {
        this.delegate.bindBoolean(i, z);
    }

    @Override // androidx.sqlite.SQLiteStatement
    /* JADX INFO: renamed from: bindDouble */
    public void mo9362bindDouble(int i, double d) {
        this.delegate.mo9362bindDouble(i, d);
    }

    @Override // androidx.sqlite.SQLiteStatement
    public void bindFloat(int i, float f) {
        this.delegate.bindFloat(i, f);
    }

    @Override // androidx.sqlite.SQLiteStatement
    public void bindInt(int i, int i2) {
        this.delegate.bindInt(i, i2);
    }

    @Override // androidx.sqlite.SQLiteStatement
    /* JADX INFO: renamed from: bindLong */
    public void mo9363bindLong(int i, long j) {
        this.delegate.mo9363bindLong(i, j);
    }

    @Override // androidx.sqlite.SQLiteStatement
    /* JADX INFO: renamed from: bindNull */
    public void mo9364bindNull(int i) {
        this.delegate.mo9364bindNull(i);
    }

    @Override // androidx.sqlite.SQLiteStatement
    /* JADX INFO: renamed from: bindText */
    public void mo9365bindText(int i, String str) {
        str.getClass();
        this.delegate.mo9365bindText(i, str);
    }

    @Override // androidx.sqlite.SQLiteStatement
    /* JADX INFO: renamed from: clearBindings */
    public void mo9366clearBindings() {
        this.delegate.mo9366clearBindings();
    }

    @Override // androidx.sqlite.SQLiteStatement, java.lang.AutoCloseable
    public void close() {
        this.delegate.close();
    }

    @Override // androidx.sqlite.SQLiteStatement
    public byte[] getBlob(int i) {
        return this.delegate.getBlob(i);
    }

    @Override // androidx.sqlite.SQLiteStatement
    public boolean getBoolean(int i) {
        return this.delegate.getBoolean(i);
    }

    @Override // androidx.sqlite.SQLiteStatement
    public int getColumnCount() {
        return this.delegate.getColumnCount();
    }

    public final int getColumnIndex(String str) {
        str.getClass();
        Integer num = this.columnNameToIndexMap.get(str);
        if (num != null) {
            return num.intValue();
        }
        return -1;
    }

    @Override // androidx.sqlite.SQLiteStatement
    public String getColumnName(int i) {
        return this.delegate.getColumnName(i);
    }

    @Override // androidx.sqlite.SQLiteStatement
    public List<String> getColumnNames() {
        return this.delegate.getColumnNames();
    }

    @Override // androidx.sqlite.SQLiteStatement
    public int getColumnType(int i) {
        return this.delegate.getColumnType(i);
    }

    @Override // androidx.sqlite.SQLiteStatement
    public double getDouble(int i) {
        return this.delegate.getDouble(i);
    }

    @Override // androidx.sqlite.SQLiteStatement
    public float getFloat(int i) {
        return this.delegate.getFloat(i);
    }

    @Override // androidx.sqlite.SQLiteStatement
    public int getInt(int i) {
        return this.delegate.getInt(i);
    }

    @Override // androidx.sqlite.SQLiteStatement
    public long getLong(int i) {
        return this.delegate.getLong(i);
    }

    @Override // androidx.sqlite.SQLiteStatement
    public String getText(int i) {
        return this.delegate.getText(i);
    }

    @Override // androidx.sqlite.SQLiteStatement
    public boolean isNull(int i) {
        return this.delegate.isNull(i);
    }

    @Override // androidx.sqlite.SQLiteStatement
    public void reset() {
        this.delegate.reset();
    }

    @Override // androidx.sqlite.SQLiteStatement
    public boolean step() {
        return this.delegate.step();
    }
}
