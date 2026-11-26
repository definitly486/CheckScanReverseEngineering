package defpackage;

import androidx.compose.material3.DefaultNavigationRailOverride;
import androidx.compose.material3.tokens.TypographyTokensKt;
import yads.gf0;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class pl5 implements ll3 {
    public final /* synthetic */ int b;

    public /* synthetic */ pl5(int i) {
        this.b = i;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        switch (this.b) {
            case 0:
                return DefaultNavigationRailOverride.INSTANCE;
            case 1:
                return TypographyTokensKt.getDefaultTextStyle();
            default:
                return gf0.m();
        }
    }
}
