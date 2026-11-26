package defpackage;

import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.sqlite.SQLiteConnection;
import androidx.work.impl.model.WorkTagDao_Impl;
import java.util.Collection;
import java.util.List;
import yads.cs1;
import yads.et1;
import yads.fg3;
import yads.gg3;
import yads.hd3;
import yads.hh1;
import yads.nh1;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class j48 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ j48(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return Boolean.valueOf(SnapshotStateList.retainAll$lambda$0((Collection) obj2, (List) obj));
            case 1:
                return WorkTagDao_Impl.getTagsForWorkSpecId$lambda$2("SELECT DISTINCT tag FROM worktag WHERE work_spec_id=?", (String) obj2, (SQLiteConnection) obj);
            case 2:
                return cs1.a((et1) obj2, ((Boolean) obj).booleanValue());
            case 3:
                return Boolean.valueOf(gg3.a((mm1) obj2, (fg3) obj));
            default:
                return hh1.a((nh1) obj2, (hd3) obj);
        }
    }
}
