package defpackage;

import androidx.compose.foundation.text.ClickableTextKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.sqlite.SQLiteConnection;
import androidx.work.impl.model.WorkName;
import androidx.work.impl.model.WorkNameDao_Impl;
import yads.b76;
import yads.u66;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ol1 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ ol1(int i, Object obj, Object obj2) {
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
                return ClickableTextKt.ClickableText_4YKlhWE$lambda$3$0((MutableState) obj3, (nl3) obj2, (TextLayoutResult) obj);
            case 1:
                return WorkNameDao_Impl.insert$lambda$0((WorkNameDao_Impl) obj3, (WorkName) obj2, (SQLiteConnection) obj);
            default:
                return b76.a((b76) obj3, (nl3) obj2, (u66) obj);
        }
    }
}
