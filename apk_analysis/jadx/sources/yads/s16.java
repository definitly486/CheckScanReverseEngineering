package yads;

import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes6.dex */
public abstract class s16 {
    /* JADX WARN: Multi-variable type inference failed */
    public static final boolean a(View view) {
        if (!(view instanceof r16)) {
            return false;
        }
        if (((r16) view).g()) {
            return true;
        }
        if (view.getParent() instanceof ViewGroup) {
            Object parent = view.getParent();
            if ((parent instanceof r16) && a((View) parent)) {
                return true;
            }
        }
        return false;
    }
}
