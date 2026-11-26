package androidx.room.paging;

import android.database.Cursor;
import androidx.sqlite.SQLiteStatement;
import defpackage.jh2;
import defpackage.ud;

/* JADX INFO: loaded from: classes3.dex */
public final class CursorSQLiteStatement implements SQLiteStatement {
    public static final Companion Companion = new Companion(null);
    private final Cursor cursor;

    public CursorSQLiteStatement(Cursor cursor) {
        cursor.getClass();
        this.cursor = cursor;
    }

    @Override // androidx.sqlite.SQLiteStatement
    /* JADX INFO: renamed from: bindBlob, reason: merged with bridge method [inline-methods] */
    public Void mo9361bindBlob(int i, byte[] bArr) {
        bArr.getClass();
        throw new IllegalStateException("Only get*() calls are allowed on a Cursor backed SQLiteStatement");
    }

    @Override // androidx.sqlite.SQLiteStatement
    /* JADX INFO: renamed from: bindDouble, reason: merged with bridge method [inline-methods] */
    public Void mo9362bindDouble(int i, double d) {
        throw new IllegalStateException("Only get*() calls are allowed on a Cursor backed SQLiteStatement");
    }

    @Override // androidx.sqlite.SQLiteStatement
    /* JADX INFO: renamed from: bindLong, reason: merged with bridge method [inline-methods] */
    public Void mo9363bindLong(int i, long j) {
        throw new IllegalStateException("Only get*() calls are allowed on a Cursor backed SQLiteStatement");
    }

    @Override // androidx.sqlite.SQLiteStatement
    /* JADX INFO: renamed from: bindNull, reason: merged with bridge method [inline-methods] */
    public Void mo9364bindNull(int i) {
        throw new IllegalStateException("Only get*() calls are allowed on a Cursor backed SQLiteStatement");
    }

    @Override // androidx.sqlite.SQLiteStatement
    /* JADX INFO: renamed from: bindText, reason: merged with bridge method [inline-methods] */
    public Void mo9365bindText(int i, String str) {
        str.getClass();
        throw new IllegalStateException("Only get*() calls are allowed on a Cursor backed SQLiteStatement");
    }

    @Override // androidx.sqlite.SQLiteStatement
    /* JADX INFO: renamed from: clearBindings, reason: merged with bridge method [inline-methods] */
    public Void mo9366clearBindings() {
        throw new IllegalStateException("Only get*() calls are allowed on a Cursor backed SQLiteStatement");
    }

    @Override // androidx.sqlite.SQLiteStatement, java.lang.AutoCloseable
    public void close() {
        this.cursor.close();
    }

    @Override // androidx.sqlite.SQLiteStatement
    public byte[] getBlob(int i) {
        byte[] blob = this.cursor.getBlob(i);
        blob.getClass();
        return blob;
    }

    @Override // androidx.sqlite.SQLiteStatement
    public int getColumnCount() {
        return this.cursor.getColumnCount();
    }

    @Override // androidx.sqlite.SQLiteStatement
    public String getColumnName(int i) {
        String columnName = this.cursor.getColumnName(i);
        columnName.getClass();
        return columnName;
    }

    @Override // androidx.sqlite.SQLiteStatement
    public int getColumnType(int i) {
        return Companion.getDataType(this.cursor, i);
    }

    @Override // androidx.sqlite.SQLiteStatement
    public double getDouble(int i) {
        return this.cursor.getDouble(i);
    }

    @Override // androidx.sqlite.SQLiteStatement
    public long getLong(int i) {
        return this.cursor.getLong(i);
    }

    @Override // androidx.sqlite.SQLiteStatement
    public String getText(int i) {
        String string = this.cursor.getString(i);
        string.getClass();
        return string;
    }

    @Override // androidx.sqlite.SQLiteStatement
    public boolean isNull(int i) {
        return this.cursor.isNull(i);
    }

    @Override // androidx.sqlite.SQLiteStatement
    public void reset() {
        this.cursor.moveToPosition(-1);
    }

    @Override // androidx.sqlite.SQLiteStatement
    public boolean step() {
        return this.cursor.moveToNext();
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final int getDataType(Cursor cursor, int i) {
            int type = cursor.getType(i);
            int type2 = cursor.getType(i);
            if (type2 == 0) {
                return 5;
            }
            int i2 = 1;
            if (type2 != 1) {
                i2 = 2;
                if (type2 != 2) {
                    i2 = 3;
                    if (type2 != 3) {
                        if (type2 == 4) {
                            return 4;
                        }
                        ud.e(type, "Unknown field type: ");
                        return 0;
                    }
                }
            }
            return i2;
        }

        private Companion() {
        }
    }
}
