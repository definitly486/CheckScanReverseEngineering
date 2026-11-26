package defpackage;

import android.os.Parcel;
import androidx.compose.runtime.snapshots.SnapshotStateList$Companion$CREATOR$1;
import androidx.sqlite.SQLiteConnection;
import com.tapjoy.TJKeyValueStorageKt;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class u71 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ u71(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) throws Exception {
        int i = this.b;
        Object obj2 = this.d;
        Object obj3 = this.c;
        switch (i) {
            case 0:
                w71 w71Var = ((x71) obj3).b;
                w71Var.insert((SQLiteConnection) obj, (Iterable) obj2);
                return null;
            case 1:
                al1 al1Var = (al1) obj;
                al1Var.getClass();
                al1Var.a(TJKeyValueStorageKt.KEY, ((df4) obj3).getDescriptor());
                al1Var.a("value", ((df4) obj2).getDescriptor());
                return j59.a;
            default:
                return SnapshotStateList$Companion$CREATOR$1.createFromParcel$lambda$0((Parcel) obj3, (ClassLoader) obj2, ((Integer) obj).intValue());
        }
    }
}
