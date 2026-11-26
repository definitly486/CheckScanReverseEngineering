package androidx.navigation.fragment;

import androidx.fragment.app.DialogFragment;
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
public final class DialogFragmentNavigatorDestinationBuilder extends NavDestinationBuilder<DialogFragmentNavigator.Destination> {
    private ne4<? extends DialogFragment> fragmentClass;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DialogFragmentNavigatorDestinationBuilder(DialogFragmentNavigator dialogFragmentNavigator, ne4<? extends Object> ne4Var, Map<ef4, NavType<?>> map, ne4<? extends DialogFragment> ne4Var2) {
        super(dialogFragmentNavigator, ne4Var, map);
        dialogFragmentNavigator.getClass();
        ne4Var.getClass();
        map.getClass();
        ne4Var2.getClass();
        this.fragmentClass = ne4Var2;
    }

    @Override // androidx.navigation.NavDestinationBuilder
    public DialogFragmentNavigator.Destination build() {
        DialogFragmentNavigator.Destination destination = (DialogFragmentNavigator.Destination) super.build();
        destination.setClassName(d31.n(this.fragmentClass).getName());
        return destination;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DialogFragmentNavigatorDestinationBuilder(DialogFragmentNavigator dialogFragmentNavigator, String str, ne4<? extends DialogFragment> ne4Var) {
        super(dialogFragmentNavigator, str);
        dialogFragmentNavigator.getClass();
        str.getClass();
        ne4Var.getClass();
        this.fragmentClass = ne4Var;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @ul2
    public DialogFragmentNavigatorDestinationBuilder(DialogFragmentNavigator dialogFragmentNavigator, int i, ne4<? extends DialogFragment> ne4Var) {
        super(dialogFragmentNavigator, i);
        dialogFragmentNavigator.getClass();
        ne4Var.getClass();
        this.fragmentClass = ne4Var;
    }
}
