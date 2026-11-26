package defpackage;

import android.graphics.drawable.Drawable;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.runtime.saveable.Saver;
import androidx.room.DatabaseConfiguration;
import androidx.room.RoomDatabase;
import yads.hh1;
import yads.nh1;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class t17 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ t17(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return RememberSaveableKt.mutableStateSaver$lambda$0$1((Saver) obj2, (MutableState) obj);
            case 1:
                return RoomDatabase.createConnectionManager$lambda$2((RoomDatabase) obj2, (DatabaseConfiguration) obj);
            default:
                return hh1.a((nh1) obj2, (Drawable) obj);
        }
    }
}
