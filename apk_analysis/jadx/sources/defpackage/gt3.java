package defpackage;

import androidx.compose.material3.IconButtonKt;
import androidx.compose.runtime.retain.RetainedValuesStoreRegistry;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.SaversKt;
import com.posthog.surveys.SurveyType;
import yads.du1;
import yads.h32;
import yads.pd2;
import yads.t52;
import yads.x92;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class gt3 implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ gt3(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                String str = (String) obj;
                str.getClass();
                return SurveyType.Companion.fromValue(str);
            case 1:
                return IconButtonKt.FilledIconToggleButton$lambda$12$lambda$11((SemanticsPropertyReceiver) obj);
            case 2:
                return Boolean.valueOf(RetainedValuesStoreRegistry.dispose$lambda$0(obj));
            case 3:
                return SaversKt.TextGeometricTransformSaver$lambda$1(obj);
            case 4:
                return du1.a((t52) obj);
            case 5:
                return Boolean.valueOf(h32.c(obj));
            case 6:
                return pd2.a((String) obj);
            default:
                return Boolean.valueOf(x92.d(obj));
        }
    }
}
