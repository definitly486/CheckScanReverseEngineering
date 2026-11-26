package defpackage;

import android.app.Activity;
import androidx.webkit.WebViewCompat;
import androidx.webkit.WebViewStartUpResult;
import yads.ja5;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class yg9 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ yg9(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.d;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                ((WebViewCompat.WebViewStartUpCallback) obj2).onSuccess((WebViewStartUpResult) obj);
                break;
            default:
                ja5.a((ja5) obj2, (Activity) obj);
                break;
        }
    }
}
