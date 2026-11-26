package defpackage;

import androidx.compose.foundation.text.TextFieldKeyInput;
import androidx.compose.foundation.text.selection.TextFieldPreparedSelection;
import androidx.compose.ui.text.SaversKt;
import androidx.sqlite.SQLiteConnection;
import androidx.work.impl.model.WorkSpecDao_Impl;
import yads.a92;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class qc7 implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ qc7(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return SaversKt.LinkSaver$lambda$1(obj);
            case 1:
                return TextFieldKeyInput.process_ZmokQxo$lambda$1$7((TextFieldPreparedSelection) obj);
            case 2:
                return WorkSpecDao_Impl.getAllWorkSpecIds$lambda$5("SELECT id FROM workspec", (SQLiteConnection) obj);
            default:
                return Boolean.valueOf(a92.b(obj));
        }
    }
}
