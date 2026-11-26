package defpackage;

import android.net.Uri;
import android.view.View;
import com.google.firebase.dynamiclinks.ShortDynamicLink;

/* JADX INFO: loaded from: classes5.dex */
public final class mu2 extends gh4 implements nl3 {
    public final /* synthetic */ int f;
    public final /* synthetic */ Object g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ mu2(Object obj, int i) {
        super(1);
        this.f = i;
        this.g = obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        j59 j59Var;
        int i = this.f;
        Object obj2 = this.g;
        switch (i) {
            case 0:
                oz7.a aVar = (oz7.a) obj2;
                Uri shortLink = ((ShortDynamicLink) obj).getShortLink();
                if (shortLink != null) {
                    aVar.onSuccess(shortLink);
                    j59Var = j59.a;
                } else {
                    j59Var = null;
                }
                if (j59Var == null) {
                    aVar.onError(new Exception("Dynamic Link: result shortLink is null"));
                }
                return j59.a;
            case 1:
                ((View) obj).getClass();
                ((l56) obj2).b.onCityChangeClicked();
                return j59.a;
            default:
                return Integer.valueOf(pp1.a((String) ((b36) obj).b, (Comparable) obj2));
        }
    }
}
