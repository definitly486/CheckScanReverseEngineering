package defpackage;

import androidx.compose.foundation.text.contextmenu.internal.PlatformDefaultTextContextMenuProviders_androidKt;
import androidx.compose.material3.SwipeToDismissBoxState;
import androidx.compose.material3.SwipeToDismissBoxValue;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.layout.LayoutCoordinates;
import java.util.Map;
import yads.d62;
import yads.tf1;
import yads.xu5;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class w0 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ w0(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return x0.toString$lambda$0((x0) obj2, (Map.Entry) obj);
            case 1:
                return PlatformDefaultTextContextMenuProviders_androidKt.ProvideBothDefaultProviders$lambda$4$0$0((MutableState) obj2, (LayoutCoordinates) obj);
            case 2:
                return SwipeToDismissBoxState.Companion.Saver$lambda$3((nl3) obj2, (SwipeToDismissBoxValue) obj);
            default:
                return d62.b((xu5) obj2, (tf1) obj);
        }
    }
}
