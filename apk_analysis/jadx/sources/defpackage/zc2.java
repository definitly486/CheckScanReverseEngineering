package defpackage;

import androidx.camera.camera2.pipe.core.Debug;
import androidx.compose.foundation.lazy.grid.LazyGridIntervalContent;
import androidx.compose.foundation.lazy.grid.LazyGridItemSpanScope;
import androidx.compose.material3.NavigationDrawerKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.SaversKt;
import java.util.Map;
import yads.e91;
import yads.fi1;
import yads.kf4;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class zc2 implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ zc2(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return Debug.valueToString$lambda$0(obj);
            case 1:
                nb6 nb6Var = (nb6) obj;
                nb6Var.getClass();
                return Integer.valueOf(nb6Var.h);
            case 2:
                return Boolean.valueOf(((Character) obj).charValue() == ':');
            case 3:
                Map.Entry entry = (Map.Entry) obj;
                entry.getClass();
                String str = (String) entry.getKey();
                oc4 oc4Var = (oc4) entry.getValue();
                StringBuilder sb = new StringBuilder();
                aa8.a(sb, str);
                sb.append(':');
                sb.append(oc4Var);
                return sb.toString();
            case 4:
                return LazyGridIntervalContent.stickyHeader$lambda$1((LazyGridItemSpanScope) obj);
            case 5:
                return NavigationDrawerKt.NavigationDrawerItem$lambda$64$lambda$63((SemanticsPropertyReceiver) obj);
            case 6:
                return SaversKt.LineHeightStyleAlignmentSaver$lambda$1(obj);
            case 7:
                return Boolean.valueOf(e91.d(obj));
            case 8:
                return Boolean.valueOf(fi1.c(obj));
            default:
                return kf4.a((Throwable) obj);
        }
    }
}
