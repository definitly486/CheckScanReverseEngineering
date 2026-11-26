package defpackage;

import androidx.navigation.fragment.FragmentNavigator;
import yads.tz1;
import yads.yx1;
import yads.zg1;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class ik3 implements nl3 {
    public final /* synthetic */ int b;

    public /* synthetic */ ik3(int i) {
        this.b = i;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return FragmentNavigator.popBackStack$lambda$14$lambda$13((b36) obj);
            case 1:
                return Boolean.valueOf(tz1.a(obj));
            case 2:
                return Boolean.valueOf(yx1.a(obj));
            default:
                return Boolean.valueOf(zg1.a(obj));
        }
    }
}
