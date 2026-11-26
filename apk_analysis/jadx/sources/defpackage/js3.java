package defpackage;

import androidx.camera.camera2.impl.ZoomControl;
import androidx.camera.core.featuregroup.GroupableFeature;
import androidx.compose.foundation.pager.PagerState;
import androidx.navigation.NavDeepLink;
import androidx.window.layout.SafeWindowLayoutComponentProvider;
import yads.l51;
import yads.nq0;
import yads.za2;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class js3 implements ll3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ js3(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.ll3
    public final Object invoke() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                return Integer.valueOf(GroupableFeature.featureType_delegate$lambda$0((GroupableFeature) obj));
            case 1:
                return Integer.valueOf(((PagerState) obj).getPageCount());
            case 2:
                return ((NavDeepLink) obj).parseFragment();
            case 3:
                return Boolean.valueOf(SafeWindowLayoutComponentProvider.isMethodWindowLayoutInfoListenerWindowConsumerValid$lambda$3((SafeWindowLayoutComponentProvider) obj));
            case 4:
                return ZoomControl._zoomState_delegate$lambda$0((ZoomControl) obj);
            case 5:
                return l51.b((l51) obj);
            case 6:
                return nq0.L((nq0) obj);
            default:
                return za2.b((za2) obj);
        }
    }
}
