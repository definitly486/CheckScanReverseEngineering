package androidx.sqlite;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public interface SQLiteStatement extends AutoCloseable {
    /* JADX INFO: renamed from: bindBlob */
    void mo9361bindBlob(int i, byte[] bArr);

    default void bindBoolean(int i, boolean z) {
        mo9363bindLong(i, z ? 1L : 0L);
    }

    /* JADX INFO: renamed from: bindDouble */
    void mo9362bindDouble(int i, double d);

    default void bindFloat(int i, float f) {
        mo9362bindDouble(i, f);
    }

    default void bindInt(int i, int i2) {
        mo9363bindLong(i, i2);
    }

    /* JADX INFO: renamed from: bindLong */
    void mo9363bindLong(int i, long j);

    /* JADX INFO: renamed from: bindNull */
    void mo9364bindNull(int i);

    /* JADX INFO: renamed from: bindText */
    void mo9365bindText(int i, String str);

    /* JADX INFO: renamed from: clearBindings */
    void mo9366clearBindings();

    @Override // java.lang.AutoCloseable
    void close();

    byte[] getBlob(int i);

    default boolean getBoolean(int i) {
        return getLong(i) != 0;
    }

    int getColumnCount();

    String getColumnName(int i);

    default List<String> getColumnNames() {
        int columnCount = getColumnCount();
        ArrayList arrayList = new ArrayList(columnCount);
        for (int i = 0; i < columnCount; i++) {
            arrayList.add(getColumnName(i));
        }
        return arrayList;
    }

    int getColumnType(int i);

    double getDouble(int i);

    default float getFloat(int i) {
        return (float) getDouble(i);
    }

    default int getInt(int i) {
        return (int) getLong(i);
    }

    long getLong(int i);

    String getText(int i);

    boolean isNull(int i);

    void reset();

    boolean step();
}
