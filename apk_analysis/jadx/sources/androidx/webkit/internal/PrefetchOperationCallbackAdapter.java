package androidx.webkit.internal;

import androidx.webkit.PrefetchException;
import androidx.webkit.PrefetchNetworkException;
import androidx.webkit.WebViewOutcomeReceiver;
import defpackage.fg;
import defpackage.kt0;
import java.lang.reflect.InvocationHandler;
import org.chromium.support_lib_boundary.PrefetchOperationCallbackBoundaryInterface;

/* JADX INFO: loaded from: classes3.dex */
public class PrefetchOperationCallbackAdapter {
    private PrefetchOperationCallbackAdapter() {
    }

    public static InvocationHandler buildInvocationHandler(final WebViewOutcomeReceiver<Void, PrefetchException> webViewOutcomeReceiver) {
        return new kt0.a(new PrefetchOperationCallbackBoundaryInterface() { // from class: androidx.webkit.internal.PrefetchOperationCallbackAdapter.1
            @Override // org.chromium.support_lib_boundary.FeatureFlagHolderBoundaryInterface
            public String[] getSupportedFeatures() {
                return new String[]{"PREFETCH_WITH_CALLBACK_RESULT_V1"};
            }

            @Override // org.chromium.support_lib_boundary.PrefetchOperationCallbackBoundaryInterface
            public void onFailure(int i, String str, int i2) {
                WebViewOutcomeReceiver webViewOutcomeReceiver2 = webViewOutcomeReceiver;
                if (i == 1) {
                    webViewOutcomeReceiver2.onError(new PrefetchNetworkException(str, i2));
                } else {
                    webViewOutcomeReceiver2.onError(new PrefetchException(str));
                }
            }

            @Override // org.chromium.support_lib_boundary.PrefetchOperationCallbackBoundaryInterface
            public void onResult(int i) {
                if (i == 0 || i == 1) {
                    webViewOutcomeReceiver.onResult(null);
                } else {
                    fg.c("Given type isn't defined.");
                }
            }

            @Override // org.chromium.support_lib_boundary.PrefetchOperationCallbackBoundaryInterface
            public void onSuccess() {
                webViewOutcomeReceiver.onResult(null);
            }
        });
    }
}
