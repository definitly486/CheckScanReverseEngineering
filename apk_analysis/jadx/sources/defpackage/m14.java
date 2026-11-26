package defpackage;

import androidx.compose.foundation.ImageKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.sqlite.SQLiteConnection;
import androidx.work.impl.model.WorkSpecDao_Impl;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class m14 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ String c;

    public /* synthetic */ m14(String str, int i) {
        this.b = i;
        this.c = str;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        String str = this.c;
        switch (i) {
            case 0:
                return ImageKt.Image$lambda$0$0(str, (SemanticsPropertyReceiver) obj);
            case 1:
                String str2 = (String) obj;
                str2.getClass();
                if (ta8.M(str2)) {
                    return str2.length() < str.length() ? str : str2;
                }
                return str.concat(str2);
            default:
                return WorkSpecDao_Impl.getState$lambda$7("SELECT state FROM workspec WHERE id=?", str, (SQLiteConnection) obj);
        }
    }
}
