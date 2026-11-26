package androidx.compose.ui.platform;

import android.view.ActionMode;
import android.view.View;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.platform.actionmodecallback.FloatingTextActionModeCallback;
import androidx.compose.ui.platform.actionmodecallback.TextActionModeCallback;
import defpackage.j59;
import defpackage.ll3;

/* JADX INFO: loaded from: classes2.dex */
public final class AndroidTextToolbar implements TextToolbar {
    public static final int $stable = 8;
    private ActionMode actionMode;
    private final View view;
    private final TextActionModeCallback textActionModeCallback = new TextActionModeCallback(new AndroidTextToolbar$textActionModeCallback$1(this), null, null, null, null, null, null, 126, null);
    private TextToolbarStatus status = TextToolbarStatus.Hidden;

    public AndroidTextToolbar(View view) {
        this.view = view;
    }

    @Override // androidx.compose.ui.platform.TextToolbar
    public TextToolbarStatus getStatus() {
        return this.status;
    }

    @Override // androidx.compose.ui.platform.TextToolbar
    public void hide() {
        this.status = TextToolbarStatus.Hidden;
        ActionMode actionMode = this.actionMode;
        if (actionMode != null) {
            actionMode.finish();
        }
        this.actionMode = null;
    }

    @Override // androidx.compose.ui.platform.TextToolbar
    public void showMenu(Rect rect, ll3<j59> ll3Var, ll3<j59> ll3Var2, ll3<j59> ll3Var3, ll3<j59> ll3Var4, ll3<j59> ll3Var5) {
        this.textActionModeCallback.setRect(rect);
        this.textActionModeCallback.setOnCopyRequested(ll3Var);
        this.textActionModeCallback.setOnCutRequested(ll3Var3);
        this.textActionModeCallback.setOnPasteRequested(ll3Var2);
        this.textActionModeCallback.setOnSelectAllRequested(ll3Var4);
        this.textActionModeCallback.setOnAutofillRequested(ll3Var5);
        ActionMode actionMode = this.actionMode;
        if (actionMode != null) {
            actionMode.invalidate();
        } else {
            this.status = TextToolbarStatus.Shown;
            this.actionMode = TextToolbarHelperMethods.INSTANCE.startActionMode(this.view, new FloatingTextActionModeCallback(this.textActionModeCallback), 1);
        }
    }

    @Override // androidx.compose.ui.platform.TextToolbar
    public void showMenu(Rect rect, ll3<j59> ll3Var, ll3<j59> ll3Var2, ll3<j59> ll3Var3, ll3<j59> ll3Var4) {
        showMenu(rect, ll3Var, ll3Var2, ll3Var3, ll3Var4, null);
    }
}
