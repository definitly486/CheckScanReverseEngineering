package defpackage;

import androidx.compose.foundation.text.CoreTextFieldKt;
import androidx.compose.material3.IconButtonKt;
import androidx.compose.material3.WideNavigationRailKt;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.SaversKt;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.paging.PagingSource;
import com.posthog.surveys.SurveyRatingDisplayType;
import yads.cn1;
import yads.du1;
import yads.n76;
import yads.sd1;
import yads.w72;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class p12 implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ p12(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return CoreTextFieldKt.CoreTextField$lambda$0$0((TextLayoutResult) obj);
            case 1:
                String str = (String) obj;
                str.getClass();
                return SurveyRatingDisplayType.Companion.fromValue(str);
            case 2:
                return IconButtonKt.OutlinedIconToggleButton$lambda$20$lambda$19((SemanticsPropertyReceiver) obj);
            case 3:
                return PagingSource.invalidateCallbackTracker$lambda$0((ll3) obj);
            case 4:
                return SaversKt.AnnotatedStringSaver$lambda$1(obj);
            case 5:
                return WideNavigationRailKt.AnonymousClass1.AnonymousClass2.measure_3p2s80s$lambda$0((Placeable.PlacementScope) obj);
            case 6:
                return du1.a((cn1) obj);
            case 7:
                return n76.a((String) obj);
            case 8:
                return Boolean.valueOf(sd1.a(obj));
            default:
                return w72.a((String) obj);
        }
    }
}
