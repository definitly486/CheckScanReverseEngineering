package defpackage;

import androidx.webkit.WebViewCompat;
import androidx.webkit.WebViewOutcomeReceiver;
import androidx.webkit.WebViewStartUpResult;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.firebase.perf.config.RemoteConfigManager;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class v17 implements OnFailureListener, WebViewCompat.WebViewStartUpCallback {
    public final /* synthetic */ Object b;

    public /* synthetic */ v17(Object obj) {
        this.b = obj;
    }

    @Override // com.google.android.gms.tasks.OnFailureListener
    public void onFailure(Exception exc) {
        ((RemoteConfigManager) this.b).lambda$triggerFirebaseRemoteConfigFetchAndActivateOnSuccessfulFetch$1(exc);
    }

    @Override // androidx.webkit.WebViewCompat.WebViewStartUpCallback
    public void onSuccess(WebViewStartUpResult webViewStartUpResult) {
        ((WebViewOutcomeReceiver) this.b).onResult(webViewStartUpResult);
    }
}
