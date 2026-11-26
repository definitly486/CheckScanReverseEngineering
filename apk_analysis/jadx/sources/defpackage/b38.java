package defpackage;

import androidx.compose.foundation.text.contextmenu.provider.BasicTextContextMenuProvider;
import androidx.compose.foundation.text.contextmenu.provider.BasicTextContextMenuProviderKt;
import androidx.compose.material3.SliderKt;
import androidx.compose.runtime.DisposableEffectScope;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.sqlite.SQLiteConnection;
import androidx.work.impl.model.WorkNameDao_Impl;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b38 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ b38(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return SliderKt.RangeSliderImpl$lambda$44$lambda$36$lambda$35((String) obj2, (SemanticsPropertyReceiver) obj);
            case 1:
                return WorkNameDao_Impl.getWorkSpecIdsWithName$lambda$1("SELECT work_spec_id FROM workname WHERE name=?", (String) obj2, (SQLiteConnection) obj);
            default:
                return BasicTextContextMenuProviderKt.basicTextContextMenuProvider$lambda$1$0((BasicTextContextMenuProvider) obj2, (DisposableEffectScope) obj);
        }
    }
}
