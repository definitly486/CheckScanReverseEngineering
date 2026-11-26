package defpackage;

import androidx.compose.foundation.text.selection.SelectionManager;
import androidx.compose.material3.SliderKt;
import androidx.compose.material3.SliderRange;
import androidx.paging.AsyncPagedListDiffer;
import androidx.sqlite.SQLiteConnection;
import androidx.work.impl.model.SystemIdInfoDao_Impl;
import yads.c62;
import yads.m62;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class us implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ us(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return Boolean.valueOf(AsyncPagedListDiffer.removePagedListListener$lambda$0((bm3) obj2, (AsyncPagedListDiffer.PagedListListener) obj));
            case 1:
                return SelectionManager._init_$lambda$0((SelectionManager) obj2, ((Long) obj).longValue());
            case 2:
                return SliderKt.RangeSlider$lambda$18$lambda$17((nl3) obj2, (SliderRange) obj);
            case 3:
                return SystemIdInfoDao_Impl.removeSystemIdInfo$lambda$4("DELETE FROM SystemIdInfo where work_spec_id=?", (String) obj2, (SQLiteConnection) obj);
            default:
                return c62.a((m62) obj2, ((Integer) obj).intValue());
        }
    }
}
