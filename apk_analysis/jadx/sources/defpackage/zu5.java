package defpackage;

import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.ui.platform.InspectorInfo;
import androidx.room.RoomRawQuery;
import androidx.sqlite.SQLiteStatement;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class zu5 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ nl3 c;

    public /* synthetic */ zu5(nl3 nl3Var, int i) {
        this.b = i;
        this.c = nl3Var;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        nl3 nl3Var = this.c;
        switch (i) {
            case 0:
                return OffsetKt.offset$lambda$0(nl3Var, (InspectorInfo) obj);
            default:
                return RoomRawQuery.bindingFunction$lambda$1(nl3Var, (SQLiteStatement) obj);
        }
    }
}
