package defpackage;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.auth.api.proxy.AuthApiStatusCodes;
import com.google.android.gms.cloudmessaging.Rpc;
import com.google.android.gms.common.api.internal.zaaa;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class hw9 implements OnCompleteListener, Continuation {
    public final Object b;
    public final Object c;

    public /* synthetic */ hw9(Object obj, Object obj2) {
        this.b = obj;
        this.c = obj2;
    }

    public int a(String str) {
        ks9 ks9Var = (ks9) this.c;
        JSONObject jSONObject = (JSONObject) this.b;
        if (!jSONObject.has(str)) {
            ks9Var.a(str).f(AuthApiStatusCodes.AUTH_APP_CERT_ERROR);
            return -1;
        }
        int iOptInt = jSONObject.optInt(str, -1);
        if (iOptInt == -1) {
            ks9Var.a(str).f(3007);
        }
        return iOptInt;
    }

    public String b(String str) {
        ks9 ks9Var = (ks9) this.c;
        JSONObject jSONObject = (JSONObject) this.b;
        if (!jSONObject.has(str)) {
            ks9Var.a(str).f(AuthApiStatusCodes.AUTH_APP_CERT_ERROR);
            return null;
        }
        String strOptString = jSONObject.optString(str, "D00DC568-C315-4A5C-AE45-3C177B095B35-2165462B-6EC5-49BA-AD28-F48420D9A7DA");
        if (!"D00DC568-C315-4A5C-AE45-3C177B095B35-2165462B-6EC5-49BA-AD28-F48420D9A7DA".equals(strOptString) && !TextUtils.isEmpty(strOptString)) {
            return strOptString;
        }
        ks9Var.a(str).f(3007);
        return null;
    }

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public void onComplete(Task task) {
        ((zaaa) this.c).b.remove((TaskCompletionSource) this.b);
    }

    @Override // com.google.android.gms.tasks.Continuation
    public Object then(Task task) {
        Rpc rpc = (Rpc) this.b;
        Bundle bundle = (Bundle) this.c;
        if (!task.isSuccessful()) {
            return task;
        }
        Bundle bundle2 = (Bundle) task.getResult();
        int i = Rpc.h;
        return (bundle2 == null || !bundle2.containsKey("google.messenger")) ? task : rpc.b(bundle).onSuccessTask(gsa.b, pc6.b);
    }

    public hw9(zaaa zaaaVar, TaskCompletionSource taskCompletionSource) {
        this.b = taskCompletionSource;
        this.c = zaaaVar;
    }
}
