package androidx.navigationevent;

import android.view.View;
import androidx.core.viewtree.ViewTree;

/* JADX INFO: loaded from: classes.dex */
public final class ViewTreeNavigationEventDispatcherOwner {
    public static final NavigationEventDispatcherOwner get(View view) {
        view.getClass();
        while (view != null) {
            Object tag = view.getTag(R.id.view_tree_navigation_event_dispatcher_owner);
            NavigationEventDispatcherOwner navigationEventDispatcherOwner = tag instanceof NavigationEventDispatcherOwner ? (NavigationEventDispatcherOwner) tag : null;
            if (navigationEventDispatcherOwner != null) {
                return navigationEventDispatcherOwner;
            }
            Object parentOrViewTreeDisjointParent = ViewTree.getParentOrViewTreeDisjointParent(view);
            view = parentOrViewTreeDisjointParent instanceof View ? (View) parentOrViewTreeDisjointParent : null;
        }
        return null;
    }

    public static final void set(View view, NavigationEventDispatcherOwner navigationEventDispatcherOwner) {
        view.getClass();
        view.setTag(R.id.view_tree_navigation_event_dispatcher_owner, navigationEventDispatcherOwner);
    }
}
