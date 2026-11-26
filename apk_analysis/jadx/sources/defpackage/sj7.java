package defpackage;

import androidx.compose.foundation.text.selection.SelectableInfo;
import androidx.compose.foundation.text.selection.SelectionLayoutKt;
import androidx.compose.material3.SearchBarKt;
import androidx.compose.material3.SearchBarState;
import androidx.compose.ui.layout.LayoutCoordinates;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class sj7 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ sj7(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return SearchBarKt.SearchBar_nbWgWpA$lambda$1$lambda$0((SearchBarState) obj2, (LayoutCoordinates) obj);
            default:
                return SelectionLayoutKt.isCollapsed$lambda$0((n07) obj2, (SelectableInfo) obj);
        }
    }
}
