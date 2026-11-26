package defpackage;

import android.app.Activity;
import android.os.Build;
import android.view.ActionMode;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.SearchEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityEvent;
import android.window.OnBackInvokedCallback;
import androidx.media3.common.PlaybackException;

/* JADX INFO: loaded from: classes.dex */
public final class rk8 {
    public Activity a;

    public static void a(final Activity activity) {
        if (Build.VERSION.SDK_INT >= 34) {
            activity.getOnBackInvokedDispatcher().registerOnBackInvokedCallback(PlaybackException.CUSTOM_ERROR_CODE_BASE, new OnBackInvokedCallback() { // from class: pk8
                public final void onBackInvoked() {
                    activity.finish();
                }
            });
        } else {
            Window window = activity.getWindow();
            window.setCallback(new a(window.getCallback(), activity));
        }
    }

    public static final class a implements Window.Callback {
        public final /* synthetic */ Window.Callback b;
        public final /* synthetic */ Window.Callback c;
        public final /* synthetic */ Activity d;

        public a(Window.Callback callback, Activity activity) {
            this.c = callback;
            this.d = activity;
            this.b = callback;
        }

        @Override // android.view.Window.Callback
        public final boolean dispatchGenericMotionEvent(MotionEvent motionEvent) {
            return this.b.dispatchGenericMotionEvent(motionEvent);
        }

        @Override // android.view.Window.Callback
        public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
            keyEvent.getClass();
            if (keyEvent.getKeyCode() != 4) {
                return this.c.dispatchKeyEvent(keyEvent);
            }
            if (keyEvent.getAction() == 1 && !keyEvent.isCanceled()) {
                this.d.finish();
            }
            return true;
        }

        @Override // android.view.Window.Callback
        public final boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
            return this.b.dispatchKeyShortcutEvent(keyEvent);
        }

        @Override // android.view.Window.Callback
        public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
            return this.b.dispatchPopulateAccessibilityEvent(accessibilityEvent);
        }

        @Override // android.view.Window.Callback
        public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
            return this.b.dispatchTouchEvent(motionEvent);
        }

        @Override // android.view.Window.Callback
        public final boolean dispatchTrackballEvent(MotionEvent motionEvent) {
            return this.b.dispatchTrackballEvent(motionEvent);
        }

        @Override // android.view.Window.Callback
        public final void onActionModeFinished(ActionMode actionMode) {
            this.b.onActionModeFinished(actionMode);
        }

        @Override // android.view.Window.Callback
        public final void onActionModeStarted(ActionMode actionMode) {
            this.b.onActionModeStarted(actionMode);
        }

        @Override // android.view.Window.Callback
        public final void onAttachedToWindow() {
            this.b.onAttachedToWindow();
        }

        @Override // android.view.Window.Callback
        public final void onContentChanged() {
            this.b.onContentChanged();
        }

        @Override // android.view.Window.Callback
        public final boolean onCreatePanelMenu(int i, Menu menu) {
            menu.getClass();
            return this.b.onCreatePanelMenu(i, menu);
        }

        @Override // android.view.Window.Callback
        public final View onCreatePanelView(int i) {
            return this.b.onCreatePanelView(i);
        }

        @Override // android.view.Window.Callback
        public final void onDetachedFromWindow() {
            this.b.onDetachedFromWindow();
        }

        @Override // android.view.Window.Callback
        public final boolean onMenuItemSelected(int i, MenuItem menuItem) {
            menuItem.getClass();
            return this.b.onMenuItemSelected(i, menuItem);
        }

        @Override // android.view.Window.Callback
        public final boolean onMenuOpened(int i, Menu menu) {
            menu.getClass();
            return this.b.onMenuOpened(i, menu);
        }

        @Override // android.view.Window.Callback
        public final void onPanelClosed(int i, Menu menu) {
            menu.getClass();
            this.b.onPanelClosed(i, menu);
        }

        @Override // android.view.Window.Callback
        public final boolean onPreparePanel(int i, View view, Menu menu) {
            menu.getClass();
            return this.b.onPreparePanel(i, view, menu);
        }

        @Override // android.view.Window.Callback
        public final boolean onSearchRequested() {
            return this.b.onSearchRequested();
        }

        @Override // android.view.Window.Callback
        public final void onWindowAttributesChanged(WindowManager.LayoutParams layoutParams) {
            this.b.onWindowAttributesChanged(layoutParams);
        }

        @Override // android.view.Window.Callback
        public final void onWindowFocusChanged(boolean z) {
            this.b.onWindowFocusChanged(z);
        }

        @Override // android.view.Window.Callback
        public final ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
            return this.b.onWindowStartingActionMode(callback);
        }

        @Override // android.view.Window.Callback
        public final boolean onSearchRequested(SearchEvent searchEvent) {
            return this.b.onSearchRequested(searchEvent);
        }

        @Override // android.view.Window.Callback
        public final ActionMode onWindowStartingActionMode(ActionMode.Callback callback, int i) {
            return this.b.onWindowStartingActionMode(callback, i);
        }
    }
}
