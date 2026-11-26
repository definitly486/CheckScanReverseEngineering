package defpackage;

import android.graphics.Color;
import android.text.TextUtils;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.LiveDataObservable;
import androidx.media3.exoplayer.MetadataRetrieverInternal;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class bs4 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;

    public /* synthetic */ bs4(lga lgaVar, String str) {
        this.b = 3;
        this.c = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.c;
        switch (i) {
            case 0:
                ((LiveDataObservable) obj).lambda$disableInternalObserver$6();
                break;
            case 1:
                ((MetadataRetrieverInternal) obj).lambda$close$0();
                break;
            case 2:
                ((DeferrableSurface) obj).close();
                break;
            default:
                String str = (String) obj;
                if (TextUtils.isEmpty(str)) {
                    y14.r(null, "WebFormVKBridgeParser: can't parse CopyText post message");
                } else {
                    try {
                        JSONObject jSONObject = new JSONObject(str);
                        if (jSONObject.has("status_bar_style")) {
                            jSONObject.optString("status_bar_style");
                        }
                        String strOptString = jSONObject.optString("action_bar_color");
                        if (!TextUtils.isEmpty(strOptString)) {
                            Color.parseColor(strOptString);
                        }
                        String strOptString2 = jSONObject.optString("navigation_bar_color");
                        if (!TextUtils.isEmpty(strOptString2)) {
                            Color.parseColor(strOptString2);
                        }
                    } catch (Throwable th) {
                        fg.e(null, new StringBuilder("WebFormVKBridgeParser: can't parse SetViewSettings post message: "), th);
                    }
                }
                break;
        }
    }

    public /* synthetic */ bs4(Object obj, int i) {
        this.b = i;
        this.c = obj;
    }
}
