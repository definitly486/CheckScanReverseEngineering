package defpackage;

import androidx.compose.foundation.gestures.DragGestureDetectorKt;
import androidx.compose.foundation.gestures.ScrollableKt;
import androidx.compose.foundation.text.LegacyTextFieldState;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.PointerType;
import androidx.compose.ui.text.SaversKt;
import androidx.compose.ui.text.input.TextFieldValue;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.room.RoomRawQuery;
import androidx.room.util.SQLiteStatementUtil;
import androidx.sqlite.SQLiteConnection;
import androidx.sqlite.SQLiteStatement;
import androidx.work.Data;
import java.util.ArrayList;
import java.util.Map;
import yads.e91;
import yads.yg2;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class v71 implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ v71(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                SQLiteStatement sQLiteStatementPrepare = ((SQLiteConnection) obj).prepare("SELECT * FROM product_categories");
                try {
                    int columnIndexOrThrow = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, TtmlNode.ATTR_ID);
                    int columnIndexOrThrow2 = SQLiteStatementUtil.getColumnIndexOrThrow(sQLiteStatementPrepare, "name");
                    ArrayList arrayList = new ArrayList();
                    while (sQLiteStatementPrepare.step()) {
                        arrayList.add(new n81((int) sQLiteStatementPrepare.getLong(columnIndexOrThrow), sQLiteStatementPrepare.isNull(columnIndexOrThrow2) ? null : sQLiteStatementPrepare.getText(columnIndexOrThrow2)));
                        break;
                    }
                    return arrayList;
                } finally {
                    sQLiteStatementPrepare.close();
                }
            case 1:
                return Data.toString$lambda$7$lambda$6((Map.Entry) obj);
            case 2:
                return DragGestureDetectorKt.detectDragGesturesAfterLongPress$lambda$0((Offset) obj);
            case 3:
                nb6 nb6Var = (nb6) obj;
                nb6Var.getClass();
                return Integer.valueOf(nb6Var.g);
            case 4:
                return LegacyTextFieldState.onValueChangeOriginal$lambda$0((TextFieldValue) obj);
            case 5:
                return RoomRawQuery._init_$lambda$0((SQLiteStatement) obj);
            case 6:
                return SaversKt.AnnotationRangeSaver$lambda$1(obj);
            case 7:
                return Boolean.valueOf(ScrollableKt.CanDragCalculation$lambda$0((PointerType) obj));
            case 8:
                return Boolean.valueOf(e91.g(obj));
            default:
                return yg2.a((String) obj);
        }
    }
}
