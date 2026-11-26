package defpackage;

import androidx.activity.ComponentActivity;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.foundation.text.contextmenu.internal.PlatformDefaultTextContextMenuProviders_androidKt;
import androidx.compose.runtime.MutableState;
import androidx.navigation.NavDeepLink;
import androidx.window.layout.SafeWindowLayoutComponentProvider;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class qr1 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ qr1(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return ComponentActivity.fullyDrawnReporter_delegate$lambda$0((ComponentActivity) obj);
            case 1:
                return NavDeepLink.pathPattern_delegate$lambda$1((NavDeepLink) obj);
            case 2:
                return Integer.valueOf(((PagerState) obj).getPageCount());
            case 3:
                return PlatformDefaultTextContextMenuProviders_androidKt.ProvideBothDefaultProviders$lambda$3$0((MutableState) obj);
            default:
                return Boolean.valueOf(SafeWindowLayoutComponentProvider.isDisplayFoldFeatureValid$lambda$4((SafeWindowLayoutComponentProvider) obj));
        }
    }
}
