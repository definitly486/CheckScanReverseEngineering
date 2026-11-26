package defpackage;

import androidx.compose.material3.IndicatorLineNode;
import androidx.compose.material3.TimePickerKt;
import androidx.compose.ui.draw.CacheDrawScope;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.sqlite.SQLiteConnection;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.model.WorkSpecDao_Impl;
import androidx.work.impl.utils.StatusRunnable;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class p88 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ p88(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return StatusRunnable.forUniqueWork$lambda$3((String) obj2, (WorkDatabase) obj);
            case 1:
                return TimePickerKt.TimeSelector_SAnMeKU$lambda$56$lambda$55((String) obj2, (SemanticsPropertyReceiver) obj);
            case 2:
                return WorkSpecDao_Impl.getUnfinishedWorkWithName$lambda$20("SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM workname WHERE name=?)", (String) obj2, (SQLiteConnection) obj);
            default:
                return IndicatorLineNode.drawWithCacheModifierNode$lambda$3((IndicatorLineNode) obj2, (CacheDrawScope) obj);
        }
    }
}
