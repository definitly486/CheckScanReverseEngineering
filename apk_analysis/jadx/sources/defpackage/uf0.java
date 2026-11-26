package defpackage;

import androidx.compose.foundation.text.BasicTextFieldKt;
import androidx.compose.material3.DrawerState;
import androidx.compose.material3.IconButtonKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.navigation.NavDestination;
import androidx.navigation.NavGraphBuilder;
import androidx.window.embedding.EmbeddingBackend;
import com.posthog.surveys.SurveyQuestionType;
import yads.qj1;
import yads.w52;
import yads.zq3;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class uf0 implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ uf0(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return BasicTextFieldKt.BasicTextField$lambda$16$0((TextLayoutResult) obj);
            case 1:
                return Float.valueOf(DrawerState.anchoredDraggableState$lambda$1(((Float) obj).floatValue()));
            case 2:
                return EmbeddingBackend.Companion.decorator$lambda$0((EmbeddingBackend) obj);
            case 3:
                String str = (String) obj;
                str.getClass();
                return SurveyQuestionType.Companion.fromValue(str);
            case 4:
                return IconButtonKt.SurfaceIconToggleButton$lambda$26$lambda$25((SemanticsPropertyReceiver) obj);
            case 5:
                return NavGraphBuilder.build$lambda$1$lambda$0((NavDestination) obj);
            case 6:
                return Boolean.valueOf(qj1.d(obj));
            case 7:
                return w52.a((String) obj);
            default:
                return zq3.a((dc4) obj);
        }
    }
}
