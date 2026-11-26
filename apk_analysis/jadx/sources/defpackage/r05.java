package defpackage;

import android.content.Intent;
import android.net.Uri;
import android.text.style.ClickableSpan;
import android.view.View;

/* JADX INFO: loaded from: classes5.dex */
public final class r05 extends ClickableSpan {
    public final String b;

    public r05(String str) {
        this.b = str;
    }

    @Override // android.text.style.ClickableSpan
    public final void onClick(View view) {
        view.getClass();
        try {
            view.getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(this.b)));
            j59 j59Var = j59.a;
        } catch (Throwable unused) {
        }
    }
}
