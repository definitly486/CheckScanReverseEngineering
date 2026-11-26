package androidx.room;

import androidx.sqlite.SQLiteStatement;
import defpackage.jh2;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
final class BindOnlySQLiteStatement implements SQLiteStatement {
    public static final Companion Companion = new Companion(null);
    private static final String ONLY_BIND_CALLS_ALLOWED_ERROR = "Only bind*() calls are allowed on the RoomRawQuery received statement.";
    private final /* synthetic */ SQLiteStatement $$delegate_0;

    public BindOnlySQLiteStatement(SQLiteStatement sQLiteStatement) {
        sQLiteStatement.getClass();
        this.$$delegate_0 = sQLiteStatement;
    }

    @Override // androidx.sqlite.SQLiteStatement
    /* JADX INFO: renamed from: bindBlob */
    public void mo9361bindBlob(int i, byte[] bArr) {
        bArr.getClass();
        this.$$delegate_0.mo9361bindBlob(i, bArr);
    }

    @Override // androidx.sqlite.SQLiteStatement
    public void bindBoolean(int i, boolean z) {
        this.$$delegate_0.bindBoolean(i, z);
    }

    @Override // androidx.sqlite.SQLiteStatement
    /* JADX INFO: renamed from: bindDouble */
    public void mo9362bindDouble(int i, double d) {
        this.$$delegate_0.mo9362bindDouble(i, d);
    }

    @Override // androidx.sqlite.SQLiteStatement
    public void bindFloat(int i, float f) {
        this.$$delegate_0.bindFloat(i, f);
    }

    @Override // androidx.sqlite.SQLiteStatement
    public void bindInt(int i, int i2) {
        this.$$delegate_0.bindInt(i, i2);
    }

    @Override // androidx.sqlite.SQLiteStatement
    /* JADX INFO: renamed from: bindLong */
    public void mo9363bindLong(int i, long j) {
        this.$$delegate_0.mo9363bindLong(i, j);
    }

    @Override // androidx.sqlite.SQLiteStatement
    /* JADX INFO: renamed from: bindNull */
    public void mo9364bindNull(int i) {
        this.$$delegate_0.mo9364bindNull(i);
    }

    @Override // androidx.sqlite.SQLiteStatement
    /* JADX INFO: renamed from: bindText */
    public void mo9365bindText(int i, String str) {
        str.getClass();
        this.$$delegate_0.mo9365bindText(i, str);
    }

    @Override // androidx.sqlite.SQLiteStatement
    /* JADX INFO: renamed from: clearBindings */
    public void mo9366clearBindings() {
        this.$$delegate_0.mo9366clearBindings();
    }

    @Override // androidx.sqlite.SQLiteStatement, java.lang.AutoCloseable
    public void close() {
        throw new IllegalStateException(ONLY_BIND_CALLS_ALLOWED_ERROR);
    }

    @Override // androidx.sqlite.SQLiteStatement
    public byte[] getBlob(int i) {
        throw new IllegalStateException(ONLY_BIND_CALLS_ALLOWED_ERROR);
    }

    @Override // androidx.sqlite.SQLiteStatement
    public boolean getBoolean(int i) {
        return this.$$delegate_0.getBoolean(i);
    }

    @Override // androidx.sqlite.SQLiteStatement
    public int getColumnCount() {
        throw new IllegalStateException(ONLY_BIND_CALLS_ALLOWED_ERROR);
    }

    @Override // androidx.sqlite.SQLiteStatement
    public String getColumnName(int i) {
        throw new IllegalStateException(ONLY_BIND_CALLS_ALLOWED_ERROR);
    }

    @Override // androidx.sqlite.SQLiteStatement
    public List<String> getColumnNames() {
        return this.$$delegate_0.getColumnNames();
    }

    @Override // androidx.sqlite.SQLiteStatement
    public int getColumnType(int i) {
        throw new IllegalStateException(ONLY_BIND_CALLS_ALLOWED_ERROR);
    }

    @Override // androidx.sqlite.SQLiteStatement
    public double getDouble(int i) {
        throw new IllegalStateException(ONLY_BIND_CALLS_ALLOWED_ERROR);
    }

    @Override // androidx.sqlite.SQLiteStatement
    public float getFloat(int i) {
        return this.$$delegate_0.getFloat(i);
    }

    @Override // androidx.sqlite.SQLiteStatement
    public int getInt(int i) {
        return this.$$delegate_0.getInt(i);
    }

    @Override // androidx.sqlite.SQLiteStatement
    public long getLong(int i) {
        throw new IllegalStateException(ONLY_BIND_CALLS_ALLOWED_ERROR);
    }

    @Override // androidx.sqlite.SQLiteStatement
    public String getText(int i) {
        throw new IllegalStateException(ONLY_BIND_CALLS_ALLOWED_ERROR);
    }

    @Override // androidx.sqlite.SQLiteStatement
    public boolean isNull(int i) {
        throw new IllegalStateException(ONLY_BIND_CALLS_ALLOWED_ERROR);
    }

    @Override // androidx.sqlite.SQLiteStatement
    public void reset() {
        throw new IllegalStateException(ONLY_BIND_CALLS_ALLOWED_ERROR);
    }

    @Override // androidx.sqlite.SQLiteStatement
    public boolean step() {
        throw new IllegalStateException(ONLY_BIND_CALLS_ALLOWED_ERROR);
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private Companion() {
        }
    }
}
