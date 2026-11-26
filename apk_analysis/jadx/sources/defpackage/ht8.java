package defpackage;

import android.content.Intent;
import androidx.camera.camera2.pipe.config.ThreadConfigModule;
import androidx.webkit.WebViewCompat;
import androidx.webkit.WebViewStartUpResult;
import androidx.webkit.internal.AssetHelper;
import com.warefly.checkscan.presentation.upridWeb.veiw.UpridWebFullScreenDialog;
import yads.nm;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class ht8 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ ht8(int i, Object obj, Object obj2) {
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
                ThreadConfigModule.provideThreads$lambda$6((r07) obj2, (r07) obj);
                break;
            case 1:
                UpridWebFullScreenDialog upridWebFullScreenDialog = (UpridWebFullScreenDialog) obj2;
                String str = (String) obj;
                if (upridWebFullScreenDialog.isAdded()) {
                    Intent intent = new Intent("android.intent.action.SEND");
                    intent.setType(AssetHelper.DEFAULT_MIME_TYPE);
                    intent.putExtra("android.intent.extra.TEXT", str);
                    try {
                        upridWebFullScreenDialog.startActivity(Intent.createChooser(intent, null));
                    } catch (Exception unused) {
                        return;
                    }
                    break;
                }
                break;
            case 2:
                ((WebViewCompat.WebViewStartUpCallback) obj2).onSuccess((WebViewStartUpResult) obj);
                break;
            default:
                ((nm) obj2).b((String) obj);
                break;
        }
    }
}
