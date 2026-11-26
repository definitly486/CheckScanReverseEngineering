package androidx.navigation;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import androidx.core.app.ActivityCompat;
import androidx.navigation.Navigation;
import defpackage.c9;
import defpackage.dp7;
import defpackage.jp7;
import defpackage.mf5;
import defpackage.z2;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes3.dex */
public final class Navigation {
    public static final Navigation INSTANCE = new Navigation();

    private Navigation() {
    }

    public static final View.OnClickListener createNavigateOnClickListener(final NavDirections navDirections) {
        navDirections.getClass();
        return new View.OnClickListener() { // from class: zi5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Navigation.createNavigateOnClickListener$lambda$1(navDirections, view);
            }
        };
    }

    public static /* synthetic */ View.OnClickListener createNavigateOnClickListener$default(int i, Bundle bundle, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            bundle = null;
        }
        return createNavigateOnClickListener(i, bundle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void createNavigateOnClickListener$lambda$0(int i, Bundle bundle, View view) {
        view.getClass();
        findNavController(view).navigate(i, bundle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void createNavigateOnClickListener$lambda$1(NavDirections navDirections, View view) {
        view.getClass();
        findNavController(view).navigate(navDirections);
    }

    public static final NavController findNavController(Activity activity, int i) {
        activity.getClass();
        View viewRequireViewById = ActivityCompat.requireViewById(activity, i);
        viewRequireViewById.getClass();
        NavController navControllerFindViewNavController = INSTANCE.findViewNavController(viewRequireViewById);
        if (navControllerFindViewNavController != null) {
            return navControllerFindViewNavController;
        }
        throw new IllegalStateException("Activity " + activity + " does not have a NavController set on " + i);
    }

    private final NavController findViewNavController(View view) {
        int i = 1;
        return (NavController) jp7.l(jp7.o(dp7.h(new mf5(i), view), new z2(i)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final View findViewNavController$lambda$2(View view) {
        view.getClass();
        Object parent = view.getParent();
        if (parent instanceof View) {
            return (View) parent;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final NavController findViewNavController$lambda$3(View view) {
        view.getClass();
        return INSTANCE.getViewNavController(view);
    }

    private final NavController getViewNavController(View view) {
        Object tag = view.getTag(R.id.nav_controller_view_tag);
        if (tag instanceof WeakReference) {
            return (NavController) ((WeakReference) tag).get();
        }
        if (tag instanceof NavController) {
            return (NavController) tag;
        }
        return null;
    }

    public static final void setViewNavController(View view, NavController navController) {
        view.getClass();
        view.setTag(R.id.nav_controller_view_tag, navController);
    }

    public static final View.OnClickListener createNavigateOnClickListener(final int i, final Bundle bundle) {
        return new View.OnClickListener() { // from class: aj5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Navigation.createNavigateOnClickListener$lambda$0(i, bundle, view);
            }
        };
    }

    public static final View.OnClickListener createNavigateOnClickListener(int i) {
        return createNavigateOnClickListener$default(i, null, 2, null);
    }

    public static final NavController findNavController(View view) {
        view.getClass();
        NavController navControllerFindViewNavController = INSTANCE.findViewNavController(view);
        if (navControllerFindViewNavController != null) {
            return navControllerFindViewNavController;
        }
        c9.g(view, "View ", " does not have a NavController set");
        return null;
    }
}
