package defpackage;

import android.view.View;
import androidx.compose.material3.ExposedDropdownMenu_androidKt;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.sqlite.SQLiteConnection;
import androidx.work.impl.model.WorkTag;
import androidx.work.impl.model.WorkTagDao_Impl;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class r43 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ r43(int i, Object obj, Object obj2) {
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
                return ExposedDropdownMenu_androidKt.SoftKeyboardListener$lambda$5$lambda$4((View) obj3, (ll3) obj2, (DisposableEffectScope) obj);
            default:
                return WorkTagDao_Impl.insert$lambda$0((WorkTagDao_Impl) obj3, (WorkTag) obj2, (SQLiteConnection) obj);
        }
    }
}
