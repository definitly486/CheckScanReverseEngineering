package defpackage;

import androidx.compose.ui.text.font.TypefaceRequest;
import androidx.compose.ui.text.font.TypefaceRequestCache;
import androidx.compose.ui.text.font.TypefaceResult;
import androidx.room.support.AutoClosingRoomOpenHelper;
import androidx.sqlite.db.SupportSQLiteDatabase;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class zx implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ zx(int i, Object obj, Object obj2) {
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
                return AutoClosingRoomOpenHelper.AutoClosingSupportSQLiteDatabase.execSQL$lambda$8((String) obj3, (Object[]) obj2, (SupportSQLiteDatabase) obj);
            default:
                return TypefaceRequestCache.runCached$lambda$1((TypefaceRequestCache) obj3, (TypefaceRequest) obj2, (TypefaceResult) obj);
        }
    }
}
