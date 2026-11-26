package androidx.work.impl.model;

import androidx.room.EntityInsertAdapter;
import androidx.room.RoomDatabase;
import androidx.room.util.DBUtil;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import androidx.work.Data;
import androidx.work.impl.model.WorkProgressDao_Impl;
import defpackage.bt3;
import defpackage.cl5;
import defpackage.j59;
import defpackage.jh2;
import defpackage.kx2;
import defpackage.ne4;
import defpackage.nl3;
import defpackage.ui5;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class WorkProgressDao_Impl implements WorkProgressDao {
    public static final Companion Companion = new Companion(null);
    private final RoomDatabase __db;
    private final EntityInsertAdapter<WorkProgress> __insertAdapterOfWorkProgress;

    public WorkProgressDao_Impl(RoomDatabase roomDatabase) {
        roomDatabase.getClass();
        this.__db = roomDatabase;
        this.__insertAdapterOfWorkProgress = new EntityInsertAdapter<WorkProgress>() { // from class: androidx.work.impl.model.WorkProgressDao_Impl.1
            @Override // androidx.room.EntityInsertAdapter
            public void bind(SQLiteStatement sQLiteStatement, WorkProgress workProgress) {
                sQLiteStatement.getClass();
                workProgress.getClass();
                sQLiteStatement.mo9365bindText(1, workProgress.getWorkSpecId());
                sQLiteStatement.mo9361bindBlob(2, Data.Companion.toByteArrayInternalV1(workProgress.getProgress()));
            }

            @Override // androidx.room.EntityInsertAdapter
            public String createQuery() {
                return "INSERT OR REPLACE INTO `WorkProgress` (`work_spec_id`,`progress`) VALUES (?,?)";
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 delete$lambda$2(String str, String str2, SQLiteConnection sQLiteConnection) {
        sQLiteConnection.getClass();
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            sQLiteStatementPrepare.mo9365bindText(1, str2);
            sQLiteStatementPrepare.step();
            return j59.a;
        } finally {
            sQLiteStatementPrepare.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 deleteAll$lambda$3(String str, SQLiteConnection sQLiteConnection) {
        sQLiteConnection.getClass();
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            sQLiteStatementPrepare.step();
            return j59.a;
        } finally {
            sQLiteStatementPrepare.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Data getProgressForWorkSpecId$lambda$1(String str, String str2, SQLiteConnection sQLiteConnection) {
        sQLiteConnection.getClass();
        SQLiteStatement sQLiteStatementPrepare = sQLiteConnection.prepare(str);
        try {
            sQLiteStatementPrepare.mo9365bindText(1, str2);
            Data dataFromByteArray = null;
            if (sQLiteStatementPrepare.step()) {
                byte[] blob = sQLiteStatementPrepare.isNull(0) ? null : sQLiteStatementPrepare.getBlob(0);
                if (blob != null) {
                    dataFromByteArray = Data.Companion.fromByteArray(blob);
                }
            }
            return dataFromByteArray;
        } finally {
            sQLiteStatementPrepare.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 insert$lambda$0(WorkProgressDao_Impl workProgressDao_Impl, WorkProgress workProgress, SQLiteConnection sQLiteConnection) {
        sQLiteConnection.getClass();
        workProgressDao_Impl.__insertAdapterOfWorkProgress.insert(sQLiteConnection, workProgress);
        return j59.a;
    }

    @Override // androidx.work.impl.model.WorkProgressDao
    public void delete(String str) {
        str.getClass();
        DBUtil.performBlocking(this.__db, false, true, new ui5(str, 2));
    }

    @Override // androidx.work.impl.model.WorkProgressDao
    public void deleteAll() {
        DBUtil.performBlocking(this.__db, false, true, new bt3(2));
    }

    @Override // androidx.work.impl.model.WorkProgressDao
    public Data getProgressForWorkSpecId(String str) {
        str.getClass();
        return (Data) DBUtil.performBlocking(this.__db, true, false, new cl5(str, 4));
    }

    @Override // androidx.work.impl.model.WorkProgressDao
    public void insert(final WorkProgress workProgress) {
        workProgress.getClass();
        DBUtil.performBlocking(this.__db, false, true, new nl3() { // from class: mk9
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return WorkProgressDao_Impl.insert$lambda$0(this.b, workProgress, (SQLiteConnection) obj);
            }
        });
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final List<ne4<?>> getRequiredConverters() {
            return kx2.b;
        }

        private Companion() {
        }
    }
}
