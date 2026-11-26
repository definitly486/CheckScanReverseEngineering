package defpackage;

import androidx.collection.LongSparseArray;
import androidx.compose.material3.DateRangePickerDefaults;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.sqlite.SQLiteConnection;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class za2 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ za2(int i, Object obj, Object obj2) {
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
                return DateRangePickerDefaults.DateRangePickerHeadline_nZrIstQ$lambda$3$lambda$2((String) obj3, (String) obj2, (SemanticsPropertyReceiver) obj);
            default:
                ((ku6) obj3).k((SQLiteConnection) obj2, (LongSparseArray) obj);
                return j59.a;
        }
    }
}
