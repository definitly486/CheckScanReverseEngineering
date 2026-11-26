package androidx.room;

import androidx.sqlite.db.SupportSQLiteStatement;
import defpackage.cl4;
import defpackage.fh8;
import defpackage.jg0;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes3.dex */
public abstract class SharedSQLiteStatement {
    private final RoomDatabase database;
    private final AtomicBoolean lock;
    private final cl4 stmt$delegate;

    public SharedSQLiteStatement(RoomDatabase roomDatabase) {
        roomDatabase.getClass();
        this.database = roomDatabase;
        this.lock = new AtomicBoolean(false);
        this.stmt$delegate = new fh8(new jg0(this, 4));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final SupportSQLiteStatement createNewStatement() {
        return this.database.compileStatement(createQuery());
    }

    private final SupportSQLiteStatement getStmt(boolean z) {
        return z ? getStmt() : createNewStatement();
    }

    public SupportSQLiteStatement acquire() {
        assertNotMainThread();
        return getStmt(this.lock.compareAndSet(false, true));
    }

    public void assertNotMainThread() {
        this.database.assertNotMainThread();
    }

    public abstract String createQuery();

    public void release(SupportSQLiteStatement supportSQLiteStatement) {
        supportSQLiteStatement.getClass();
        if (supportSQLiteStatement == getStmt()) {
            this.lock.set(false);
        }
    }

    private final SupportSQLiteStatement getStmt() {
        return (SupportSQLiteStatement) this.stmt$delegate.getValue();
    }
}
