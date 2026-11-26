package com.warefly.checkscan.presentation.balance.managementAlfa;

import android.os.Bundle;
import android.view.View;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.FrameLayout;
import com.tapjoy.TJDeviceNetworkKt;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.dialogs.FullScreenDialog;
import com.warefly.checkscan.databinding.DialogManagementAlfaBinding;
import com.warefly.checkscan.presentation.upridWeb.veiw.UpridWebView;
import defpackage.bs6;
import defpackage.en2;
import defpackage.gl4;
import defpackage.le9;
import defpackage.m2;
import defpackage.og4;
import defpackage.pz4;
import defpackage.qz4;
import defpackage.rz4;
import defpackage.s47;
import defpackage.x07;
import defpackage.ze4;

/* JADX INFO: loaded from: classes5.dex */
public final class ManagementAlfaFullScreenDialog extends FullScreenDialog<DialogManagementAlfaBinding> implements UpridWebView {
    public static final a e;
    public static final /* synthetic */ ze4<Object>[] f;
    public final gl4 c;
    public final en2 d;

    public static final class a {
    }

    static {
        bs6 bs6Var = new bs6(ManagementAlfaFullScreenDialog.class, "binding", "getBinding()Lcom/warefly/checkscan/databinding/DialogManagementAlfaBinding;", 0);
        x07.a.getClass();
        f = new ze4[]{bs6Var};
        e = new a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public ManagementAlfaFullScreenDialog() {
        super(R.layout.dialog_management_alfa);
        this.c = new gl4(DialogManagementAlfaBinding.class);
        this.d = new en2((s47) (this instanceof og4 ? m2.c(s47.class, ((og4) this).getScope(), null, null) : b().c.d.e(x07.a(s47.class), null, null)));
    }

    @Override // com.warefly.checkscan.core.ui.base.dialogs.FullScreenDialog, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        String str;
        view.getClass();
        super.onViewCreated(view, bundle);
        Bundle arguments = getArguments();
        if (arguments == null || (str = arguments.getString("CABINET_URL_KEY")) == null) {
            str = new String();
        }
        DialogManagementAlfaBinding dialogManagementAlfaBinding = (DialogManagementAlfaBinding) this.c.getValue(this, f[0]);
        FrameLayout frameLayout = dialogManagementAlfaBinding.layoutRoot;
        frameLayout.getClass();
        le9.d(16, frameLayout);
        WebView webView = dialogManagementAlfaBinding.webviewContent;
        webView.setBackgroundColor(0);
        WebSettings settings = webView.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setDomStorageEnabled(true);
        settings.setUseWideViewPort(true);
        settings.setLoadWithOverviewMode(true);
        settings.setBuiltInZoomControls(true);
        settings.setDisplayZoomControls(false);
        settings.setSupportZoom(true);
        settings.setDefaultTextEncodingName("utf-8");
        webView.addJavascriptInterface(new pz4(webView), TJDeviceNetworkKt.TJC_CONNECTION_TYPE_MOBILE);
        webView.setWebViewClient(new qz4(str, this, this.d.a()));
        webView.setWebChromeClient(new rz4(this));
        webView.loadUrl(str);
    }
}
