package androidx.room;

import androidx.room.util.SQLiteConnectionUtil;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import defpackage.aq5;
import defpackage.ar4;
import defpackage.j59;
import defpackage.kx2;
import defpackage.qn1;
import defpackage.u96;
import java.util.Collection;
import java.util.List;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes3.dex */
public abstract class EntityInsertAdapter<T> {
    public abstract void bind(SQLiteStatement sQLiteStatement, T t);

    public abstract String createQuery();

    public final void insert(SQLiteConnection sQLiteConnection, T[] tArr) throws Exception {
        sQLiteConnection.getClass();
        if (tArr == null) {
            return;
        }
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(createQuery());
        int i = 0;
        while (true) {
            try {
                if (!(i < tArr.length)) {
                    j59 j59Var = j59.a;
                    aq5.c(sQLiteStatementPrepare, null);
                    return;
                }
                int i2 = i + 1;
                try {
                    T t = tArr[i];
                    if (t != null) {
                        bind(sQLiteStatementPrepare, t);
                        sQLiteStatementPrepare.step();
                        sQLiteStatementPrepare.reset();
                    }
                    i = i2;
                } catch (ArrayIndexOutOfBoundsException e) {
                    throw new NoSuchElementException(e.getMessage());
                }
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    aq5.c(sQLiteStatementPrepare, th);
                    throw th2;
                }
            }
        }
    }

    public final long insertAndReturnId(SQLiteConnection sQLiteConnection, T t) throws Exception {
        sQLiteConnection.getClass();
        if (t == null) {
            return -1L;
        }
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(createQuery());
        try {
            bind(sQLiteStatementPrepare, t);
            sQLiteStatementPrepare.step();
            aq5.c(sQLiteStatementPrepare, null);
            return SQLiteConnectionUtil.getLastInsertedRowId(sQLiteConnection);
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                aq5.c(sQLiteStatementPrepare, th);
                throw th2;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final long[] insertAndReturnIdsArray(SQLiteConnection sQLiteConnection, Collection<? extends T> collection) throws Exception {
        long lastInsertedRowId;
        sQLiteConnection.getClass();
        if (collection == null) {
            return new long[0];
        }
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(createQuery());
        try {
            int size = collection.size();
            long[] jArr = new long[size];
            for (int i = 0; i < size; i++) {
                Object objQ = qn1.Q(i, collection);
                if (objQ != null) {
                    bind(sQLiteStatementPrepare, objQ);
                    sQLiteStatementPrepare.step();
                    sQLiteStatementPrepare.reset();
                    lastInsertedRowId = SQLiteConnectionUtil.getLastInsertedRowId(sQLiteConnection);
                } else {
                    lastInsertedRowId = -1;
                }
                jArr[i] = lastInsertedRowId;
            }
            aq5.c(sQLiteStatementPrepare, null);
            return jArr;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                aq5.c(sQLiteStatementPrepare, th);
                throw th2;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Long[] insertAndReturnIdsArrayBox(SQLiteConnection sQLiteConnection, Collection<? extends T> collection) throws Exception {
        long lastInsertedRowId;
        sQLiteConnection.getClass();
        if (collection == null) {
            return new Long[0];
        }
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(createQuery());
        try {
            int size = collection.size();
            Long[] lArr = new Long[size];
            for (int i = 0; i < size; i++) {
                Object objQ = qn1.Q(i, collection);
                if (objQ != null) {
                    bind(sQLiteStatementPrepare, objQ);
                    sQLiteStatementPrepare.step();
                    sQLiteStatementPrepare.reset();
                    lastInsertedRowId = SQLiteConnectionUtil.getLastInsertedRowId(sQLiteConnection);
                } else {
                    lastInsertedRowId = -1;
                }
                lArr[i] = Long.valueOf(lastInsertedRowId);
            }
            aq5.c(sQLiteStatementPrepare, null);
            return lArr;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                aq5.c(sQLiteStatementPrepare, th);
                throw th2;
            }
        }
    }

    public final List<Long> insertAndReturnIdsList(SQLiteConnection sQLiteConnection, Collection<? extends T> collection) throws Exception {
        sQLiteConnection.getClass();
        if (collection == null) {
            return kx2.b;
        }
        ar4 ar4VarE = u96.e();
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(createQuery());
        try {
            for (T t : collection) {
                if (t != null) {
                    bind(sQLiteStatementPrepare, t);
                    sQLiteStatementPrepare.step();
                    sQLiteStatementPrepare.reset();
                    ar4VarE.add(Long.valueOf(SQLiteConnectionUtil.getLastInsertedRowId(sQLiteConnection)));
                } else {
                    ar4VarE.add(-1L);
                }
            }
            j59 j59Var = j59.a;
            aq5.c(sQLiteStatementPrepare, null);
            return u96.d(ar4VarE);
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                aq5.c(sQLiteStatementPrepare, th);
                throw th2;
            }
        }
    }

    public final void insert(SQLiteConnection sQLiteConnection, T t) {
        sQLiteConnection.getClass();
        if (t == null) {
            return;
        }
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(createQuery());
        try {
            bind(sQLiteStatementPrepare, t);
            sQLiteStatementPrepare.step();
            aq5.c(sQLiteStatementPrepare, null);
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                aq5.c(sQLiteStatementPrepare, th);
                throw th2;
            }
        }
    }

    public final long[] insertAndReturnIdsArray(SQLiteConnection sQLiteConnection, T[] tArr) throws Exception {
        long lastInsertedRowId;
        sQLiteConnection.getClass();
        if (tArr == null) {
            return new long[0];
        }
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(createQuery());
        try {
            int length = tArr.length;
            long[] jArr = new long[length];
            for (int i = 0; i < length; i++) {
                T t = tArr[i];
                if (t != null) {
                    bind(sQLiteStatementPrepare, t);
                    sQLiteStatementPrepare.step();
                    sQLiteStatementPrepare.reset();
                    lastInsertedRowId = SQLiteConnectionUtil.getLastInsertedRowId(sQLiteConnection);
                } else {
                    lastInsertedRowId = -1;
                }
                jArr[i] = lastInsertedRowId;
            }
            aq5.c(sQLiteStatementPrepare, null);
            return jArr;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                aq5.c(sQLiteStatementPrepare, th);
                throw th2;
            }
        }
    }

    public final void insert(SQLiteConnection sQLiteConnection, Iterable<? extends T> iterable) throws Exception {
        sQLiteConnection.getClass();
        if (iterable == null) {
            return;
        }
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(createQuery());
        try {
            for (T t : iterable) {
                if (t != null) {
                    bind(sQLiteStatementPrepare, t);
                    sQLiteStatementPrepare.step();
                    sQLiteStatementPrepare.reset();
                }
            }
            j59 j59Var = j59.a;
            aq5.c(sQLiteStatementPrepare, null);
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                aq5.c(sQLiteStatementPrepare, th);
                throw th2;
            }
        }
    }

    public final Long[] insertAndReturnIdsArrayBox(SQLiteConnection sQLiteConnection, T[] tArr) throws Exception {
        long lastInsertedRowId;
        sQLiteConnection.getClass();
        if (tArr == null) {
            return new Long[0];
        }
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(createQuery());
        try {
            int length = tArr.length;
            Long[] lArr = new Long[length];
            for (int i = 0; i < length; i++) {
                T t = tArr[i];
                if (t != null) {
                    bind(sQLiteStatementPrepare, t);
                    sQLiteStatementPrepare.step();
                    sQLiteStatementPrepare.reset();
                    lastInsertedRowId = SQLiteConnectionUtil.getLastInsertedRowId(sQLiteConnection);
                } else {
                    lastInsertedRowId = -1;
                }
                lArr[i] = Long.valueOf(lastInsertedRowId);
            }
            aq5.c(sQLiteStatementPrepare, null);
            return lArr;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                aq5.c(sQLiteStatementPrepare, th);
                throw th2;
            }
        }
    }

    public final List<Long> insertAndReturnIdsList(SQLiteConnection sQLiteConnection, T[] tArr) throws Exception {
        sQLiteConnection.getClass();
        if (tArr == null) {
            return kx2.b;
        }
        ar4 ar4VarE = u96.e();
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(createQuery());
        try {
            for (T t : tArr) {
                if (t != null) {
                    bind(sQLiteStatementPrepare, t);
                    sQLiteStatementPrepare.step();
                    sQLiteStatementPrepare.reset();
                    ar4VarE.add(Long.valueOf(SQLiteConnectionUtil.getLastInsertedRowId(sQLiteConnection)));
                } else {
                    ar4VarE.add(-1L);
                }
            }
            j59 j59Var = j59.a;
            aq5.c(sQLiteStatementPrepare, null);
            return u96.d(ar4VarE);
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                aq5.c(sQLiteStatementPrepare, th);
                throw th2;
            }
        }
    }
}
