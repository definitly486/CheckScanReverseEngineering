package defpackage;

import android.webkit.WebChromeClient;
import android.webkit.WebView;
import com.warefly.checkscan.databinding.DialogManagementAlfaBinding;
import com.warefly.checkscan.presentation.balance.managementAlfa.ManagementAlfaFullScreenDialog;

/* JADX INFO: loaded from: classes5.dex */
public final class rz4 extends WebChromeClient {
    public final /* synthetic */ ManagementAlfaFullScreenDialog a;

    public rz4(ManagementAlfaFullScreenDialog managementAlfaFullScreenDialog) {
        this.a = managementAlfaFullScreenDialog;
    }

    @Override // android.webkit.WebChromeClient
    public final void onProgressChanged(WebView webView, int i) {
        ManagementAlfaFullScreenDialog managementAlfaFullScreenDialog = this.a;
        if (managementAlfaFullScreenDialog.isResumed() && i == 100) {
            ((DialogManagementAlfaBinding) managementAlfaFullScreenDialog.c.getValue(managementAlfaFullScreenDialog, ManagementAlfaFullScreenDialog.f[0])).viewLoading.getRoot().setVisibility(8);
        }
    }
}
