package yads;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.widget.Toast;
import androidx.webkit.internal.AssetHelper;
import com.tapjoy.TJAdUnitConstants;
import defpackage.j59;
import defpackage.k57;
import defpackage.nl3;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import yads.do2;

/* JADX INFO: loaded from: classes6.dex */
public final class do2 {
    public final bo2 a;
    public final vq0 b;
    public final LinkedHashSet c = new LinkedHashSet();
    public final ArrayList d = new ArrayList();
    public final ArrayList e = new ArrayList();
    public tp0 f;
    public final defpackage.bm3 g;
    public go2 h;

    public do2(bo2 bo2Var, vq0 vq0Var) {
        this.a = bo2Var;
        this.b = vq0Var;
        new tv3();
        this.g = new defpackage.bm3() { // from class: rt9
            @Override // defpackage.bm3
            public final Object invoke(Object obj, Object obj2) {
                return do2.a(this.b, (List) obj, (List) obj2);
            }
        };
        this.h = new go2(false, 0, 0, "", "");
    }

    public final String a() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        if (this.d.size() > 0) {
            JSONArray jSONArray = new JSONArray();
            for (Throwable th : this.d) {
                JSONObject jSONObject2 = new JSONObject();
                StringBuilder sb = new StringBuilder();
                sb.append(th.getMessage());
                for (Throwable cause = th.getCause(); cause != null; cause = cause.getCause()) {
                    sb.append('\n');
                    sb.append(cause.getMessage());
                }
                jSONObject2.put(TJAdUnitConstants.String.MESSAGE, sb.toString());
                jSONObject2.put("stacktrace", defpackage.sj0.d(th));
                if (th instanceof ft4) {
                    ft4 ft4Var = (ft4) th;
                    jSONObject2.put("reason", ft4Var.b);
                    rq3 rq3Var = ft4Var.c;
                    jSONObject2.put("json_source", rq3Var != null ? rq3Var.a() : null);
                    jSONObject2.put("json_summary", ft4Var.d);
                }
                jSONArray.put(jSONObject2);
            }
            jSONObject.put("errors", jSONArray);
        }
        if (this.e.size() > 0) {
            JSONArray jSONArray2 = new JSONArray();
            for (Throwable th2 : this.e) {
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put("warning_message", th2.getMessage());
                jSONObject3.put("stacktrace", defpackage.sj0.d(th2));
                jSONArray2.put(jSONObject3);
            }
            jSONObject.put("warnings", jSONArray2);
        }
        return jSONObject.toString(4);
    }

    public final tp0 a(final nl3 nl3Var) {
        this.c.add(nl3Var);
        nl3Var.invoke(this.h);
        return new tp0() { // from class: qt9
            @Override // java.lang.AutoCloseable, java.io.Closeable
            public final void close() {
                do2.a(this.b, nl3Var);
            }
        };
    }

    public static final void a(do2 do2Var, nl3 nl3Var) {
        do2Var.c.remove(nl3Var);
    }

    public static final j59 a(do2 do2Var, List list, List list2) {
        do2Var.getClass();
        return j59.a;
    }

    public final Object a(String str) {
        pq0 pq0Var = this.b.l;
        Object systemService = pq0Var.getSystemService("clipboard");
        ClipboardManager clipboardManager = systemService instanceof ClipboardManager ? (ClipboardManager) systemService : null;
        if (clipboardManager == null) {
            return j59.a;
        }
        try {
            clipboardManager.setPrimaryClip(new ClipData("Error report", new String[]{AssetHelper.DEFAULT_MIME_TYPE}, new ClipData.Item(str)));
            Toast.makeText(pq0Var, "Errors, DivData and Variables are dumped to clipboard!", 1).show();
            return j59.a;
        } catch (Exception e) {
            return new k57.a(new RuntimeException("Failed paste report to clipboard!", e));
        }
    }
}
