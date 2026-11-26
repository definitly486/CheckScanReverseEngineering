package com.tapjoy;

import android.content.DialogInterface;

/* JADX INFO: loaded from: classes4.dex */
public final class b implements DialogInterface.OnClickListener {
    public final /* synthetic */ TJActivity a;

    public b(TJActivity tJActivity) {
        this.a = tJActivity;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.a.a();
        dialogInterface.cancel();
    }
}
