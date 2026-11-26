package defpackage;

import androidx.navigation.NavBackStackEntry;
import androidx.navigation.fragment.FragmentNavigator;
import java.util.List;
import yads.u13;
import yads.yu3;

/* JADX INFO: loaded from: classes6.dex */
public final /* synthetic */ class gk3 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ gk3(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                return FragmentNavigator.fragmentViewObserver$lambda$3((FragmentNavigator) obj2, (NavBackStackEntry) obj);
            default:
                return yu3.a((List) obj2, (u13) obj);
        }
    }
}
