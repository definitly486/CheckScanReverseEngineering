package androidx.compose.ui.platform;

import androidx.compose.ui.geometry.Rect;
import defpackage.j59;
import defpackage.ll3;
import defpackage.n1;

/* JADX INFO: loaded from: classes2.dex */
public interface TextToolbar {
    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void showMenu$default(TextToolbar textToolbar, Rect rect, ll3 ll3Var, ll3 ll3Var2, ll3 ll3Var3, ll3 ll3Var4, ll3 ll3Var5, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: showMenu");
            return;
        }
        if ((i & 2) != 0) {
            ll3Var = null;
        }
        if ((i & 4) != 0) {
            ll3Var2 = null;
        }
        if ((i & 8) != 0) {
            ll3Var3 = null;
        }
        if ((i & 16) != 0) {
            ll3Var4 = null;
        }
        if ((i & 32) != 0) {
            ll3Var5 = null;
        }
        textToolbar.showMenu(rect, ll3Var, ll3Var2, ll3Var3, ll3Var4, ll3Var5);
    }

    TextToolbarStatus getStatus();

    void hide();

    void showMenu(Rect rect, ll3<j59> ll3Var, ll3<j59> ll3Var2, ll3<j59> ll3Var3, ll3<j59> ll3Var4);

    default void showMenu(Rect rect, ll3<j59> ll3Var, ll3<j59> ll3Var2, ll3<j59> ll3Var3, ll3<j59> ll3Var4, ll3<j59> ll3Var5) {
        showMenu(rect, ll3Var, ll3Var2, ll3Var3, ll3Var4);
    }

    public static final class DefaultImpls {
        @Deprecated
        public static void showMenu(TextToolbar textToolbar, Rect rect, ll3<j59> ll3Var, ll3<j59> ll3Var2, ll3<j59> ll3Var3, ll3<j59> ll3Var4, ll3<j59> ll3Var5) {
            TextToolbar.super.showMenu(rect, ll3Var, ll3Var2, ll3Var3, ll3Var4, ll3Var5);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void showMenu$default(TextToolbar textToolbar, Rect rect, ll3 ll3Var, ll3 ll3Var2, ll3 ll3Var3, ll3 ll3Var4, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: showMenu");
            return;
        }
        if ((i & 2) != 0) {
            ll3Var = null;
        }
        if ((i & 4) != 0) {
            ll3Var2 = null;
        }
        if ((i & 8) != 0) {
            ll3Var3 = null;
        }
        if ((i & 16) != 0) {
            ll3Var4 = null;
        }
        textToolbar.showMenu(rect, ll3Var, ll3Var2, ll3Var3, ll3Var4);
    }
}
