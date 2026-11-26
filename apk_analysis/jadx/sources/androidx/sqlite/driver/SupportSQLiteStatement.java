package androidx.sqlite.driver;

import android.database.Cursor;
import androidx.sqlite.SQLite;
import androidx.sqlite.SQLiteStatement;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.sqlite.db.SupportSQLiteProgram;
import androidx.sqlite.db.SupportSQLiteQuery;
import defpackage.aa4;
import defpackage.ah;
import defpackage.f2;
import defpackage.g03;
import defpackage.h03;
import defpackage.jh2;
import defpackage.me0;
import defpackage.ra8;
import defpackage.ta8;
import defpackage.ud;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import kotlin.KotlinNothingValueException;

/* JADX INFO: loaded from: classes3.dex */
public abstract class SupportSQLiteStatement implements SQLiteStatement {
    public static final Companion Companion = new Companion(null);
    private final SupportSQLiteDatabase db;
    private boolean isClosed;
    private final String sql;

    public static final class JournalModeSetStatement extends SupportSQLiteStatement implements SQLiteStatement {
        private final SupportSQLiteStatement delegate;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public JournalModeSetStatement(SupportSQLiteDatabase supportSQLiteDatabase, String str, SupportSQLiteStatement supportSQLiteStatement) {
            super(supportSQLiteDatabase, str, null);
            supportSQLiteDatabase.getClass();
            str.getClass();
            supportSQLiteStatement.getClass();
            this.delegate = supportSQLiteStatement;
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
            boolean zStep = this.delegate.step();
            if (ra8.v(getText(0), "wal", true)) {
                getDb().enableWriteAheadLogging();
                return zStep;
            }
            getDb().disableWriteAheadLogging();
            return zStep;
        }
    }

    public static final class OtherSQLiteStatement extends SupportSQLiteStatement {
        private final androidx.sqlite.db.SupportSQLiteStatement delegate;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OtherSQLiteStatement(SupportSQLiteDatabase supportSQLiteDatabase, String str) {
            super(supportSQLiteDatabase, str, null);
            supportSQLiteDatabase.getClass();
            str.getClass();
            this.delegate = supportSQLiteDatabase.compileStatement(str);
        }

        @Override // androidx.sqlite.SQLiteStatement
        /* JADX INFO: renamed from: bindBlob */
        public void mo9361bindBlob(int i, byte[] bArr) {
            bArr.getClass();
            throwIfClosed();
            this.delegate.bindBlob(i, bArr);
        }

        @Override // androidx.sqlite.SQLiteStatement
        /* JADX INFO: renamed from: bindDouble */
        public void mo9362bindDouble(int i, double d) {
            throwIfClosed();
            this.delegate.bindDouble(i, d);
        }

        @Override // androidx.sqlite.SQLiteStatement
        /* JADX INFO: renamed from: bindLong */
        public void mo9363bindLong(int i, long j) {
            throwIfClosed();
            this.delegate.bindLong(i, j);
        }

        @Override // androidx.sqlite.SQLiteStatement
        /* JADX INFO: renamed from: bindNull */
        public void mo9364bindNull(int i) {
            throwIfClosed();
            this.delegate.bindNull(i);
        }

        @Override // androidx.sqlite.SQLiteStatement
        /* JADX INFO: renamed from: bindText */
        public void mo9365bindText(int i, String str) {
            str.getClass();
            throwIfClosed();
            this.delegate.bindString(i, str);
        }

        @Override // androidx.sqlite.SQLiteStatement
        /* JADX INFO: renamed from: clearBindings */
        public void mo9366clearBindings() {
            throwIfClosed();
            this.delegate.clearBindings();
        }

        @Override // androidx.sqlite.SQLiteStatement, java.lang.AutoCloseable
        public void close() throws IOException {
            this.delegate.close();
            setClosed(true);
        }

        @Override // androidx.sqlite.SQLiteStatement
        public byte[] getBlob(int i) {
            throwIfClosed();
            SQLite.throwSQLiteException(21, "no row");
            throw new KotlinNothingValueException();
        }

