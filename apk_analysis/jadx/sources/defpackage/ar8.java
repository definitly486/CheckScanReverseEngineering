package defpackage;

import androidx.compose.material3.internal.TextFieldImplKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.sqlite.SQLiteConnection;
import androidx.work.impl.model.WorkSpecDao_Impl;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class ar8 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ String c;

    public /* synthetic */ ar8(String str, int i) {
        this.b = i;
        this.c = str;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        String str = this.c;
        switch (i) {
            case 0:
                return TextFieldImplKt.defaultErrorSemantics$lambda$22(str, (SemanticsPropertyReceiver) obj);
            default:
                return WorkSpecDao_Impl.getWorkSpecIdAndStatesForName$lambda$4("SELECT id, state FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)", str, (SQLiteConnection) obj);
        }
    }
}
