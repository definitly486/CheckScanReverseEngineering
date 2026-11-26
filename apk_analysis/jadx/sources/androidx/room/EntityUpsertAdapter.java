package androidx.room;

import android.database.SQLException;
import androidx.sqlite.SQLiteConnection;
import defpackage.ar4;
import defpackage.jh2;
import defpackage.kx2;
import defpackage.qn1;
import defpackage.ta8;
import defpackage.u96;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class EntityUpsertAdapter<T> {
    public static final Companion Companion = new Companion(null);
    private static final String ErrorMsg = "unique";
    private static final String SQLITE_CONSTRAINT_PRIMARYKEY = "1555";
    private static final String SQLITE_CONSTRAINT_UNIQUE = "2067";
    private final EntityInsertAdapter<T> entityInsertAdapter;
    private final EntityDeleteOrUpdateAdapter<T> updateAdapter;

    public EntityUpsertAdapter(EntityInsertAdapter<T> entityInsertAdapter, EntityDeleteOrUpdateAdapter<T> entityDeleteOrUpdateAdapter) {
        entityInsertAdapter.getClass();
        entityDeleteOrUpdateAdapter.getClass();
        this.entityInsertAdapter = entityInsertAdapter;
        this.updateAdapter = entityDeleteOrUpdateAdapter;
    }

    private final void checkUniquenessException(SQLException sQLException) {
        String message = sQLException.getMessage();
        if (message == null) {
            throw sQLException;
        }
        if (!ta8.D(message, ErrorMsg, true) && !ta8.D(message, SQLITE_CONSTRAINT_UNIQUE, false) && !ta8.D(message, SQLITE_CONSTRAINT_PRIMARYKEY, false)) {
            throw sQLException;
        }
    }

    public final void upsert(SQLiteConnection sQLiteConnection, Iterable<? extends T> iterable) {
        sQLiteConnection.getClass();
        if (iterable == null) {
            return;
        }
        for (T t : iterable) {
            try {
                this.entityInsertAdapter.insert(sQLiteConnection, t);
            } catch (SQLException e) {
                checkUniquenessException(e);
                this.updateAdapter.handle(sQLiteConnection, t);
            }
        }
    }

    public final long upsertAndReturnId(SQLiteConnection sQLiteConnection, T t) {
        sQLiteConnection.getClass();
        try {
            return this.entityInsertAdapter.insertAndReturnId(sQLiteConnection, t);
        } catch (SQLException e) {
            checkUniquenessException(e);
            this.updateAdapter.handle(sQLiteConnection, t);
            return -1L;
        }
    }

    public final long[] upsertAndReturnIdsArray(SQLiteConnection sQLiteConnection, Collection<? extends T> collection) throws Exception {
        long jInsertAndReturnId;
        sQLiteConnection.getClass();
        if (collection == null) {
            return new long[0];
        }
        int size = collection.size();
        long[] jArr = new long[size];
        for (int i = 0; i < size; i++) {
            try {
                jInsertAndReturnId = this.entityInsertAdapter.insertAndReturnId(sQLiteConnection, (T) qn1.Q(i, collection));
            } catch (SQLException e) {
                checkUniquenessException(e);
                this.updateAdapter.handle(sQLiteConnection, (T) qn1.Q(i, collection));
                jInsertAndReturnId = -1;
            }
            jArr[i] = jInsertAndReturnId;
        }
        return jArr;
    }

    public final Long[] upsertAndReturnIdsArrayBox(SQLiteConnection sQLiteConnection, Collection<? extends T> collection) throws Exception {
        long jInsertAndReturnId;
        sQLiteConnection.getClass();
        if (collection == null) {
            return new Long[0];
        }
        int size = collection.size();
        Long[] lArr = new Long[size];
        for (int i = 0; i < size; i++) {
            try {
                jInsertAndReturnId = this.entityInsertAdapter.insertAndReturnId(sQLiteConnection, (T) qn1.Q(i, collection));
            } catch (SQLException e) {
                checkUniquenessException(e);
                this.updateAdapter.handle(sQLiteConnection, (T) qn1.Q(i, collection));
                jInsertAndReturnId = -1;
            }
            lArr[i] = Long.valueOf(jInsertAndReturnId);
        }
        return lArr;
    }

    public final List<Long> upsertAndReturnIdsList(SQLiteConnection sQLiteConnection, Collection<? extends T> collection) {
        sQLiteConnection.getClass();
        if (collection == null) {
            return kx2.b;
        }
        ar4 ar4VarE = u96.e();
        for (T t : collection) {
            try {
                ar4VarE.add(Long.valueOf(this.entityInsertAdapter.insertAndReturnId(sQLiteConnection, t)));
            } catch (SQLException e) {
                checkUniquenessException(e);
                this.updateAdapter.handle(sQLiteConnection, t);
                ar4VarE.add(-1L);
            }
        }
        return u96.d(ar4VarE);
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private Companion() {
        }
    }

    public final void upsert(SQLiteConnection sQLiteConnection, T[] tArr) {
        sQLiteConnection.getClass();
        if (tArr == null) {
            return;
        }
        for (T t : tArr) {
            try {
                this.entityInsertAdapter.insert(sQLiteConnection, t);
            } catch (SQLException e) {
                checkUniquenessException(e);
                this.updateAdapter.handle(sQLiteConnection, t);
            }
        }
    }

    public final void upsert(SQLiteConnection sQLiteConnection, T t) {
        sQLiteConnection.getClass();
        try {
            this.entityInsertAdapter.insert(sQLiteConnection, t);
        } catch (SQLException e) {
            checkUniquenessException(e);
            this.updateAdapter.handle(sQLiteConnection, t);
        }
    }

    public final long[] upsertAndReturnIdsArray(SQLiteConnection sQLiteConnection, T[] tArr) throws Exception {
        long jInsertAndReturnId;
        sQLiteConnection.getClass();
        if (tArr == null) {
            return new long[0];
        }
        int length = tArr.length;
        long[] jArr = new long[length];
        for (int i = 0; i < length; i++) {
            try {
                jInsertAndReturnId = this.entityInsertAdapter.insertAndReturnId(sQLiteConnection, tArr[i]);
            } catch (SQLException e) {
                checkUniquenessException(e);
                this.updateAdapter.handle(sQLiteConnection, tArr[i]);
                jInsertAndReturnId = -1;
            }
            jArr[i] = jInsertAndReturnId;
        }
        return jArr;
    }

    public final Long[] upsertAndReturnIdsArrayBox(SQLiteConnection sQLiteConnection, T[] tArr) throws Exception {
        long jInsertAndReturnId;
        sQLiteConnection.getClass();
        if (tArr == null) {
            return new Long[0];
        }
        int length = tArr.length;
        Long[] lArr = new Long[length];
        for (int i = 0; i < length; i++) {
            try {
                jInsertAndReturnId = this.entityInsertAdapter.insertAndReturnId(sQLiteConnection, tArr[i]);
            } catch (SQLException e) {
                checkUniquenessException(e);
                this.updateAdapter.handle(sQLiteConnection, tArr[i]);
                jInsertAndReturnId = -1;
            }
            lArr[i] = Long.valueOf(jInsertAndReturnId);
        }
        return lArr;
    }

    public final List<Long> upsertAndReturnIdsList(SQLiteConnection sQLiteConnection, T[] tArr) {
        sQLiteConnection.getClass();
        if (tArr == null) {
            return kx2.b;
        }
        ar4 ar4VarE = u96.e();
        for (T t : tArr) {
            try {
                ar4VarE.add(Long.valueOf(this.entityInsertAdapter.insertAndReturnId(sQLiteConnection, t)));
            } catch (SQLException e) {
                checkUniquenessException(e);
                this.updateAdapter.handle(sQLiteConnection, t);
                ar4VarE.add(-1L);
            }
        }
        return u96.d(ar4VarE);
    }
}
