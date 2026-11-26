package defpackage;

import androidx.compose.material3.internal.TextFieldImplKt;
import androidx.compose.ui.draw.CacheDrawScope;
import androidx.compose.ui.graphics.ColorProducer;
import androidx.compose.ui.graphics.Shape;
import androidx.sqlite.SQLiteConnection;
import androidx.work.Data;
import androidx.work.impl.model.WorkSpecDao_Impl;
import com.tapjoy.TJAdUnitJSBridge;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class qh8 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ qh8(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.d;
        Object obj3 = this.c;
        switch (i) {
            case 0:
                return ((TJAdUnitJSBridge) obj3).a((String) obj2, (Boolean) obj);
            case 1:
                return TextFieldImplKt.textFieldBackground$lambda$24((Shape) obj3, (ColorProducer) obj2, (CacheDrawScope) obj);
            default:
                return WorkSpecDao_Impl.setOutput$lambda$41("UPDATE workspec SET output=? WHERE id=?", (Data) obj3, (String) obj2, (SQLiteConnection) obj);
        }
    }
}
