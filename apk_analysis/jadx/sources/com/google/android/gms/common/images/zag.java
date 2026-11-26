package com.google.android.gms.common.images;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import defpackage.rka;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zag {
    public final rka a;
    public int b;

    public zag(Uri uri, int i) {
        this.a = new rka(uri);
        this.b = i;
    }

    public abstract void a(Drawable drawable, boolean z, boolean z2, boolean z3);

    public final void b(Context context, boolean z) {
        int i = this.b;
        a(i != 0 ? context.getResources().getDrawable(i) : null, z, false, false);
    }
}
