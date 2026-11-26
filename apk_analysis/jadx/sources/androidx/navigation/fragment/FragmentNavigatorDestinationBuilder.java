package androidx.navigation.fragment;

import androidx.fragment.app.Fragment;
import androidx.navigation.NavDestinationBuilder;
import androidx.navigation.NavDestinationDsl;
import androidx.navigation.NavType;
import defpackage.d31;
import defpackage.ef4;
import defpackage.ne4;
import defpackage.ul2;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
@NavDestinationDsl
public final class FragmentNavigatorDestinationBuilder extends NavDestinationBuilder<FragmentNavigator.Destination> {
    private ne4<? extends Fragment> fragmentClass;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FragmentNavigatorDestinationBuilder(FragmentNavigator fragmentNavigator, ne4<? extends Object> ne4Var, Map<ef4, NavType<?>> map, ne4<? extends Fragment> ne4Var2) {
        super(fragmentNavigator, ne4Var, map);
        fragmentNavigator.getClass();
        ne4Var.getClass();
        map.getClass();
        ne4Var2.getClass();
        this.fragmentClass = ne4Var2;
    }

    @Override // androidx.navigation.NavDestinationBuilder
    public FragmentNavigator.Destination build() {
        FragmentNavigator.Destination destination = (FragmentNavigator.Destination) super.build();
        destination.setClassName(d31.n(this.fragmentClass).getName());
        return destination;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FragmentNavigatorDestinationBuilder(FragmentNavigator fragmentNavigator, String str, ne4<? extends Fragment> ne4Var) {
        super(fragmentNavigator, str);
        fragmentNavigator.getClass();
        str.getClass();
        ne4Var.getClass();
        this.fragmentClass = ne4Var;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @ul2
    public FragmentNavigatorDestinationBuilder(FragmentNavigator fragmentNavigator, int i, ne4<? extends Fragment> ne4Var) {
        super(fragmentNavigator, i);
        fragmentNavigator.getClass();
        ne4Var.getClass();
        this.fragmentClass = ne4Var;
    }
}
