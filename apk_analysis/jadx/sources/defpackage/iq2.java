package defpackage;

import android.text.TextUtils;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.compose.material.ripple.RippleHostView;
import com.google.android.material.textfield.TextInputEditText;
import com.tapjoy.TJSetUserIDListener;
import com.tapjoy.TJUser;
import com.warefly.checkscan.presentation.qrHand.view.QrHandFragment;
import com.warefly.checkscan.ui.dotindicator.BaseDotsIndicator;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class iq2 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ iq2(lga lgaVar, String str) {
        this.b = 5;
        this.c = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                ((BaseDotsIndicator) obj).d();
                break;
            case 1:
                TextInputEditText textInputEditText = (TextInputEditText) obj;
                ze4<Object>[] ze4VarArr = QrHandFragment.j;
                textInputEditText.getClass();
                le9.e(textInputEditText);
                break;
            case 2:
                RippleHostView.setRippleState$lambda$1((RippleHostView) obj);
                break;
            case 3:
                ((DeferrableSurface) obj).decrementUseCount();
                break;
            case 4:
                TJUser.b((TJSetUserIDListener) obj);
                break;
            default:
                String str = (String) obj;
                if (TextUtils.isEmpty(str)) {
                    y14.r(null, "WebFormVKBridgeParser: json is null, parsing requestId has been failed");
                } else {
                    try {
                        JSONObject jSONObject = new JSONObject(str);
                        if (jSONObject.has(CommonUrlParts.REQUEST_ID)) {
                            jSONObject.optInt(CommonUrlParts.REQUEST_ID);
                        }
                    } catch (Throwable unused) {
                        y14.r(null, "WebFormVKBridgeParser: json is null, parsing requestId has been failed");
                    }
                }
                break;
        }
    }

    public /* synthetic */ iq2(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }
}
