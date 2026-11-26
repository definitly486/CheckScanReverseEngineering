package defpackage;

import androidx.compose.material3.DatePickerKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.room.support.AutoClosingRoomOpenHelper;
import androidx.sqlite.db.SupportSQLiteDatabase;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class yx implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ String c;

    public /* synthetic */ yx(String str, int i) {
        this.b = i;
        this.c = str;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        String str = this.c;
        switch (i) {
            case 0:
                return AutoClosingRoomOpenHelper.AutoClosingSupportSQLiteDatabase.execSQL$lambda$7(str, (SupportSQLiteDatabase) obj);
            default:
                return DatePickerKt.Year$lambda$66$lambda$65(str, (SemanticsPropertyReceiver) obj);
        }
    }
}
