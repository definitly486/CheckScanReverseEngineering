package defpackage;

import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.foundation.layout.WindowInsetsHolder;
import androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridMeasureKt;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.text.SaversKt;
import androidx.datastore.core.CorruptionException;
import com.google.firebase.sessions.FirebaseSessionsComponent;
import java.lang.ref.WeakReference;
import yads.v1;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ly2 implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ ly2(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                nb6 nb6Var = (nb6) obj;
                nb6Var.getClass();
                return Integer.valueOf(nb6Var.k);
            case 1:
                return FirebaseSessionsComponent.MainModule.Companion.sessionConfigsDataStore$lambda$0((CorruptionException) obj);
            case 2:
                return LazyStaggeredGridMeasureKt.measure$lambda$0$0((Placeable.PlacementScope) obj);
            case 3:
                return SaversKt.LocaleListSaver$lambda$1(obj);
            case 4:
                return Float.valueOf(((AnimationVector1D) obj).getValue());
            case 5:
                return ((WindowInsetsHolder) obj).getDisplayCutout();
            default:
                return Boolean.valueOf(v1.b((WeakReference) obj));
        }
    }
}
