package yads;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.os.Handler;

/* JADX INFO: loaded from: classes3.dex */
public final class nd6 implements ld6, DisplayManager.DisplayListener {
    public final DisplayManager a;
    public kd6 b;

    public nd6(DisplayManager displayManager) {
        this.a = displayManager;
    }

    @Override // yads.ld6
    public final void a(kd6 kd6Var) {
        this.b = kd6Var;
        this.a.registerDisplayListener(this, u56.a((Handler.Callback) null));
        ((defpackage.fg2) kd6Var).a(this.a.getDisplay(0));
    }

    @Override // android.hardware.display.DisplayManager.DisplayListener
    public final void onDisplayAdded(int i) {
    }

    @Override // android.hardware.display.DisplayManager.DisplayListener
    public final void onDisplayChanged(int i) {
        kd6 kd6Var = this.b;
        if (kd6Var == null || i != 0) {
            return;
        }
        ((defpackage.fg2) kd6Var).a(this.a.getDisplay(0));
    }

    @Override // android.hardware.display.DisplayManager.DisplayListener
    public final void onDisplayRemoved(int i) {
    }

    public static nd6 a(Context context) {
        DisplayManager displayManager = (DisplayManager) context.getSystemService("display");
        if (displayManager != null) {
            return new nd6(displayManager);
        }
        return null;
    }

    @Override // yads.ld6
    public final void a() {
        this.a.unregisterDisplayListener(this);
        this.b = null;
    }
}
