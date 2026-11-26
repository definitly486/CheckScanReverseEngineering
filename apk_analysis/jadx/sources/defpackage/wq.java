package defpackage;

import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.webkit.WebViewCompat;
import androidx.webkit.WebViewStartUpResult;
import androidx.webkit.internal.WebViewProviderFactoryAdapter;
import com.warefly.checkscan.presentation.scanner.presenter.ScannerPresenter;
import com.yalantis.ucrop.UCrop;
import java.util.List;
import yads.gd5;
import yads.jb4;
import yads.pb4;
import yads.qb4;
import yads.y85;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class wq implements Arrangement.SpacingAlignmentCalculator, xl3, ActivityResultCallback, WebViewCompat.WebViewStartUpCallback, gd5, y85 {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ wq(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }

    @Override // yads.y85
    public void a(Object obj) {
        qb4.a((pb4) this.c, (String) obj);
    }

    @Override // androidx.compose.foundation.layout.Arrangement.SpacingAlignmentCalculator
    public int align(int i, LayoutDirection layoutDirection) {
        return Arrangement.aligned$lambda$0((Alignment.Horizontal) this.c, i, layoutDirection);
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        int i = this.b;
        Object obj2 = this.c;
        switch (i) {
            case 1:
                return ((sv) obj2).invoke(obj);
            case 2:
                return (qq1) ((hp0) obj2).invoke(obj);
            default:
                return (qq1) ((f68) obj2).invoke(obj);
        }
    }

    @Override // androidx.activity.result.ActivityResultCallback
    public void onActivityResult(Object obj) {
        Intent data;
        hd3<? extends List<String>> tb7Var;
        g86 g86Var = (g86) this.c;
        ActivityResult activityResult = (ActivityResult) obj;
        if (activityResult.getResultCode() != -1 || (data = activityResult.getData()) == null) {
            return;
        }
        ScannerPresenter scannerPresenter = g86Var.e;
        try {
            Uri output = UCrop.getOutput(data);
            String path = output != null ? output.getPath() : null;
            av6 av6Var = g86Var.d;
            Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(path);
            bitmapDecodeFile.getClass();
            tb7Var = av6Var.a(bitmapDecodeFile);
        } catch (Throwable unused) {
            tb7Var = new tb7(new i86(2, null));
        }
        scannerPresenter.onQrCodesDetectedOnCroppedImage(tb7Var);
    }

    @Override // androidx.webkit.WebViewCompat.WebViewStartUpCallback
    public void onSuccess(WebViewStartUpResult webViewStartUpResult) {
        WebViewProviderFactoryAdapter.lambda$startUpWebView$1((WebViewCompat.WebViewStartUpCallback) this.c, webViewStartUpResult);
    }

    @Override // yads.gd5
    public String a() {
        return jb4.a((jb4) this.c);
    }
}
