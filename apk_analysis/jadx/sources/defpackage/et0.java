package defpackage;

import androidx.compose.foundation.text.input.internal.LegacyTextInputMethodRequest;
import androidx.compose.material3.BottomSheetScaffoldKt;
import androidx.compose.material3.SheetValue;
import androidx.compose.material3.TopAppBarState;
import androidx.compose.ui.text.input.ImeAction;
import androidx.lifecycle.viewmodel.CreationExtras;
import androidx.navigation.internal.NavBackStackEntryImpl;
import com.posthog.surveys.SurveyAppearancePosition;
import java.util.List;
import yads.e92;
import yads.fr1;
import yads.gl1;
import yads.hn2;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class et0 implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ et0(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return Boolean.valueOf(BottomSheetScaffoldKt.rememberStandardBottomSheetState$lambda$5$lambda$4((SheetValue) obj));
            case 1:
                return LegacyTextInputMethodRequest.onImeActionPerformed$lambda$0((ImeAction) obj);
            case 2:
                return NavBackStackEntryImpl.navResultSavedStateFactory_delegate$lambda$10$lambda$9$lambda$8((CreationExtras) obj);
            case 3:
                return SurveyAppearancePosition.Companion.fromValue$lambda$0((SurveyAppearancePosition) obj);
            case 4:
                return TopAppBarState.Saver$lambda$1((List) obj);
            case 5:
                return Boolean.valueOf(e92.e(obj));
            case 6:
                return Boolean.valueOf(fr1.a(obj));
            case 7:
                return Boolean.valueOf(gl1.d(obj));
            default:
                return hn2.a((r15) obj);
        }
    }
}
