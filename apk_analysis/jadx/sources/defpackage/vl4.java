package defpackage;

import androidx.compose.foundation.lazy.grid.LazyGridIntervalContent;
import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.foundation.text.modifiers.TextAnnotatedStringNode;
import androidx.compose.runtime.saveable.MapSaverKt;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.room.RoomSQLiteQuery;
import androidx.sqlite.SQLiteStatement;
import androidx.transition.TransitionValues;
import java.util.List;
import yads.bt0;
import yads.it2;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class vl4 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ vl4(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return LazyGridIntervalContent.item$lambda$2(obj2, ((Integer) obj).intValue());
            case 1:
                return LegacyTextFieldState.onValueChange$lambda$0((LegacyTextFieldState) obj2, (TextFieldValue) obj);
            case 2:
                return MapSaverKt.mapSaver$lambda$1((nl3) obj2, (List) obj);
            case 3:
                return RoomSQLiteQuery.toRoomRawQuery$lambda$1((RoomSQLiteQuery) obj2, (SQLiteStatement) obj);
            case 4:
                return Boolean.valueOf(TextAnnotatedStringNode.applySemantics$lambda$0((TextAnnotatedStringNode) obj2, (List) obj));
            case 5:
                return bt0.c((xo9) obj2, obj);
            default:
                return it2.b((TransitionValues) obj2, (int[]) obj);
        }
    }
}
