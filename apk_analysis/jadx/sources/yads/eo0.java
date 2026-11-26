package yads;

import android.app.Activity;
import android.app.Dialog;

/* JADX INFO: loaded from: classes6.dex */
public abstract class eo0 {
    public static final void a(Dialog dialog) {
        Activity ownerActivity = dialog.getOwnerActivity();
        boolean z = ownerActivity == null || !(ownerActivity.isFinishing() || ownerActivity.isDestroyed());
        if (dialog.isShowing() && z) {
            try {
                dialog.dismiss();
            } catch (Exception unused) {
            }
        }
    }
}
