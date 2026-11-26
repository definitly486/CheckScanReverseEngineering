package com.warefly.checkscan.presentation.webview;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.ViewPropertyAnimator;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.ImageView;
import androidx.activity.OnBackPressedCallback;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import androidx.compose.runtime.composer.linkbuffer.GroupFlagsKt;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.warefly.checkscan.R;
import com.warefly.checkscan.databinding.LayoutWebviewBinding;
import com.warefly.checkscan.presentation.CiceroneActivity;
import com.warefly.checkscan.presentation.webview.WebViewActivity;
import defpackage.aa4;
import defpackage.ah;
import defpackage.aw6;
import defpackage.h4;
import defpackage.i20;
import defpackage.ig9;
import defpackage.j59;
import defpackage.k17;
import defpackage.k57;
import defpackage.kd;
import defpackage.lb7;
import defpackage.lg9;
import defpackage.me0;
import defpackage.mg9;
import defpackage.ng9;
import defpackage.oi9;
import defpackage.qr7;
import defpackage.ta8;
import defpackage.ut0;
import java.util.Collections;
import java.util.Map;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes5.dex */
public final class WebViewActivity extends AppCompatActivity {
    public static final /* synthetic */ int f = 0;
    public LayoutWebviewBinding c;
    public String d;
    public final b e = new b();

    public static final class a {
        public static Intent a(Context context, int i, String str, String str2) {
            int i2 = WebViewActivity.f;
            if ((i & 16) != 0) {
                str2 = null;
            }
            str.getClass();
            Intent intent = new Intent(context, (Class<?>) WebViewActivity.class);
            intent.putExtra("SIMPLE_URL", str);
            if (str2 != null) {
                intent.putExtra("TOOLBAR_TITLE", str2);
            }
            return intent;
        }
    }

    public static final class b extends OnBackPressedCallback {
        public b() {
            super(true);
        }

        @Override // androidx.activity.OnBackPressedCallback
        public final void handleOnBackPressed() {
            int i = WebViewActivity.f;
            WebViewActivity webViewActivity = WebViewActivity.this;
            if (webViewActivity.r().webviewContent.canGoBack()) {
                webViewActivity.r().webviewContent.goBack();
                return;
            }
            if (!webViewActivity.getIntent().hasExtra("SIMPLE_URL")) {
                webViewActivity.startActivity(new Intent(webViewActivity.getBaseContext(), (Class<?>) CiceroneActivity.class));
                webViewActivity.finish();
                return;
            }
            String string = webViewActivity.getString(R.string.interface_brandlink_mobile_native_back_button);
            string.getClass();
            webViewActivity.s(string, "");
            j59 j59Var = j59.a;
            webViewActivity.setResult(1);
            webViewActivity.finish();
        }
    }

