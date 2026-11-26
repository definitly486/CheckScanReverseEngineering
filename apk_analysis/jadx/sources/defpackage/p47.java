package defpackage;

import android.content.Context;
import android.content.res.Resources;

/* JADX INFO: loaded from: classes3.dex */
public final class p47 implements g05<Integer, b99> {
    @Override // defpackage.g05
    public final b99 a(Object obj, zz5 zz5Var) {
        int iIntValue = ((Number) obj).intValue();
        Context context = zz5Var.a;
        try {
            if (context.getResources().getResourceEntryName(iIntValue) == null) {
                return null;
            }
            return xz2.g("android.resource://" + context.getPackageName() + "/" + iIntValue);
        } catch (Resources.NotFoundException unused) {
            return null;
        }
    }
}
