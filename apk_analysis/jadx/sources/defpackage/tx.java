package defpackage;

import android.os.Bundle;
import androidx.compose.foundation.text.contextmenu.provider.BasicTextContextMenuProviderKt;
import androidx.compose.material3.RangeSliderState;
import androidx.compose.material3.SliderKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.unit.IntSize;
import androidx.navigation.NavDeepLink;
import androidx.room.support.AutoClosingRoomOpenHelper;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.db.SupportSQLiteDatabase;
import androidx.work.impl.model.WorkNameDao_Impl;
import java.util.Locale;
import yads.q74;
import yads.x44;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class tx implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ tx(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return AutoClosingRoomOpenHelper.AutoClosingSupportSQLiteDatabase.setLocale$lambda$10((Locale) obj2, (SupportSQLiteDatabase) obj);
            case 1:
                return BasicTextContextMenuProviderKt.ProvideBasicTextContextMenu$lambda$4$0$0((MutableState) obj2, (LayoutCoordinates) obj);
            case 2:
                ((vn2) obj2).m = true;
                return j59.a;
            case 3:
                return Boolean.valueOf(NavDeepLink.getMatchingArguments$lambda$13((Bundle) obj2, (String) obj));
            case 4:
                return SliderKt.RangeSliderImpl$lambda$44$lambda$39$lambda$38((RangeSliderState) obj2, (IntSize) obj);
            case 5:
                return WorkNameDao_Impl.getNamesForWorkSpecId$lambda$2("SELECT name FROM workname WHERE work_spec_id=?", (String) obj2, (SQLiteConnection) obj);
            default:
                return x44.a((x44) obj2, (q74) obj);
        }
    }
}
