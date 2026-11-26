package defpackage;

import androidx.compose.material3.carousel.CarouselPagerState;
import androidx.compose.runtime.saveable.SaverScope;
import androidx.compose.ui.text.SaversKt;
import androidx.compose.ui.text.style.TextDecoration;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class j51 implements bm3 {
    public final /* synthetic */ int b;

    public /* synthetic */ j51(int i) {
        this.b = i;
    }

    @Override // defpackage.bm3
    public final Object invoke(Object obj, Object obj2) {
        SaverScope saverScope = (SaverScope) obj;
        switch (this.b) {
            case 0:
                return CarouselPagerState.Saver$lambda$0(saverScope, (CarouselPagerState) obj2);
            default:
                return SaversKt.TextDecorationSaver$lambda$0(saverScope, (TextDecoration) obj2);
        }
    }
}
