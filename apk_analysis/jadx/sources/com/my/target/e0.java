package com.my.target;

import androidx.media3.common.PlaybackException;
import defpackage.n4a;
import defpackage.pp9;
import defpackage.w4a;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
public final class e0 {
    public static final DecimalFormat e;
    public final pp9 a;
    public final n4a b;
    public final boolean c;
    public final boolean d;

    static {
        DecimalFormat decimalFormat = new DecimalFormat("", new DecimalFormatSymbols(Locale.ROOT));
        e = decimalFormat;
        decimalFormat.setMaximumFractionDigits(2);
    }

    public e0(n4a n4aVar, boolean z, boolean z2) {
        this.a = n4aVar.a;
        this.b = n4aVar;
        this.c = z;
        this.d = z2;
    }

    public final void a(String str) {
        boolean z = this.d;
        pp9 pp9Var = this.a;
        if (z) {
            pp9Var.a(PlaybackException.ERROR_CODE_DRM_SYSTEM_ERROR, "header=".concat(str));
            if (w4a.b()) {
                pp9Var.a(PlaybackException.ERROR_CODE_DRM_SYSTEM_ERROR, "debug-actions-no-vi-supplier");
            } else {
                pp9Var.a(PlaybackException.ERROR_CODE_DRM_SYSTEM_ERROR, "debug-actions-not-ui-thread");
            }
        }
        if (this.c) {
            pp9Var.a(PlaybackException.ERROR_CODE_DRM_LICENSE_ACQUISITION_FAILED, "header=".concat(str));
            pp9Var.a(PlaybackException.ERROR_CODE_DRM_LICENSE_ACQUISITION_FAILED, "check-callback==null");
        }
    }
}
