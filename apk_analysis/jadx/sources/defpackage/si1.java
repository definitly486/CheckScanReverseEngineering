package defpackage;

import androidx.compose.animation.core.AnimationVector4D;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.foundation.layout.WindowInsetsHolder;
import androidx.compose.material3.ChipKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import java.lang.ref.WeakReference;
import yads.ak1;
import yads.cp;
import yads.hg1;
import yads.k35;
import yads.v1;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class si1 implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ si1(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return ChipKt.SelectableChip_u0RnIRE$lambda$21$lambda$20((SemanticsPropertyReceiver) obj);
            case 1:
                nb6 nb6Var = (nb6) obj;
                nb6Var.getClass();
                return Integer.valueOf(nb6Var.g);
            case 2:
                return obj;
            case 3:
                return VectorConvertersKt.RectToVector$lambda$1((AnimationVector4D) obj);
            case 4:
                return ((WindowInsetsHolder) obj).getSystemBars();
            case 5:
                return ak1.a((String) obj);
            case 6:
                return cp.a((k35) obj);
            case 7:
                return hg1.a((String) obj);
            default:
                return Boolean.valueOf(v1.a((WeakReference) obj));
        }
    }
}
