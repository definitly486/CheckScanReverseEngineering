package defpackage;

import android.content.Context;
import androidx.compose.material3.ModalBottomSheetKt;
import androidx.compose.material3.SheetValue;
import androidx.compose.ui.text.Savers_androidKt;
import androidx.navigation.NavController;
import com.posthog.surveys.SurveyType;
import yads.hs1;
import yads.q52;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class xy2 implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ xy2(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                ((gc6) obj).getClass();
                return "log";
            case 1:
                return Boolean.valueOf(ModalBottomSheetKt.rememberModalBottomSheetState$lambda$26$lambda$25((SheetValue) obj));
            case 2:
                return NavController.activity$lambda$1((Context) obj);
            case 3:
                return Savers_androidKt.PlatformParagraphStyleSaver$lambda$1(obj);
            case 4:
                return SurveyType.Companion.fromValue$lambda$0((SurveyType) obj);
            case 5:
                return Boolean.valueOf(hs1.c(obj));
            default:
                return Boolean.valueOf(q52.b(obj));
        }
    }
}
