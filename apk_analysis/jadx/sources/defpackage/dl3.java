package defpackage;

import androidx.compose.material3.DefaultWideNavigationRailOverride;
import androidx.compose.material3.TypographyKt;
import androidx.sqlite.db.framework.FrameworkSQLiteDatabase;
import yads.jk1;
import yads.l74;
import yads.sc;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class dl3 implements ll3 {
    public final /* synthetic */ int b;

    public /* synthetic */ dl3(int i) {
        this.b = i;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        switch (this.b) {
            case 0:
                return FrameworkSQLiteDatabase.getThreadSessionMethod_delegate$lambda$7();
            case 1:
                return TypographyKt.LocalTypography$lambda$0();
            case 2:
                return DefaultWideNavigationRailOverride.INSTANCE;
            case 3:
                return jk1.b();
            case 4:
                return l74.c();
            default:
                return sc.a();
        }
    }
}
