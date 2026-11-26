package com.warefly.checkscan.ui;

import android.R;
import android.content.Context;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.view.Window;
import androidx.viewbinding.ViewBinding;
import com.warefly.checkscan.core.ui.base.dialogs.BaseDialogNew;

/* JADX INFO: loaded from: classes5.dex */
public abstract class AutoCancellableDialog<VB extends ViewBinding> extends BaseDialogNew<VB> {
    public final long c;
    public CountDownTimer d;

    public static final class a extends CountDownTimer {
        public final /* synthetic */ AutoCancellableDialog<VB> a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(AutoCancellableDialog<VB> autoCancellableDialog, long j, long j2) {
            super(j, j2);
            this.a = autoCancellableDialog;
        }

        @Override // android.os.CountDownTimer
        public final void onFinish() {
            this.a.cancel();
        }

        @Override // android.os.CountDownTimer
        public final void onTick(long j) {
        }
    }

    public AutoCancellableDialog(Context context) {
        super(context);
        this.c = 1000L;
    }

    @Override // com.warefly.checkscan.core.ui.base.dialogs.BaseDialogNew, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Window window = getWindow();
        if (window != null) {
            window.setBackgroundDrawableResource(R.color.transparent);
        }
        long j = this.c;
        this.d = new a(this, j, j).start();
    }

    @Override // com.warefly.checkscan.core.ui.base.dialogs.BaseDialogNew, android.app.Dialog, android.view.Window.Callback
    public final void onDetachedFromWindow() {
        CountDownTimer countDownTimer = this.d;
        if (countDownTimer != null) {
            countDownTimer.cancel();
        }
        super.onDetachedFromWindow();
    }

    public AutoCancellableDialog(Context context, long j) {
        super(context);
        this.c = j;
    }
}
