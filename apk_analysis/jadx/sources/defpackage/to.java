package defpackage;

import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.animation.core.KeyframesSpec;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.foundation.text.TextLinkScope;
import androidx.compose.material3.AppBarKt;
import androidx.compose.material3.ProgressIndicatorKt;
import androidx.compose.material3.SheetState;
import androidx.compose.material3.SheetValue;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.text.AnnotatedString;
import androidx.recyclerview.widget.RecyclerView;
import yads.bp1;
import yads.ng6;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class to implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ to(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return AppBarKt.TopAppBarLayout_lyUyIHI$lambda$51$lambda$46$lambda$45((SemanticsPropertyReceiver) obj);
            case 1:
                return ProgressIndicatorKt._get_linearIndeterminateSecondLineHeadAnimationSpec_$lambda$45((KeyframesSpec.KeyframesSpecConfig) obj);
            case 2:
                return Boolean.valueOf(SheetState._init_$lambda$0((SheetValue) obj));
            case 3:
                return TextLinkScope._init_$lambda$0((AnnotatedString.Range) obj);
            case 4:
                return VectorConvertersKt.DpToVector$lambda$1((AnimationVector1D) obj);
            case 5:
                return bp1.a((String) obj);
            default:
                return ng6.a((RecyclerView) obj);
        }
    }
}
