package defpackage;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.text.TextUtils;
import android.util.Size;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.camera.core.CameraX;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import com.my.target.e;
import com.my.target.xj;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class y11 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ y11(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String strOptString;
        int i = this.b;
        Object obj = this.d;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                ((CameraX) obj2).lambda$shutdownInternal$4((CallbackToFutureAdapter.Completer) obj);
                break;
            case 1:
                String str = (String) obj;
                e.a aVar = ((lga) obj2).a;
                if (!TextUtils.isEmpty(str)) {
                    try {
                        JSONObject jSONObject = new JSONObject(str);
                        strOptString = jSONObject.has("text") ? jSONObject.optString("text") : null;
                    } catch (Throwable unused) {
                        y14.r(null, "WebFormVKBridgeParser: json is null, parsing copyText has been failed");
                    }
                    ((ClipboardManager) aVar.a.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText(null, strOptString));
                    TextUtils.isEmpty(strOptString);
                } else {
                    y14.r(null, "WebFormVKBridgeParser: json is null, parsing CopyText has been failed");
                }
                ((ClipboardManager) aVar.a.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText(null, strOptString));
                TextUtils.isEmpty(strOptString);
                break;
            default:
                xj xjVar = (xj) obj2;
                h14 h14Var = (h14) obj;
                int i2 = xj.t;
                int i3 = h14Var.b;
                int i4 = h14Var.c;
                if (xjVar.q != null) {
                    Size sizeA = xjVar.a(i3, i4);
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(sizeA.getWidth(), sizeA.getHeight());
                    layoutParams.gravity = 17;
                    xjVar.q.getVideoView().b(sizeA.getWidth(), sizeA.getHeight());
                    xjVar.q.getPreviewView().setLayoutParams(layoutParams);
                    xjVar.q.getPreviewView().setScaleType(ImageView.ScaleType.CENTER_CROP);
                    break;
                }
                break;
        }
    }
}
