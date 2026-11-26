package defpackage;

import androidx.activity.OnBackPressedDispatcher;
import androidx.compose.foundation.text.input.internal.selection.TextFieldSelectionState;
import androidx.compose.material3.ModalBottomSheetKt;
import androidx.navigation.NavController;
import androidx.navigation.serialization.RouteSerializerKt;
import androidx.window.embedding.SafeActivityEmbeddingComponentProvider;
import com.yandex.mobile.ads.features.debugpanel.ui.IntegrationInspectorActivity;
import yads.nq0;
import yads.wq0;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class e84 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ e84(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return IntegrationInspectorActivity.f((IntegrationInspectorActivity) obj);
            case 1:
                return Boolean.valueOf(ModalBottomSheetKt.Scrim_KTwxG1Y$lambda$31$lambda$30$lambda$29((ll3) obj));
            case 2:
                return NavController.navInflater_delegate$lambda$10((NavController) obj);
            case 3:
                return OnBackPressedDispatcher.eventInput_delegate$lambda$0((OnBackPressedDispatcher) obj);
            case 4:
                return RouteSerializerKt.generateNavArguments$lambda$2((df4) obj);
            case 5:
                return Boolean.valueOf(SafeActivityEmbeddingComponentProvider.isMethodSplitAttributesCalculatorValid$lambda$15((SafeActivityEmbeddingComponentProvider) obj));
            case 6:
                return ((TextFieldSelectionState) obj).getDerivedVisibleContentBounds$foundation();
            case 7:
                return nq0.d0((nq0) obj);
            default:
                return wq0.d((wq0) obj);
        }
    }
}
