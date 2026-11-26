package defpackage;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.compose.ui.graphics.colorspace.DoubleFunction;
import androidx.compose.ui.graphics.colorspace.Rgb;
import androidx.compose.ui.graphics.colorspace.TransferParameters;
import androidx.core.view.inputmethod.InputConnectionCompat;
import androidx.core.view.inputmethod.InputContentInfoCompat;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class o61 implements xl3, InputConnectionCompat.OnCommitContentListener, DoubleFunction, ActivityResultCallback {
    public final /* synthetic */ Object b;

    public /* synthetic */ o61(Object obj) {
        this.b = obj;
    }

    @Override // defpackage.xl3
    public Object apply(Object obj) {
        return (List) ((nl3) this.b).invoke(obj);
    }

    @Override // androidx.compose.ui.graphics.colorspace.DoubleFunction
    public double invoke(double d) {
        return Rgb.Companion.generateEotf$lambda$0((TransferParameters) this.b, d);
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0038  */
    @Override // androidx.activity.result.ActivityResultCallback
    public void onActivityResult(Object obj) {
        Uri[] result;
        tf9 tf9Var = (tf9) this.b;
        ActivityResult activityResult = (ActivityResult) obj;
        activityResult.getClass();
        ValueCallback<Uri[]> valueCallback = tf9Var.c;
        tf9Var.c = null;
        if (activityResult.getResultCode() != -1) {
            result = null;
        } else {
            Uri uri = tf9Var.d;
            if (uri == null) {
                uri = null;
            } else {
                Intent data = activityResult.getData();
                if ((data != null ? data.getData() : null) != null) {
                    uri = null;
                } else {
                    Intent data2 = activityResult.getData();
                    if ((data2 != null ? data2.getClipData() : null) != null) {
                        uri = null;
                    }
                }
            }
            result = uri != null ? new Uri[]{uri} : WebChromeClient.FileChooserParams.parseResult(activityResult.getResultCode(), activityResult.getData());
        }
        tf9Var.d = null;
        if (valueCallback != null) {
            valueCallback.onReceiveValue(result);
        }
    }

    @Override // androidx.core.view.inputmethod.InputConnectionCompat.OnCommitContentListener
    public boolean onCommitContent(InputContentInfoCompat inputContentInfoCompat, int i, Bundle bundle) {
        return InputConnectionCompat.lambda$createOnCommitContentListenerUsingPerformReceiveContent$0((View) this.b, inputContentInfoCompat, i, bundle);
    }
}
