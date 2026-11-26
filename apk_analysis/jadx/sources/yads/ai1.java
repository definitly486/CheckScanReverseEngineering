package yads;

import defpackage.ra8;
import defpackage.ta8;

/* JADX INFO: loaded from: classes6.dex */
public final class ai1 implements xi1 {
    public final String a(String str) {
        return ra8.C(str, "divkit-asset", false) ? "file:///android_asset/divkit/".concat(ta8.T(str, "divkit-asset://")) : str;
    }
}
