package defpackage;

import android.text.TextUtils;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.moduleinstall.internal.ApiFeatureRequest;
import com.google.android.gms.common.moduleinstall.internal.zaf;
import com.google.android.gms.common.moduleinstall.internal.zay;
import com.google.android.gms.common.moduleinstall.internal.zaz;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.tapjoy.TJAdUnitConstants;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class p0a implements RemoteCall {
    public final Object b;
    public final Object c;

    public p0a(z2a z2aVar, lia liaVar) {
        this.b = liaVar;
        qw9 qw9Var = new qw9(z2aVar, liaVar);
        this.c = qw9Var;
        qw9Var.a.b = 2;
    }

    public static h14 b(JSONObject jSONObject) {
        String strOptString = jSONObject.optString("url");
        if (TextUtils.isEmpty(strOptString)) {
            y14.r(null, "CommonVideoParser: PostView background image hasn't url");
            return null;
        }
        int iOptInt = jSONObject.optInt(TJAdUnitConstants.String.WIDTH, -1);
        if (iOptInt < 0) {
            y14.r(null, "CommonVideoParser: PostView background image hasn't width");
            return null;
        }
        int iOptInt2 = jSONObject.optInt(TJAdUnitConstants.String.HEIGHT, -1);
        if (iOptInt2 >= 0) {
            return h14.a(iOptInt, iOptInt2, strOptString);
        }
        y14.r(null, "CommonVideoParser: PostView background image hasn't height");
        return null;
    }

    public void a(JSONObject jSONObject, kha khaVar) {
        lia liaVar = (lia) this.b;
        if (liaVar.p < 0.0f && jSONObject.has("point")) {
            jSONObject.optDouble("point");
        }
        if (liaVar.q >= 0.0f || !jSONObject.has("pointP")) {
            return;
        }
        jSONObject.optDouble("pointP");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public /* synthetic */ void accept(Object obj, Object obj2) {
        ((zaf) ((zaz) obj).getService()).zaf(new nla((zay) this.b, (TaskCompletionSource) obj2), (ApiFeatureRequest) this.c, null);
    }

    public /* synthetic */ p0a(Object obj, Object obj2) {
        this.b = obj;
        this.c = obj2;
    }
}
