package defpackage;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.DecayAnimationSpec;
import androidx.compose.material3.EnterAlwaysSearchBarScrollBehavior;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.LifecycleOwner;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.fragment.FragmentNavigator;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class b03 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ Object e;

    public /* synthetic */ b03(Object obj, Object obj2, Object obj3, int i) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
        this.e = obj3;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        Object obj2 = this.e;
        Object obj3 = this.d;
        Object obj4 = this.c;
        switch (i) {
            case 0:
                return EnterAlwaysSearchBarScrollBehavior.Companion.Saver$lambda$1((ll3) obj4, (AnimationSpec) obj3, (DecayAnimationSpec) obj2, (List) obj);
            default:
                return FragmentNavigator.attachObservers$lambda$7((FragmentNavigator) obj4, (Fragment) obj3, (NavBackStackEntry) obj2, (LifecycleOwner) obj);
        }
    }
}
