package defpackage;

import androidx.compose.material3.TooltipScopeImpl;
import androidx.compose.ui.draw.CacheDrawScope;
import androidx.sqlite.SQLiteConnection;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao_Impl;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class ux8 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ ux8(int i, Object obj, Object obj2) {
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
                return TooltipScopeImpl.drawCaret$lambda$0((bm3) obj3, (TooltipScopeImpl) obj2, (CacheDrawScope) obj);
            default:
                return WorkSpecDao_Impl.insertWorkSpec$lambda$0((WorkSpecDao_Impl) obj3, (WorkSpec) obj2, (SQLiteConnection) obj);
        }
    }
}