        @Override // androidx.sqlite.SQLiteStatement
        public int getColumnCount() {
            throwIfClosed();
            return 0;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public String getColumnName(int i) {
            throwIfClosed();
            SQLite.throwSQLiteException(21, "no row");
            throw new KotlinNothingValueException();
        }

        @Override // androidx.sqlite.SQLiteStatement
        public int getColumnType(int i) {
            throwIfClosed();
            SQLite.throwSQLiteException(21, "no row");
            throw new KotlinNothingValueException();
        }

        @Override // androidx.sqlite.SQLiteStatement
        public double getDouble(int i) {
            throwIfClosed();
            SQLite.throwSQLiteException(21, "no row");
            throw new KotlinNothingValueException();
        }

        @Override // androidx.sqlite.SQLiteStatement
        public long getLong(int i) {
            throwIfClosed();
            SQLite.throwSQLiteException(21, "no row");
            throw new KotlinNothingValueException();
        }

        @Override // androidx.sqlite.SQLiteStatement
        public String getText(int i) {
            throwIfClosed();
            SQLite.throwSQLiteException(21, "no row");
            throw new KotlinNothingValueException();
        }

        @Override // androidx.sqlite.SQLiteStatement
        public boolean isNull(int i) {
            throwIfClosed();
            SQLite.throwSQLiteException(21, "no row");
            throw new KotlinNothingValueException();
        }

        @Override // androidx.sqlite.SQLiteStatement
        public void reset() {
            throwIfClosed();
        }

        @Override // androidx.sqlite.SQLiteStatement
        public boolean step() {
            throwIfClosed();
            this.delegate.execute();
            return false;
        }
    }

    public static final class TransactionSQLiteStatement extends SupportSQLiteStatement {
        private final Companion.TransactionOperation operation;

