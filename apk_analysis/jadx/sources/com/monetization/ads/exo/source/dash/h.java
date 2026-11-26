package com.monetization.ads.exo.source.dash;

import android.net.Uri;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import yads.it4;
import yads.u56;
import yads.yc0;

/* JADX INFO: loaded from: classes6.dex */
public final class h implements it4 {
    @Override // yads.it4
    public final Object a(Uri uri, yc0 yc0Var) {
        return Long.valueOf(u56.f(new BufferedReader(new InputStreamReader(yc0Var)).readLine()));
    }
}
