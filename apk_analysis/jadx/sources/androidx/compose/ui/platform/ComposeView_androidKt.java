package androidx.compose.ui.platform;

import android.view.View;
import android.view.ViewGroup;
import androidx.compose.ui.AndroidComposeUiFlags;
import androidx.core.viewtree.ViewTree;
import androidx.lifecycle.runtime.R;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes2.dex */
public final class ComposeView_androidKt {
    private static boolean areWindowInsetsRulersEnabled = true;

    public static final void disableWindowInsetsRulers(ComposeView.Companion companion) {
        areWindowInsetsRulersEnabled = false;
    }

    private static final int findDepthToTag(View view, int i) {
        int i2 = 0;
        int i3 = Integer.MAX_VALUE;
        Object obj = null;
        while (view != null) {
            Object tag = view.getTag(i);
            if (tag != null) {
                if (obj != null) {
                    if (!tag.equals(obj)) {
                        break;
                    }
                } else {
                    obj = tag;
                }
                i3 = i2;
            }
            i2++;
            Object parentOrViewTreeDisjointParent = ViewTree.getParentOrViewTreeDisjointParent(view);
            view = parentOrViewTreeDisjointParent instanceof View ? (View) parentOrViewTreeDisjointParent : null;
        }
        return i3;
    }

    public static final ComposeViewContext findViewTreeComposeViewContext(View view) {
        return getComposeViewContext(findViewTreeComposeViewRoot(view));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final View findViewTreeComposeViewRoot(View view) {
        if (!view.isAttachedToWindow() || !AndroidComposeUiFlags.isSharedComposeViewContextEnabled) {
            return view;
        }
        int iMin = Math.min(findDepthToTag(view, R.id.view_tree_lifecycle_owner), findDepthToTag(view, androidx.savedstate.R.id.view_tree_saved_state_registry_owner));
        View view2 = view;
        int i = 0;
        View view3 = view2;
        while (view != null) {
            if (i == iMin) {
                if (!(view.getParent() instanceof ViewGroup)) {
                    return view2;
                }
            } else if (getComposeViewContext(view) == null) {
                i++;
                Object parentOrViewTreeDisjointParent = ViewTree.getParentOrViewTreeDisjointParent(view);
                View view4 = view2;
                view2 = view;
                view = parentOrViewTreeDisjointParent instanceof View ? (View) parentOrViewTreeDisjointParent : null;
                view3 = view4;
            }
            return view;
        }
        return view3;
    }

    public static final boolean getAreWindowInsetsRulersEnabled() {
        return areWindowInsetsRulersEnabled;
    }

    public static final ComposeViewContext getComposeViewContext(View view) {
        Object tag = view.getTag(androidx.compose.ui.R.id.androidx_compose_ui_view_compose_view_context);
        WeakReference weakReference = tag instanceof WeakReference ? (WeakReference) tag : null;
        if (weakReference != null) {
            return (ComposeViewContext) weakReference.get();
        }
        return null;
    }

    public static /* synthetic */ void getComposeViewContext$annotations(View view) {
    }

    public static final void setAreWindowInsetsRulersEnabled(boolean z) {
        areWindowInsetsRulersEnabled = z;
    }

    public static final void setComposeViewContext(View view, ComposeViewContext composeViewContext) {
        view.setTag(androidx.compose.ui.R.id.androidx_compose_ui_view_compose_view_context, new WeakReference(composeViewContext));
    }
}