        public static final /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[Companion.TransactionOperation.values().length];
                try {
                    iArr[Companion.TransactionOperation.END.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[Companion.TransactionOperation.ROLLBACK.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[Companion.TransactionOperation.BEGIN_EXCLUSIVE.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[Companion.TransactionOperation.BEGIN_IMMEDIATE.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                try {
                    iArr[Companion.TransactionOperation.BEGIN_DEFERRED.ordinal()] = 5;
                } catch (NoSuchFieldError unused5) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public TransactionSQLiteStatement(SupportSQLiteDatabase supportSQLiteDatabase, String str, Companion.TransactionOperation transactionOperation) {
            super(supportSQLiteDatabase, str, null);
            supportSQLiteDatabase.getClass();
            str.getClass();
            transactionOperation.getClass();
            this.operation = transactionOperation;
        }

        @Override // androidx.sqlite.SQLiteStatement
        /* JADX INFO: renamed from: bindBlob */
        public void mo9361bindBlob(int i, byte[] bArr) {
            bArr.getClass();
            throwIfClosed();
            SQLite.throwSQLiteException(25, "column index out of range");
            throw new KotlinNothingValueException();
        }

        @Override // androidx.sqlite.SQLiteStatement
        /* JADX INFO: renamed from: bindDouble */
        public void mo9362bindDouble(int i, double d) {
            throwIfClosed();
            SQLite.throwSQLiteException(25, "column index out of range");
            throw new KotlinNothingValueException();
        }

        @Override // androidx.sqlite.SQLiteStatement
        /* JADX INFO: renamed from: bindLong */
        public void mo9363bindLong(int i, long j) {
            throwIfClosed();
            SQLite.throwSQLiteException(25, "column index out of range");
            throw new KotlinNothingValueException();
        }

        @Override // androidx.sqlite.SQLiteStatement
        /* JADX INFO: renamed from: bindNull */
        public void mo9364bindNull(int i) {
            throwIfClosed();
            SQLite.throwSQLiteException(25, "column index out of range");
            throw new KotlinNothingValueException();
        }

        @Override // androidx.sqlite.SQLiteStatement
        /* JADX INFO: renamed from: bindText */
        public void mo9365bindText(int i, String str) {
            str.getClass();
            throwIfClosed();
            SQLite.throwSQLiteException(25, "column index out of range");
            throw new KotlinNothingValueException();
        }

        @Override // androidx.sqlite.SQLiteStatement
        /* JADX INFO: renamed from: clearBindings */
        public void mo9366clearBindings() {
            throwIfClosed();
        }

        @Override // androidx.sqlite.SQLiteStatement, java.lang.AutoCloseable
        public void close() {
            setClosed(true);
        }

        @Override // androidx.sqlite.SQLiteStatement
        public byte[] getBlob(int i) {
            throwIfClosed();
            SQLite.throwSQLiteException(21, "no row");
            throw new KotlinNothingValueException();
        }

        @Override // androidx.sqlite.SQLiteStatement
        public int getColumnCount() {
            throwIfClosed();
            return 0;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public String getColumnName(int i) {
            throwIfClosed();
            SQLite.throwSQLiteException(21, "no row");
            throw new KotlinNothingValueException();
        }

        @Override // androidx.sqlite.SQLiteStatement
        public int getColumnType(int i) {
            throwIfClosed();
            SQLite.throwSQLiteException(21, "no row");
            throw new KotlinNothingValueException();
        }

        @Override // androidx.sqlite.SQLiteStatement
        public double getDouble(int i) {
            throwIfClosed();
            SQLite.throwSQLiteException(21, "no row");
            throw new KotlinNothingValueException();
        }

        @Override // androidx.sqlite.SQLiteStatement
        public long getLong(int i) {
            throwIfClosed();
            SQLite.throwSQLiteException(21, "no row");
            throw new KotlinNothingValueException();
        }

        public final Companion.TransactionOperation getOperation() {
            return this.operation;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public String getText(int i) {
            throwIfClosed();
            SQLite.throwSQLiteException(21, "no row");
            throw new KotlinNothingValueException();
        }

        @Override // androidx.sqlite.SQLiteStatement
        public boolean isNull(int i) {
            throwIfClosed();
            SQLite.throwSQLiteException(21, "no row");
            throw new KotlinNothingValueException();
        }

        @Override // androidx.sqlite.SQLiteStatement
        public void reset() {
            throwIfClosed();
        }

        @Override // androidx.sqlite.SQLiteStatement
        public boolean step() {
            int i = WhenMappings.$EnumSwitchMapping$0[this.operation.ordinal()];
            if (i == 1) {
                getDb().setTransactionSuccessful();
                getDb().endTransaction();
                return false;
            }
            if (i == 2) {
                getDb().endTransaction();
                return false;
            }
            if (i == 3) {
                getDb().beginTransaction();
                return false;
            }
            if (i == 4) {
                getDb().beginTransactionNonExclusive();
                return false;
            }
            if (i == 5) {
                getDb().beginTransactionReadOnly();
                return false;
            }
            me0.e();
            return false;
        }
    }

    private SupportSQLiteStatement(SupportSQLiteDatabase supportSQLiteDatabase, String str) {
        this.db = supportSQLiteDatabase;
        this.sql = str;
    }

    public final SupportSQLiteDatabase getDb() {
        return this.db;
    }

    public final String getSql() {
        return this.sql;
    }

    public final boolean isClosed() {
        return this.isClosed;
    }

    public final void setClosed(boolean z) {
        this.isClosed = z;
    }

    public final void throwIfClosed() {
        if (this.isClosed) {
            throw f2.d(21, "statement is closed");
        }
    }

    public static final class Companion {

        public enum TransactionOperation {
            END,
            ROLLBACK,
            BEGIN_EXCLUSIVE,
            BEGIN_IMMEDIATE,
            BEGIN_DEFERRED;

            private static final /* synthetic */ g03 $ENTRIES = h03.a(values());

            public static g03<TransactionOperation> getEntries() {
                return $ENTRIES;
            }
        }

        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private final SpecialOperation getSpecialOperation(String str, String str2) {
            if (!aa4.e(str, "PRA")) {
                return null;
            }
            String lowerCase = str2.toLowerCase(Locale.ROOT);
            lowerCase.getClass();
            if (ta8.D(ta8.a0(lowerCase, "journal_mode", ""), "=", false)) {
                return SpecialOperation.JournalModeOperation.INSTANCE;
            }
            return null;
        }

        private final int getStatementPrefixIndex(String str) {
            int i;
            int length = str.length() - 2;
            if (length < 0) {
                return -1;
            }
            int iJ = 0;
            while (iJ < length) {
                char cCharAt = str.charAt(iJ);
                if (aa4.f(cCharAt, 32) > 0) {
                    if (cCharAt == '-') {
                        if (str.charAt(iJ + 1) == '-') {
                            iJ = ta8.J('\n', iJ + 2, 4, str);
                            if (iJ < 0) {
                                return -1;
                            }
                        }
                    } else if (cCharAt == '/') {
                        int iJ2 = iJ + 1;
                        if (str.charAt(iJ2) == '*') {
                            do {
                                iJ2 = ta8.J('*', iJ2 + 1, 4, str);
                                if (iJ2 >= 0) {
                                    i = iJ2 + 1;
                                    if (i >= length) {
                                        break;
                                    }
                                } else {
                                    return -1;
                                }
                            } while (str.charAt(i) != '/');
                            iJ = iJ2 + 2;
                        }
                    }
                    return iJ;
                }
                iJ++;
            }
            return -1;
        }

        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
        private final TransactionOperation getTransactionOperation(String str, String str2) {
            switch (str.hashCode()) {
                case 65636:
                    if (!str.equals("BEG")) {
                        return null;
                    }
                    if (ta8.D(str2, "EXCLUSIVE", false)) {
                        return TransactionOperation.BEGIN_EXCLUSIVE;
                    }
                    return ta8.D(str2, "IMMEDIATE", false) ? TransactionOperation.BEGIN_IMMEDIATE : TransactionOperation.BEGIN_DEFERRED;
                case 66913:
                    if (!str.equals("COM")) {
                        return null;
                    }
                    break;
                case 68795:
                    if (!str.equals("END")) {
                        return null;
                    }
                    break;
                case 81327:
                    if (str.equals("ROL") && !ta8.D(str2, " TO ", false)) {
                        return TransactionOperation.ROLLBACK;
                    }
                    return null;
                default:
                    return null;
            }
            return TransactionOperation.END;
        }

        private final boolean isRowStatement(String str) {
            int iHashCode = str.hashCode();
            if (iHashCode == 79487) {
                return str.equals("PRA");
            }
            if (iHashCode != 81978) {
                return iHashCode == 85954 && str.equals("WIT");
            }
            return str.equals("SEL");
        }

        public final SupportSQLiteStatement create(SupportSQLiteDatabase supportSQLiteDatabase, String str) {
            supportSQLiteDatabase.getClass();
            str.getClass();
            String upperCase = ta8.f0(str).toString().toUpperCase(Locale.ROOT);
            upperCase.getClass();
            String statementPrefix$sqlite_framework = getStatementPrefix$sqlite_framework(upperCase);
            if (statementPrefix$sqlite_framework == null) {
                return new OtherSQLiteStatement(supportSQLiteDatabase, str);
            }
            TransactionOperation transactionOperation = getTransactionOperation(statementPrefix$sqlite_framework, upperCase);
            if (transactionOperation != null) {
                return new TransactionSQLiteStatement(supportSQLiteDatabase, str, transactionOperation);
            }
            if (getSpecialOperation(statementPrefix$sqlite_framework, upperCase) instanceof SpecialOperation.JournalModeOperation) {
                return new JournalModeSetStatement(supportSQLiteDatabase, str, new RowSQLiteStatement(supportSQLiteDatabase, str));
            }
            return isRowStatement(statementPrefix$sqlite_framework) ? new RowSQLiteStatement(supportSQLiteDatabase, str) : new OtherSQLiteStatement(supportSQLiteDatabase, str);
        }

        public final String getStatementPrefix$sqlite_framework(String str) {
            str.getClass();
            int statementPrefixIndex = getStatementPrefixIndex(str);
            if (statementPrefixIndex < 0 || statementPrefixIndex > str.length()) {
                return null;
            }
            return str.substring(statementPrefixIndex, Math.min(statementPrefixIndex + 3, str.length()));
        }

        public static abstract class SpecialOperation {

            public static final class JournalModeOperation extends SpecialOperation {
                public static final JournalModeOperation INSTANCE = new JournalModeOperation();

                private JournalModeOperation() {
                    super(null);
                }
            }

            public /* synthetic */ SpecialOperation(jh2 jh2Var) {
                this();
            }

            private SpecialOperation() {
            }
        }

        private Companion() {
        }
    }

    public static final class RowSQLiteStatement extends SupportSQLiteStatement {
        public static final Companion Companion = new Companion(null);
        private int[] bindingTypes;
        private byte[][] blobBindings;
        private Cursor cursor;
        private double[] doubleBindings;
        private long[] longBindings;
        private String[] stringBindings;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public RowSQLiteStatement(SupportSQLiteDatabase supportSQLiteDatabase, String str) {
            super(supportSQLiteDatabase, str, null);
            supportSQLiteDatabase.getClass();
            str.getClass();
            this.bindingTypes = new int[0];
            this.longBindings = new long[0];
            this.doubleBindings = new double[0];
            this.stringBindings = new String[0];
            this.blobBindings = new byte[0][];
        }

        private final void ensureCapacity(int i, int i2) {
            int i3 = i2 + 1;
            int[] iArr = this.bindingTypes;
            if (iArr.length < i3) {
                this.bindingTypes = Arrays.copyOf(iArr, i3);
            }
            if (i == 1) {
                long[] jArr = this.longBindings;
                if (jArr.length < i3) {
                    this.longBindings = Arrays.copyOf(jArr, i3);
                    return;
                }
                return;
            }
            if (i == 2) {
                double[] dArr = this.doubleBindings;
                if (dArr.length < i3) {
                    this.doubleBindings = Arrays.copyOf(dArr, i3);
                    return;
                }
                return;
            }
            if (i == 3) {
                String[] strArr = this.stringBindings;
                if (strArr.length < i3) {
                    this.stringBindings = (String[]) Arrays.copyOf(strArr, i3);
                    return;
                }
                return;
            }
            if (i != 4) {
                return;
            }
            byte[][] bArr = this.blobBindings;
            if (bArr.length < i3) {
                this.blobBindings = (byte[][]) Arrays.copyOf(bArr, i3);
            }
        }

        private final void ensureCursor() {
            if (this.cursor == null) {
                this.cursor = getDb().query(new SupportSQLiteQuery() { // from class: androidx.sqlite.driver.SupportSQLiteStatement$RowSQLiteStatement$ensureCursor$1
                    @Override // androidx.sqlite.db.SupportSQLiteQuery
                    public void bindTo(SupportSQLiteProgram supportSQLiteProgram) {
                        supportSQLiteProgram.getClass();
                        int length = this.this$0.bindingTypes.length;
                        for (int i = 1; i < length; i++) {
                            int i2 = this.this$0.bindingTypes[i];
                            if (i2 == 1) {
                                supportSQLiteProgram.bindLong(i, this.this$0.longBindings[i]);
                            } else if (i2 == 2) {
                                supportSQLiteProgram.bindDouble(i, this.this$0.doubleBindings[i]);
                            } else if (i2 == 3) {
                                String str = this.this$0.stringBindings[i];
                                str.getClass();
                                supportSQLiteProgram.bindString(i, str);
                            } else if (i2 == 4) {
                                byte[] bArr = this.this$0.blobBindings[i];
                                bArr.getClass();
                                supportSQLiteProgram.bindBlob(i, bArr);
                            } else if (i2 == 5) {
                                supportSQLiteProgram.bindNull(i);
                            }
                        }
                    }

                    @Override // androidx.sqlite.db.SupportSQLiteQuery
                    public int getArgCount() {
                        return this.this$0.bindingTypes.length;
                    }

                    @Override // androidx.sqlite.db.SupportSQLiteQuery
                    public String getSql() {
                        return this.this$0.getSql();
                    }
                });
            }
        }

        private final void throwIfInvalidColumn(Cursor cursor, int i) {
            if (i < 0 || i >= cursor.getColumnCount()) {
                throw f2.d(25, "column index out of range");
            }
        }

        private final Cursor throwIfNoRow() {
            Cursor cursor = this.cursor;
            if (cursor != null) {
                return cursor;
            }
            throw f2.d(21, "no row");
        }

        @Override // androidx.sqlite.SQLiteStatement
        /* JADX INFO: renamed from: bindBlob */
        public void mo9361bindBlob(int i, byte[] bArr) {
            bArr.getClass();
            throwIfClosed();
            ensureCapacity(4, i);
            this.bindingTypes[i] = 4;
            this.blobBindings[i] = bArr;
        }

        @Override // androidx.sqlite.SQLiteStatement
        /* JADX INFO: renamed from: bindDouble */
        public void mo9362bindDouble(int i, double d) {
            throwIfClosed();
            ensureCapacity(2, i);
            this.bindingTypes[i] = 2;
            this.doubleBindings[i] = d;
        }

        @Override // androidx.sqlite.SQLiteStatement
        /* JADX INFO: renamed from: bindLong */
        public void mo9363bindLong(int i, long j) {
            throwIfClosed();
            ensureCapacity(1, i);
            this.bindingTypes[i] = 1;
            this.longBindings[i] = j;
        }

        @Override // androidx.sqlite.SQLiteStatement
        /* JADX INFO: renamed from: bindNull */
        public void mo9364bindNull(int i) {
            throwIfClosed();
            ensureCapacity(5, i);
            this.bindingTypes[i] = 5;
        }

        @Override // androidx.sqlite.SQLiteStatement
        /* JADX INFO: renamed from: bindText */
        public void mo9365bindText(int i, String str) {
            str.getClass();
            throwIfClosed();
            ensureCapacity(3, i);
            this.bindingTypes[i] = 3;
            this.stringBindings[i] = str;
        }

        @Override // androidx.sqlite.SQLiteStatement
        /* JADX INFO: renamed from: clearBindings */
        public void mo9366clearBindings() {
            throwIfClosed();
            this.bindingTypes = new int[0];
            this.longBindings = new long[0];
            this.doubleBindings = new double[0];
            this.stringBindings = new String[0];
            this.blobBindings = new byte[0][];
        }

        @Override // androidx.sqlite.SQLiteStatement, java.lang.AutoCloseable
        public void close() {
            if (!isClosed()) {
                mo9366clearBindings();
                reset();
            }
            setClosed(true);
        }

        @Override // androidx.sqlite.SQLiteStatement
        public byte[] getBlob(int i) {
            throwIfClosed();
            Cursor cursorThrowIfNoRow = throwIfNoRow();
            throwIfInvalidColumn(cursorThrowIfNoRow, i);
            byte[] blob = cursorThrowIfNoRow.getBlob(i);
            blob.getClass();
            return blob;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public int getColumnCount() {
            throwIfClosed();
            ensureCursor();
            Cursor cursor = this.cursor;
            if (cursor != null) {
                return cursor.getColumnCount();
            }
            return 0;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public String getColumnName(int i) {
            throwIfClosed();
            ensureCursor();
            Cursor cursor = this.cursor;
            if (cursor == null) {
                ah.f("Required value was null.");
                return null;
            }
            throwIfInvalidColumn(cursor, i);
            String columnName = cursor.getColumnName(i);
            columnName.getClass();
            return columnName;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public int getColumnType(int i) {
            throwIfClosed();
            ensureCursor();
            Cursor cursor = this.cursor;
            if (cursor != null) {
                throwIfInvalidColumn(cursor, i);
                return Companion.getDataType(cursor, i);
            }
            ah.f("Required value was null.");
            return 0;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public double getDouble(int i) {
            throwIfClosed();
            Cursor cursorThrowIfNoRow = throwIfNoRow();
            throwIfInvalidColumn(cursorThrowIfNoRow, i);
            return cursorThrowIfNoRow.getDouble(i);
        }

        @Override // androidx.sqlite.SQLiteStatement
        public long getLong(int i) {
            throwIfClosed();
            Cursor cursorThrowIfNoRow = throwIfNoRow();
            throwIfInvalidColumn(cursorThrowIfNoRow, i);
            return cursorThrowIfNoRow.getLong(i);
        }

        @Override // androidx.sqlite.SQLiteStatement
        public String getText(int i) {
            throwIfClosed();
            Cursor cursorThrowIfNoRow = throwIfNoRow();
            throwIfInvalidColumn(cursorThrowIfNoRow, i);
            String string = cursorThrowIfNoRow.getString(i);
            string.getClass();
            return string;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public boolean isNull(int i) {
            throwIfClosed();
            Cursor cursorThrowIfNoRow = throwIfNoRow();
            throwIfInvalidColumn(cursorThrowIfNoRow, i);
            return cursorThrowIfNoRow.isNull(i);
        }

        @Override // androidx.sqlite.SQLiteStatement
        public void reset() {
            throwIfClosed();
            Cursor cursor = this.cursor;
            if (cursor != null) {
                cursor.close();
            }
            this.cursor = null;
        }

        @Override // androidx.sqlite.SQLiteStatement
        public boolean step() {
            throwIfClosed();
            ensureCursor();
            Cursor cursor = this.cursor;
            if (cursor != null) {
                return cursor.moveToNext();
            }
            ah.f("Required value was null.");
            return false;
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

    public /* synthetic */ SupportSQLiteStatement(SupportSQLiteDatabase supportSQLiteDatabase, String str, jh2 jh2Var) {
        this(supportSQLiteDatabase, str);
    }
}
