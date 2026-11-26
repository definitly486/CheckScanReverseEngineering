package androidx.compose.foundation.text.contextmenu.internal;

import android.view.ActionMode;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
final class TextToolbarHelperApi23 {
    public static final TextToolbarHelperApi23 INSTANCE = new TextToolbarHelperApi23();

    private TextToolbarHelperApi23() {
    }

    public final void invalidateContentRect(ActionMode actionMode) {
        actionMode.invalidateContentRect();
    }

    public final ActionMode startActionMode(View view, ActionMode.Callback callback, int i) {
        return view.startActionMode(callback, i);
    }
}
