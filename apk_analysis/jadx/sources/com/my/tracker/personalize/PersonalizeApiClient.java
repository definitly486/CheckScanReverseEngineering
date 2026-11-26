package com.my.tracker.personalize;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.text.TextUtils;
import com.my.tracker.MyTracker;
import com.my.tracker.MyTrackerConfig;
import com.my.tracker.obfuscated.b3;
import com.my.tracker.obfuscated.c3;
import com.my.tracker.obfuscated.m;
import com.my.tracker.obfuscated.w0;
import defpackage.kh;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public final class PersonalizeApiClient {
    private final a a;

    public static final class Builder {
        private List a;
        private Context b;

        public PersonalizeApiClient build() {
            c3 c3Var = MyTracker.a.a;
            String strG = c3Var.g();
            if (TextUtils.isEmpty(strG)) {
                b3.a("Builder: MyTracker hasn't been initialized. Initialize it before using Personalize API");
                return null;
            }
            Context context = this.b;
            String instanceId = context != null ? MyTracker.getInstanceId(context) : null;
            List list = this.a;
            return new PersonalizeApiClient(new a(strG, (list == null || instanceId == null || !list.contains(instanceId)) ? c3Var.l() : c3Var.k()));
        }

        public Builder withTestDevices(Context context, List<String> list) {
            this.a = list;
            this.b = context;
            return this;
        }
    }

    public interface OnCompleteListener<T> {
        void onRequestComplete(PersonalizeApiClient personalizeApiClient, PersonalizeRequest<T> personalizeRequest, PersonalizeResponse<T> personalizeResponse);
    }

    public PersonalizeApiClient(a aVar) {
        this.a = aVar;
    }

    private void a(PersonalizeRequest personalizeRequest, w0.b bVar, Handler handler, OnCompleteListener onCompleteListener) {
        if (bVar == null) {
            b3.a("PersonalizeApiClient: MyTracker hasn't been initialized yet");
            a(personalizeRequest, null, null, handler, "MyTracker hasn't been initialized yet", onCompleteListener);
            return;
        }
        String str = (String) bVar.b();
        if (TextUtils.isEmpty(str)) {
            b3.a("PersonalizeApiClient: HTTP response is empty");
            a(personalizeRequest, null, null, handler, "HTTP response is empty", onCompleteListener);
            return;
        }
        try {
            c cVarA = personalizeRequest.c().a(new JSONObject(str));
            String strA = cVarA.a();
            if (strA != null) {
                a(personalizeRequest, null, null, handler, strA, onCompleteListener);
            } else {
                a(personalizeRequest, cVarA.b(), str, handler, null, onCompleteListener);
            }
        } catch (Throwable th) {
            String str2 = "Can't parse JSON with error: " + th.getMessage();
            b3.a("PersonalizeApiClient: ".concat(str2));
            a(personalizeRequest, null, null, handler, str2, onCompleteListener);
        }
    }

    public static Builder newBuilder() {
        return new Builder();
    }

    public <T> void sendRequest(final PersonalizeRequest<T> personalizeRequest, final Handler handler, final OnCompleteListener<T> onCompleteListener) {
        final String strA = a(personalizeRequest, this.a);
        m.b(new Runnable() { // from class: e76
            @Override // java.lang.Runnable
            public final void run() {
                this.b.a(strA, personalizeRequest, handler, onCompleteListener);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str, PersonalizeRequest personalizeRequest, Handler handler, OnCompleteListener onCompleteListener) {
        a(personalizeRequest, w0.a((MyTrackerConfig.OkHttpClientProvider) null).a(str), handler, onCompleteListener);
    }

    private void a(final PersonalizeRequest personalizeRequest, Object obj, String str, Handler handler, final String str2, final OnCompleteListener onCompleteListener) {
        if (handler == null) {
            handler = m.a;
        }
        if (!TextUtils.isEmpty(str2)) {
            b3.b("PersonalizeApiClient: " + str2);
            handler.post(new Runnable() { // from class: f76
                @Override // java.lang.Runnable
                public final void run() {
                    this.b.a(onCompleteListener, personalizeRequest, str2);
                }
            });
            return;
        }
        final PersonalizeResponse personalizeResponse = new PersonalizeResponse(obj, null, str);
        handler.post(new Runnable() { // from class: g76
            @Override // java.lang.Runnable
            public final void run() {
                this.b.a(onCompleteListener, personalizeRequest, personalizeResponse);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(OnCompleteListener onCompleteListener, PersonalizeRequest personalizeRequest, String str) {
        onCompleteListener.onRequestComplete(this, personalizeRequest, new PersonalizeResponse(null, str, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(OnCompleteListener onCompleteListener, PersonalizeRequest personalizeRequest, PersonalizeResponse personalizeResponse) {
        onCompleteListener.onRequestComplete(this, personalizeRequest, personalizeResponse);
    }

    private String a(PersonalizeRequest personalizeRequest, a aVar) {
        String strC = kh.c(new StringBuilder(), aVar.b, "/api/v1/recommendation", personalizeRequest.a());
        Map mapB = personalizeRequest.b();
        mapB.remove("sdk_key");
        if (mapB.isEmpty()) {
            return strC;
        }
        Uri.Builder builderBuildUpon = Uri.parse(strC).buildUpon();
        for (Map.Entry entry : mapB.entrySet()) {
            String str = (String) entry.getKey();
            Iterator it = ((List) entry.getValue()).iterator();
            while (it.hasNext()) {
                builderBuildUpon.appendQueryParameter(str, (String) it.next());
            }
        }
        builderBuildUpon.appendQueryParameter("sdk_key", aVar.a);
        return builderBuildUpon.toString();
    }
}
