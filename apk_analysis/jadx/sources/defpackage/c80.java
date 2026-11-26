package defpackage;

import androidx.compose.material3.DatePickerKt;
import androidx.compose.material3.DefaultModalWideNavigationRailOverride;
import androidx.sqlite.db.framework.FrameworkSQLiteDatabase;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class c80 implements ll3 {
    public final /* synthetic */ int b;

    public /* synthetic */ c80(int i) {
        this.b = i;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        switch (this.b) {
            case 0:
                return l91.a(0, null, null, 7);
            case 1:
                return DatePickerKt.DatePickerContent$lambda$25$lambda$24();
            case 2:
                return FrameworkSQLiteDatabase.beginTransactionMethod_delegate$lambda$8();
            default:
                return DefaultModalWideNavigationRailOverride.INSTANCE;
        }
    }
}
