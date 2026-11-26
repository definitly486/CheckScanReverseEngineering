package defpackage;

import androidx.compose.material3.BottomSheetDefaults;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.sqlite.SQLiteConnection;
import androidx.work.impl.model.WorkTagDao_Impl;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class xs0 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ String c;

    public /* synthetic */ xs0(String str, int i) {
        this.b = i;
        this.c = str;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        String str = this.c;
        switch (i) {
            case 0:
                return BottomSheetDefaults.DragHandle_lgZ2HuY$lambda$1$lambda$0(str, (SemanticsPropertyReceiver) obj);
            default:
                return WorkTagDao_Impl.deleteByWorkSpecId$lambda$3("DELETE FROM worktag WHERE work_spec_id=?", str, (SQLiteConnection) obj);
        }
    }
}
