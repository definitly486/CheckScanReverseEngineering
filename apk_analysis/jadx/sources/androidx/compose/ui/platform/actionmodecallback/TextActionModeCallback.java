package androidx.compose.ui.platform.actionmodecallback;

import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import androidx.compose.ui.geometry.Rect;
import androidx.tracing.Trace;
import defpackage.fg;
import defpackage.j59;
import defpackage.jh2;
import defpackage.ll3;

/* JADX INFO: loaded from: classes2.dex */
public final class TextActionModeCallback {
    public static final int $stable = 8;
    private final ll3<j59> onActionModeDestroy;
    private ll3<j59> onAutofillRequested;
    private ll3<j59> onCopyRequested;
    private ll3<j59> onCutRequested;
    private ll3<j59> onPasteRequested;
    private ll3<j59> onSelectAllRequested;
    private Rect rect;

    public /* synthetic */ TextActionModeCallback(ll3 ll3Var, Rect rect, ll3 ll3Var2, ll3 ll3Var3, ll3 ll3Var4, ll3 ll3Var5, ll3 ll3Var6, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? null : ll3Var, (i & 2) != 0 ? Rect.Companion.getZero() : rect, (i & 4) != 0 ? null : ll3Var2, (i & 8) != 0 ? null : ll3Var3, (i & 16) != 0 ? null : ll3Var4, (i & 32) != 0 ? null : ll3Var5, (i & 64) != 0 ? null : ll3Var6);
    }

    private final void addOrRemoveMenuItem(Menu menu, MenuItemOption menuItemOption, ll3<j59> ll3Var) {
        if (ll3Var != null && menu.findItem(menuItemOption.getId()) == null) {
            addMenuItem$ui(menu, menuItemOption);
        } else {
            if (ll3Var != null || menu.findItem(menuItemOption.getId()) == null) {
                return;
            }
            menu.removeItem(menuItemOption.getId());
        }
    }

    public final void addMenuItem$ui(Menu menu, MenuItemOption menuItemOption) {
        menu.add(0, menuItemOption.getId(), menuItemOption.getOrder(), menuItemOption.getTitleResource()).setShowAsAction(1);
    }

    public final ll3<j59> getOnActionModeDestroy() {
        return this.onActionModeDestroy;
    }

    public final ll3<j59> getOnAutofillRequested() {
        return this.onAutofillRequested;
    }

    public final ll3<j59> getOnCopyRequested() {
        return this.onCopyRequested;
    }

    public final ll3<j59> getOnCutRequested() {
        return this.onCutRequested;
    }

    public final ll3<j59> getOnPasteRequested() {
        return this.onPasteRequested;
    }

    public final ll3<j59> getOnSelectAllRequested() {
        return this.onSelectAllRequested;
    }

    public final Rect getRect() {
        return this.rect;
    }

    public final boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
        menuItem.getClass();
        int itemId = menuItem.getItemId();
        if (itemId == MenuItemOption.Copy.getId()) {
            ll3<j59> ll3Var = this.onCopyRequested;
            if (ll3Var != null) {
                ll3Var.invoke();
            }
        } else if (itemId == MenuItemOption.Paste.getId()) {
            ll3<j59> ll3Var2 = this.onPasteRequested;
            if (ll3Var2 != null) {
                ll3Var2.invoke();
            }
        } else if (itemId == MenuItemOption.Cut.getId()) {
            ll3<j59> ll3Var3 = this.onCutRequested;
            if (ll3Var3 != null) {
                ll3Var3.invoke();
            }
        } else if (itemId == MenuItemOption.SelectAll.getId()) {
            ll3<j59> ll3Var4 = this.onSelectAllRequested;
            if (ll3Var4 != null) {
                ll3Var4.invoke();
            }
        } else {
            if (itemId != MenuItemOption.Autofill.getId()) {
                return false;
            }
            ll3<j59> ll3Var5 = this.onAutofillRequested;
            if (ll3Var5 != null) {
                ll3Var5.invoke();
            }
        }
        if (actionMode == null) {
            return true;
        }
        actionMode.finish();
        return true;
    }

    public final boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
        if (menu == null) {
            fg.c("onCreateActionMode requires a non-null menu");
            return false;
        }
        if (actionMode == null) {
            fg.c("onCreateActionMode requires a non-null mode");
            return false;
        }
        if (this.onCopyRequested != null) {
            addMenuItem$ui(menu, MenuItemOption.Copy);
        }
        if (this.onPasteRequested != null) {
            addMenuItem$ui(menu, MenuItemOption.Paste);
        }
        if (this.onCutRequested != null) {
            addMenuItem$ui(menu, MenuItemOption.Cut);
        }
        if (this.onSelectAllRequested != null) {
            addMenuItem$ui(menu, MenuItemOption.SelectAll);
        }
        if (this.onAutofillRequested == null) {
            return true;
        }
        addMenuItem$ui(menu, MenuItemOption.Autofill);
        return true;
    }

    public final void onDestroyActionMode() {
        ll3<j59> ll3Var = this.onActionModeDestroy;
        if (ll3Var != null) {
            ll3Var.invoke();
        }
    }

    public final boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
        if (actionMode == null || menu == null) {
            return false;
        }
        updateMenuItems$ui(menu);
        return true;
    }

    public final void setOnAutofillRequested(ll3<j59> ll3Var) {
        this.onAutofillRequested = ll3Var;
    }

    public final void setOnCopyRequested(ll3<j59> ll3Var) {
        this.onCopyRequested = ll3Var;
    }

    public final void setOnCutRequested(ll3<j59> ll3Var) {
        this.onCutRequested = ll3Var;
    }

    public final void setOnPasteRequested(ll3<j59> ll3Var) {
        this.onPasteRequested = ll3Var;
    }

    public final void setOnSelectAllRequested(ll3<j59> ll3Var) {
        this.onSelectAllRequested = ll3Var;
    }

    public final void setRect(Rect rect) {
        this.rect = rect;
    }

    public final void updateMenuItems$ui(Menu menu) {
        addOrRemoveMenuItem(menu, MenuItemOption.Copy, this.onCopyRequested);
        addOrRemoveMenuItem(menu, MenuItemOption.Paste, this.onPasteRequested);
        addOrRemoveMenuItem(menu, MenuItemOption.Cut, this.onCutRequested);
        addOrRemoveMenuItem(menu, MenuItemOption.SelectAll, this.onSelectAllRequested);
        addOrRemoveMenuItem(menu, MenuItemOption.Autofill, this.onAutofillRequested);
    }

    public TextActionModeCallback(ll3<j59> ll3Var, Rect rect, ll3<j59> ll3Var2, ll3<j59> ll3Var3, ll3<j59> ll3Var4, ll3<j59> ll3Var5, ll3<j59> ll3Var6) {
        this.onActionModeDestroy = ll3Var;
        this.rect = rect;
        this.onCopyRequested = ll3Var2;
        this.onPasteRequested = ll3Var3;
        this.onCutRequested = ll3Var4;
        this.onSelectAllRequested = ll3Var5;
        this.onAutofillRequested = ll3Var6;
    }

    public TextActionModeCallback() {
        this(null, null, null, null, null, null, null, Trace.MAX_TRACE_LABEL_LENGTH, null);
    }
}
