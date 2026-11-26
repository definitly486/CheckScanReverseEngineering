package androidx.work.impl.model;

import androidx.sqlite.db.SupportSQLiteQuery;
import androidx.work.WorkInfo;
import defpackage.hd3;
import defpackage.r22;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class RawWorkInfoDaoKt {
    public static final hd3<List<WorkInfo>> getWorkInfoPojosFlow(RawWorkInfoDao rawWorkInfoDao, r22 r22Var, SupportSQLiteQuery supportSQLiteQuery) {
        rawWorkInfoDao.getClass();
        r22Var.getClass();
        supportSQLiteQuery.getClass();
        return WorkSpecDaoKt.dedup(rawWorkInfoDao.getWorkInfoPojosFlow(supportSQLiteQuery), r22Var);
    }
}
