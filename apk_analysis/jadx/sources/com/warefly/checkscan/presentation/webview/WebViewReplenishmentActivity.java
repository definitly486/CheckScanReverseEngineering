package com.warefly.checkscan.presentation.webview;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.ImageView;
import androidx.activity.OnBackPressedCallback;
import androidx.compose.runtime.composer.linkbuffer.GroupFlagsKt;
import com.warefly.checkscan.R;
import com.warefly.checkscan.databinding.LayoutWebviewBinding;
import com.warefly.checkscan.presentation.CiceroneActivity;
import defpackage.ah;
import defpackage.ca0;
import defpackage.e;
import defpackage.eh5;
import defpackage.eh9;
import defpackage.fh9;
import defpackage.gh9;
import defpackage.i72;
import defpackage.kd;
import defpackage.lb7;
import defpackage.m2;
import defpackage.np5;
import defpackage.oi9;
import defpackage.op5;
import defpackage.oz1;
import defpackage.pb2;
import java.util.Arrays;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class WebViewReplenishmentActivity extends eh5 implements WebViewReplenishment {
    public static final /* synthetic */ int g = 0;
    public LayoutWebviewBinding d;
    public boolean e;
    public final a f = new a();
    public WebViewReplenishmentPresenter presenter;

    public static final class a extends OnBackPressedCallback {
        public a() {
            super(true);
        }

        @Override // androidx.activity.OnBackPressedCallback
        public final void handleOnBackPressed() {
            pb2.a.getClass();
            long jCurrentTimeMillis = System.currentTimeMillis();
            Map mapSingletonMap = Collections.singletonMap("Closed ", String.format("%02d:%02d:%02d", Arrays.copyOf(new Object[]{Long.valueOf(jCurrentTimeMillis / 3600000), Long.valueOf((jCurrentTimeMillis / 60000) % 60), Long.valueOf((jCurrentTimeMillis / 1000) % 60)}, 3)));
            mapSingletonMap.getClass();
            Map mapSingletonMap2 = Collections.singletonMap("Topup", mapSingletonMap);
            mapSingletonMap2.getClass();
            Map mapSingletonMap3 = Collections.singletonMap("Balance", mapSingletonMap2);
            mapSingletonMap3.getClass();
            new kd.j.a.C0268a.C0269a("Cobrand", mapSingletonMap3).a();
            WebViewReplenishmentActivity webViewReplenishmentActivity = WebViewReplenishmentActivity.this;
            webViewReplenishmentActivity.startActivity(new Intent(webViewReplenishmentActivity.getBaseContext(), (Class<?>) CiceroneActivity.class));
            webViewReplenishmentActivity.finish();
        }
    }

    @Override // com.warefly.checkscan.presentation.webview.WebViewReplenishment
    public final void loadReplenishment(String str) {
        str.getClass();
        ImageView imageView = s().btnBack;
        imageView.getClass();
        imageView.setOnClickListener(new lb7(new np5(this, 1)));
        ImageView imageView2 = s().btnCloseWeb;
        imageView2.getClass();
        imageView2.setOnClickListener(new lb7(new op5(this, 1)));
        WebView webView = s().webviewContent;
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
        webView.setWebViewClient(new eh9(this));
        webView.setWebChromeClient(new fh9(this));
        webView.loadUrl(str);
        ImageView imageView3 = s().btnShare;
        imageView3.getClass();
        imageView3.setOnClickListener(new lb7(new gh9(webView, str)));
    }

    @Override // defpackage.eh5, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.layout_webview);
        View viewFindViewById = findViewById(android.R.id.content);
        viewFindViewById.getClass();
        oi9.a(15, viewFindViewById, true);
        getOnBackPressedDispatcher().addCallback(this, this.f);
        this.d = LayoutWebviewBinding.inflate(getLayoutInflater());
        s().tvLabel.setText(getString(R.string.replenishment_label));
    }

    @Override // defpackage.eh5, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        s().webviewContent.stopLoading();
        this.d = null;
        super.onDestroy();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        super.onPause();
        this.e = false;
    }

    @Override // defpackage.eh5, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        this.e = true;
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseView
    public final void openUrl(String str) {
        str.getClass();
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseView
    public final void openUrlInCustomTab(String str) {
        str.getClass();
        i72.b(getApplicationContext(), str);
    }

    public final WebViewReplenishmentPresenter providePresenter() {
        return new WebViewReplenishmentPresenter((ca0) m2.c(ca0.class, e.e(this), null, null));
    }

    public final LayoutWebviewBinding s() {
        LayoutWebviewBinding layoutWebviewBinding = this.d;
        if (layoutWebviewBinding != null) {
            return layoutWebviewBinding;
        }
        ah.f("Required value was null.");
        return null;
    }

    @Override // com.warefly.checkscan.presentation.webview.WebViewReplenishment
    public final void showSomeError() {
        View rootView = getWindow().getDecorView().getRootView();
        rootView.getClass();
        String string = getString(R.string.some_error);
        string.getClass();
        oz1.h(rootView, string);
    }
}