    /* JADX WARN: Code duplicated, block: B:12:0x00a5  */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        String stringExtra;
        Object aVar;
        String queryParameter;
        super.onCreate(bundle);
        this.c = LayoutWebviewBinding.inflate(getLayoutInflater());
        ConstraintLayout root = r().getRoot();
        root.getClass();
        setContentView(root);
        int i = 1;
        oi9.a(15, root, true);
        getOnBackPressedDispatcher().addCallback(this, this.e);
        this.d = getIntent().getStringExtra("EVENT_WEBVIEW");
        Uri data = getIntent().getData();
        j59 j59Var = null;
        if (data == null) {
            stringExtra = null;
        } else {
            if (!aa4.e(data.getHost(), getString(R.string.deeplink_open_external_link_in_checkscan))) {
                data = null;
            }
            if (data == null || (queryParameter = data.getQueryParameter(getString(R.string.deeplink_open_external_link_in_checkscan_link_param))) == null) {
                stringExtra = null;
            } else {
                Map mapSingletonMap = Collections.singletonMap("UrlIntercept", queryParameter);
                mapSingletonMap.getClass();
                new kd.f.b("Bonuses events", mapSingletonMap).a();
                qr7.o0.getClass();
                stringExtra = getString(R.string.webview_cashback_path, Long.valueOf(((qr7) qr7.q0.getValue()).T0()), Uri.parse(queryParameter).buildUpon().build());
            }
        }
        if (stringExtra == null && (stringExtra = getIntent().getStringExtra("SIMPLE_URL")) == null) {
            stringExtra = "https://scan.com.ru";
        }
        k17 k17Var = k17.LITERAL;
        k17Var.getClass();
        int iA = k17Var.a();
        if ((iA & 2) != 0) {
            iA |= 64;
        }
        Pattern patternCompile = Pattern.compile("http://", iA);
        patternCompile.getClass();
        final String strReplaceAll = patternCompile.matcher(stringExtra).replaceAll("https://");
        strReplaceAll.getClass();
        try {
            if (getIntent().hasExtra("TOOLBAR_TITLE")) {
                r().tvLabel.setText(getIntent().getStringExtra("TOOLBAR_TITLE"));
            }
            if (getIntent().hasExtra("SIMPLE_URL")) {
                r().tvLabel.setVisibility(8);
                r().ivLabel.setVisibility(0);
            } else {
                r().tvLabel.setVisibility(0);
                r().ivLabel.setVisibility(8);
            }
            if (getIntent().hasExtra("TOOLBAR_TITLE")) {
                r().tvLabel.setText(getIntent().getStringExtra("TOOLBAR_TITLE"));
                r().tvLabel.setVisibility(0);
            }
            aVar = j59.a;
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        if (k57.a(aVar) != null) {
            AlertDialog.Builder builder = new AlertDialog.Builder(this);
            builder.setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() { // from class: jg9
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i2) {
                    int i3 = WebViewActivity.f;
                    WebViewActivity webViewActivity = this.b;
                    webViewActivity.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(webViewActivity.getString(R.string.web_view_google_play_link))));
                    webViewActivity.finish();
                }
            });
            builder.setNegativeButton(R.string.later, new DialogInterface.OnClickListener() { // from class: kg9
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i2) {
                    int i3 = WebViewActivity.f;
                    WebViewActivity webViewActivity = this.b;
                    i72.b(webViewActivity, strReplaceAll);
                    webViewActivity.finish();
                }
            });
            builder.setCancelable(false);
            builder.setTitle(R.string.web_view_update_title);
            builder.setMessage(R.string.web_view_update_text);
            builder.show();
            return;
        }
        ImageView imageView = r().btnBack;
        imageView.getClass();
        imageView.setOnClickListener(new lb7(new h4(this, 1)));
        ImageView imageView2 = r().btnCloseWeb;
        imageView2.getClass();
        imageView2.setOnClickListener(new lb7(new aw6(this, i)));
        WebView webView = r().webviewContent;
        WebSettings settings = webView.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setDomStorageEnabled(true);
        settings.setUseWideViewPort(true);
        settings.setLoadWithOverviewMode(true);
        settings.setBuiltInZoomControls(true);
        settings.setDisplayZoomControls(false);
        settings.setSupportZoom(true);
        settings.setDefaultTextEncodingName("utf-8");
        webView.setScrollBarStyle(GroupFlagsKt.HasAuxSlotFlag);
        settings.setSafeBrowsingEnabled(true);
        webView.addJavascriptInterface(new ut0(this), getString(R.string.interface_brandlink_title));
        webView.setWebViewClient(new lg9(this, webView));
        webView.setWebChromeClient(new mg9(this));
        webView.loadUrl(strReplaceAll);
        String stringExtra2 = getIntent().getStringExtra("INFO");
        if (stringExtra2 != null) {
            if (ta8.M(stringExtra2)) {
                r().btnInfo.setVisibility(8);
            } else {
                r().btnInfo.setVisibility(0);
                ImageView imageView3 = r().btnInfo;
                imageView3.getClass();
                imageView3.setOnClickListener(new lb7(new ng9(webView, stringExtra2)));
            }
            j59Var = j59.a;
        }
        if (j59Var == null) {
            r().btnInfo.setVisibility(8);
        }
        ImageView imageView4 = r().btnShare;
        imageView4.getClass();
        imageView4.setOnClickListener(new lb7(new i20(i, webView, strReplaceAll)));
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        r().webviewContent.stopLoading();
        this.c = null;
        super.onDestroy();
    }

    public final LayoutWebviewBinding r() {
        LayoutWebviewBinding layoutWebviewBinding = this.c;
        if (layoutWebviewBinding != null) {
            return layoutWebviewBinding;
        }
        ah.f("Required value was null.");
        return null;
    }

    public final void s(String str, String str2) {
        ViewPropertyAnimator viewPropertyAnimatorAlpha;
        ViewPropertyAnimator viewPropertyAnimatorAlpha2;
        ViewPropertyAnimator viewPropertyAnimatorAnimate = r().pbLoading.animate();
        if (viewPropertyAnimatorAnimate != null && (viewPropertyAnimatorAlpha2 = viewPropertyAnimatorAnimate.alpha(0.0f)) != null) {
            viewPropertyAnimatorAlpha2.start();
        }
        ViewPropertyAnimator viewPropertyAnimatorAnimate2 = r().pbLoading.animate();
        if (viewPropertyAnimatorAnimate2 != null && (viewPropertyAnimatorAlpha = viewPropertyAnimatorAnimate2.alpha(1.0f)) != null) {
            viewPropertyAnimatorAlpha.start();
        }
        this.d = null;
        String string = getString(R.string.interface_brandlink_dispatch, me0.c("'", str, "'"), me0.c("'", str2, "'"));
        string.getClass();
        r().webviewContent.evaluateJavascript(string, new ig9());
    }
}
