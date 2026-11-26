package com.warefly.checkscan.shared.universalWebView.presentation.view;

import android.app.DownloadManager;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.CookieManager;
import android.webkit.DownloadListener;
import android.webkit.GeolocationPermissions;
import android.webkit.PermissionRequest;
import android.webkit.URLUtil;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import androidx.core.content.FileProvider;
import androidx.core.os.BundleCompat;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.google.android.material.appbar.AppBarLayout;
import com.warefly.checkscan.R;
import com.warefly.checkscan.core.ui.base.architecture.BaseFragment;
import com.warefly.checkscan.shared.universalWebView.databinding.FragmentUniversalWebViewBinding;
import com.warefly.checkscan.shared.universalWebView.presentation.UniversalWebViewArgs;
import com.warefly.checkscan.shared.universalWebView.presentation.presenter.UniversalWebViewPresenter;
import com.warefly.checkscan.shared.universalWebView.presentation.view.UniversalWebViewFragment;
import defpackage.aa4;
import defpackage.b9;
import defpackage.bs6;
import defpackage.en2;
import defpackage.fg;
import defpackage.fh8;
import defpackage.gh4;
import defpackage.hg9;
import defpackage.j59;
import defpackage.k57;
import defpackage.kx2;
import defpackage.lb7;
import defpackage.ll3;
import defpackage.m2;
import defpackage.n69;
import defpackage.nl3;
import defpackage.o69;
import defpackage.ol4;
import defpackage.oz1;
import defpackage.qn1;
import defpackage.ra8;
import defpackage.s47;
import defpackage.sf9;
import defpackage.t69;
import defpackage.ta8;
import defpackage.tf9;
import defpackage.vf9;
import defpackage.x07;
import defpackage.x43;
import defpackage.ze4;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class UniversalWebViewFragment extends BaseFragment<FragmentUniversalWebViewBinding> implements UniversalWebViewView {
    public static final a r;
    public static final /* synthetic */ ze4<Object>[] s;
    public WebView n;
    public WebChromeClient.CustomViewCallback o;
    public UniversalWebViewPresenter presenter;
    public final int f = R.layout.fragment_universal_web_view;
    public final ol4 g = new ol4(FragmentUniversalWebViewBinding.class);
    public final fh8 h = new fh8(new b());
    public final en2 i = new en2((s47) m2.c(s47.class, defpackage.e.e(this), null, null));
    public final tf9 j = new tf9(this, new d());
    public final vf9 k = new vf9(this);
    public final fh8 l = new fh8(new c());
    public final fh8 m = new fh8(new h());
    public final i p = new i();
    public final g q = new g();

    public static final class a {
    }

    public static final class b extends gh4 implements ll3<UniversalWebViewArgs> {
        public b() {
            super(0);
        }

        @Override // defpackage.ll3
        public final UniversalWebViewArgs invoke() {
            Bundle arguments = UniversalWebViewFragment.this.getArguments();
            UniversalWebViewArgs universalWebViewArgs = arguments != null ? (UniversalWebViewArgs) BundleCompat.getParcelable(arguments, "UNIVERSAL_WEB_VIEW_ARGS_KEY", UniversalWebViewArgs.class) : null;
            if (universalWebViewArgs != null) {
                return universalWebViewArgs;
            }
            fg.c("UNIVERSAL_WEB_VIEW_ARGS_KEY is required for UniversalWebViewFragment");
            return null;
        }
    }

    public static final class c extends gh4 implements ll3<x43> {
        public c() {
            super(0);
        }

        @Override // defpackage.ll3
        public final x43 invoke() {
            Context contextRequireContext = UniversalWebViewFragment.this.requireContext();
            contextRequireContext.getClass();
            return new x43(contextRequireContext);
        }
    }

    public static final class d extends gh4 implements ll3<j59> {
        public d() {
            super(0);
        }

        @Override // defpackage.ll3
        public final j59 invoke() {
            a aVar = UniversalWebViewFragment.r;
            View view = UniversalWebViewFragment.this.getView();
            if (view != null) {
                oz1.i(R.string.universal_web_view_app_not_found, view);
            }
            return j59.a;
        }
    }

    public static final class e extends gh4 implements nl3<View, j59> {
        public e() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            a aVar = UniversalWebViewFragment.r;
            UniversalWebViewFragment.this.r();
            return j59.a;
        }
    }

    public static final class f extends gh4 implements nl3<View, j59> {
        public f() {
            super(1);
        }

        @Override // defpackage.nl3
        public final j59 invoke(View view) {
            view.getClass();
            UniversalWebViewFragment.this.q().onTryAgainClicked();
            return j59.a;
        }
    }

    public static final class g implements n69.a {
        public g() {
        }

        @Override // n69.a
        public final void a(View view, WebChromeClient.CustomViewCallback customViewCallback) {
            a aVar = UniversalWebViewFragment.r;
            UniversalWebViewFragment universalWebViewFragment = UniversalWebViewFragment.this;
            WebChromeClient.CustomViewCallback customViewCallback2 = universalWebViewFragment.o;
            if (customViewCallback2 != null) {
                customViewCallback2.onCustomViewHidden();
            }
            universalWebViewFragment.o = customViewCallback;
            FrameLayout frameLayout = universalWebViewFragment.p().flFullScreenContainer;
            frameLayout.removeAllViews();
            frameLayout.addView(view, -1, -1);
            frameLayout.setVisibility(0);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$ArrayArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        @Override // n69.a
        public final void b(PermissionRequest permissionRequest) {
            Object aVar;
            vf9 vf9Var = UniversalWebViewFragment.this.k;
            vf9Var.getClass();
            String[] resources = permissionRequest.getResources();
            resources.getClass();
            ArrayList arrayList = new ArrayList();
            int length = resources.length;
            int i = 0;
            while (true) {
                String str = null;
                if (i >= length) {
                    break;
                }
                String str2 = resources[i];
                if (aa4.e(str2, "android.webkit.resource.VIDEO_CAPTURE")) {
                    str = "android.permission.CAMERA";
                } else if (aa4.e(str2, "android.webkit.resource.AUDIO_CAPTURE")) {
                    str = "android.permission.RECORD_AUDIO";
                }
                if (str != null) {
                    arrayList.add(str);
                }
                i++;
            }
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : arrayList) {
                if (!vf9Var.c((String) obj)) {
                    arrayList2.add(obj);
                }
            }
            List listT0 = qn1.t0(qn1.x0(arrayList2));
            if (listT0.isEmpty()) {
                vf9Var.a(permissionRequest);
                return;
            }
            vf9Var.b = permissionRequest;
            try {
                vf9Var.e.launch(listT0.toArray(new String[0]));
                aVar = j59.a;
            } catch (Throwable th) {
                aVar = new k57.a(th);
            }
            if (k57.a(aVar) != null) {
                vf9Var.b = null;
                vf9Var.a(permissionRequest);
            }
        }

        /* JADX WARN: Code duplicated, block: B:11:0x0033  */
        /* JADX WARN: Code duplicated, block: B:46:0x00da  */
        /* JADX WARN: Code duplicated, block: B:50:0x00e1  */
        /* JADX WARN: Code duplicated, block: B:73:0x009c A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r4v17, types: [kx2] */
        /* JADX WARN: Type inference failed for: r4v18, types: [java.util.ArrayList] */
        /* JADX WARN: Type inference failed for: r4v2 */
        /* JADX WARN: Type inference failed for: r4v3 */
        /* JADX WARN: Type inference failed for: r4v4, types: [java.util.List] */
        @Override // n69.a
        public final boolean c(ValueCallback<Uri[]> valueCallback, WebChromeClient.FileChooserParams fileChooserParams) {
            Object aVar;
            Intent intent;
            Object aVar2;
            ?? arrayList;
            Object aVar3;
            Uri uri;
            Intent intent2;
            tf9 tf9Var = UniversalWebViewFragment.this.j;
            tf9Var.getClass();
            tf9Var.d = null;
            try {
                aVar = fileChooserParams.createIntent();
            } catch (Throwable th) {
                aVar = new k57.a(th);
            }
            if (k57.a(aVar) == null) {
                intent = new Intent("android.intent.action.CHOOSER");
                intent.putExtra("android.intent.extra.INTENT", (Intent) aVar);
                Context context = tf9Var.a.getContext();
                if (context != null) {
                    String[] acceptTypes = fileChooserParams.getAcceptTypes();
                    if (acceptTypes != null) {
                        arrayList = new ArrayList();
                        for (String str : acceptTypes) {
                            str.getClass();
                            if (!ta8.M(str)) {
                                arrayList.add(str);
                            }
                        }
                    } else {
                        arrayList = 0;
                    }
                    if (arrayList == 0) {
                        arrayList = kx2.b;
                    }
                    if (!arrayList.isEmpty()) {
                        Iterable iterable = (Iterable) arrayList;
                        if (!(iterable instanceof Collection) || !((Collection) iterable).isEmpty()) {
                            Iterator it = iterable.iterator();
                            while (true) {
                                if (it.hasNext()) {
                                    String str2 = (String) it.next();
                                    str2.getClass();
                                    if (ra8.C(str2, "image/", false) || str2.equals("*/*")) {
                                        if (ContextCompat.checkSelfPermission(context, "android.permission.CAMERA") == 0) {
                                            try {
                                                File file = new File(context.getCacheDir(), "universal_web_view_uploads");
                                                file.mkdirs();
                                                aVar3 = FileProvider.getUriForFile(context, context.getPackageName() + ".universalwebview.fileprovider", File.createTempFile("upload_", ".jpg", file));
                                            } catch (Throwable th2) {
                                                aVar3 = new k57.a(th2);
                                            }
                                            if (k57.a(aVar3) != null) {
                                                aVar3 = null;
                                            }
                                            uri = (Uri) aVar3;
                                            if (uri != null) {
                                                tf9Var.d = uri;
                                                intent2 = new Intent("android.media.action.IMAGE_CAPTURE");
                                                intent2.putExtra("output", uri);
                                                intent2.addFlags(2);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        intent2 = null;
                    } else if (ContextCompat.checkSelfPermission(context, "android.permission.CAMERA") == 0) {
                        File file2 = new File(context.getCacheDir(), "universal_web_view_uploads");
                        file2.mkdirs();
                        aVar3 = FileProvider.getUriForFile(context, context.getPackageName() + ".universalwebview.fileprovider", File.createTempFile("upload_", ".jpg", file2));
                        if (k57.a(aVar3) != null) {
                            aVar3 = null;
                        }
                        uri = (Uri) aVar3;
                        if (uri != null) {
                            intent2 = null;
                        } else {
                            tf9Var.d = uri;
                            intent2 = new Intent("android.media.action.IMAGE_CAPTURE");
                            intent2.putExtra("output", uri);
                            intent2.addFlags(2);
                        }
                    } else {
                        intent2 = null;
                    }
                } else {
                    intent2 = null;
                }
                if (intent2 != null) {
                    intent.putExtra("android.intent.extra.INITIAL_INTENTS", new Intent[]{intent2});
                }
            } else {
                intent = null;
            }
            if (intent == null) {
                return false;
            }
            ValueCallback<Uri[]> valueCallback2 = tf9Var.c;
            tf9Var.c = valueCallback;
            try {
                tf9Var.e.launch(intent);
                if (valueCallback2 != null) {
                    valueCallback2.onReceiveValue(null);
                }
                aVar2 = Boolean.TRUE;
            } catch (Throwable th3) {
                aVar2 = new k57.a(th3);
            }
            if (k57.a(aVar2) != null) {
                tf9Var.c = valueCallback2;
                tf9Var.b.invoke();
                aVar2 = Boolean.FALSE;
            }
            return ((Boolean) aVar2).booleanValue();
        }

        @Override // n69.a
        public final void d(String str) {
            WebView webView;
            UniversalWebViewFragment universalWebViewFragment = UniversalWebViewFragment.this;
            if (universalWebViewFragment.q().onUrlLoading(str) || (webView = universalWebViewFragment.n) == null) {
                return;
            }
            webView.loadUrl(str);
        }

        @Override // n69.a
        public final void e(String str) {
            UniversalWebViewFragment.this.q().onTitleReceived(str);
        }

        @Override // n69.a
        public final void f(String str, GeolocationPermissions.Callback callback) {
            Object aVar;
            vf9 vf9Var = UniversalWebViewFragment.this.k;
            vf9Var.getClass();
            if (callback == null) {
                return;
            }
            int i = 0;
            while (true) {
                String[] strArr = vf9.f;
                if (i >= 2) {
                    vf9Var.c = str;
                    vf9Var.d = callback;
                    try {
                        vf9Var.e.launch(strArr);
                        aVar = j59.a;
                    } catch (Throwable th) {
                        aVar = new k57.a(th);
                    }
                    if (k57.a(aVar) != null) {
                        vf9Var.c = null;
                        vf9Var.d = null;
                        vf9Var.b(str, callback);
                        return;
                    }
                    return;
                }
                if (vf9Var.c(strArr[i])) {
                    vf9Var.b(str, callback);
                    return;
                }
                i++;
            }
        }

        @Override // n69.a
        public final void g(int i) {
            ProgressBar progressBar = UniversalWebViewFragment.this.p().pbPageProgress;
            progressBar.setProgress(i);
            progressBar.setVisibility(i < 100 ? 0 : 8);
        }

        @Override // n69.a
        public final void h() {
            a aVar = UniversalWebViewFragment.r;
            UniversalWebViewFragment universalWebViewFragment = UniversalWebViewFragment.this;
            FrameLayout frameLayout = universalWebViewFragment.p().flFullScreenContainer;
            frameLayout.removeAllViews();
            frameLayout.setVisibility(8);
            WebChromeClient.CustomViewCallback customViewCallback = universalWebViewFragment.o;
            if (customViewCallback != null) {
                customViewCallback.onCustomViewHidden();
            }
            universalWebViewFragment.o = null;
        }
    }

    public static final class h extends gh4 implements ll3<sf9> {
        public h() {
            super(0);
        }

        @Override // defpackage.ll3
        public final sf9 invoke() {
            Context contextRequireContext = UniversalWebViewFragment.this.requireContext();
            contextRequireContext.getClass();
            return new sf9(contextRequireContext);
        }
    }

    public static final class i implements o69.a {
        public i() {
        }

        @Override // o69.a
        public final void a(String str) {
            UniversalWebViewFragment.this.q().onPageStarted(str);
        }

        @Override // o69.a
        public final void b() {
            UniversalWebViewFragment.this.q().onPageFinished();
        }

        @Override // o69.a
        public final void c() {
            a aVar = UniversalWebViewFragment.r;
            UniversalWebViewFragment universalWebViewFragment = UniversalWebViewFragment.this;
            universalWebViewFragment.o();
            universalWebViewFragment.n(null);
            universalWebViewFragment.q().onPageError();
        }

        @Override // o69.a
        public final boolean d(String str) {
            return UniversalWebViewFragment.this.q().onUrlLoading(str);
        }

        @Override // o69.a
        public final void e() {
            UniversalWebViewFragment.this.q().onPageError();
        }
    }

    static {
        bs6 bs6Var = new bs6(UniversalWebViewFragment.class, "binding", "getBinding()Lcom/warefly/checkscan/shared/universalWebView/databinding/FragmentUniversalWebViewBinding;", 0);
        x07.a.getClass();
        s = new ze4[]{bs6Var};
        r = new a();
    }

    @Override // com.warefly.checkscan.shared.universalWebView.presentation.view.UniversalWebViewView
    public final void goBackInHistory() {
        WebView webView = this.n;
        if (webView != null) {
            webView.goBack();
        }
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final int i() {
        return this.f;
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment
    public final boolean k() {
        r();
        return false;
    }

    @Override // com.warefly.checkscan.shared.universalWebView.presentation.view.UniversalWebViewView
    public final void loadUrl(String str) {
        str.getClass();
        WebView webView = this.n;
        if (webView != null) {
            webView.loadUrl(str);
        }
    }

    public final void n(Bundle bundle) {
        WebView webView = new WebView(requireContext());
        p().flWebViewContainer.addView(webView, -1, -1);
        this.n = webView;
        Context contextRequireContext = requireContext();
        contextRequireContext.getClass();
        WebView.setWebContentsDebuggingEnabled((contextRequireContext.getApplicationInfo().flags & 2) != 0);
        WebSettings settings = webView.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setDomStorageEnabled(true);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        settings.setSupportMultipleWindows(true);
        settings.setUseWideViewPort(true);
        settings.setLoadWithOverviewMode(true);
        settings.setSupportZoom(true);
        settings.setBuiltInZoomControls(true);
        settings.setDisplayZoomControls(false);
        settings.setDefaultTextEncodingName("utf-8");
        settings.setMediaPlaybackRequiresUserGesture(false);
        settings.setMixedContentMode(2);
        settings.setCacheMode(-1);
        settings.setAllowFileAccess(false);
        settings.setAllowContentAccess(false);
        settings.setGeolocationEnabled(true);
        webView.setVerticalScrollBarEnabled(true);
        webView.setBackgroundColor(0);
        CookieManager cookieManager = CookieManager.getInstance();
        cookieManager.setAcceptCookie(true);
        cookieManager.setAcceptThirdPartyCookies(webView, true);
        webView.setWebViewClient(new o69(this.i.a(), this.p));
        webView.setWebChromeClient(new n69(this.q));
        webView.setDownloadListener(new DownloadListener() { // from class: q69
            /* JADX WARN: Code duplicated, block: B:33:0x0085  */
            @Override // android.webkit.DownloadListener
            public final void onDownloadStart(String str, String str2, String str3, String str4, long j) {
                int i2;
                DownloadManager downloadManager;
                Object aVar;
                UniversalWebViewFragment.a aVar2 = UniversalWebViewFragment.r;
                UniversalWebViewFragment universalWebViewFragment = this.a;
                if (str != null) {
                    Context context = ((sf9) universalWebViewFragment.m.getValue()).a;
                    boolean zBooleanValue = false;
                    if (URLUtil.isNetworkUrl(str) && (downloadManager = (DownloadManager) ContextCompat.getSystemService(context, DownloadManager.class)) != null) {
                        String strGuessFileName = URLUtil.guessFileName(str, str3, str4);
                        try {
                            DownloadManager.Request request = new DownloadManager.Request(Uri.parse(str));
                            request.setMimeType(str4);
                            if (str2 != null) {
                                request.addRequestHeader("User-Agent", str2);
                            }
                            String cookie = CookieManager.getInstance().getCookie(str);
                            if (cookie != null) {
                                request.addRequestHeader("Cookie", cookie);
                            }
                            request.setNotificationVisibility(1);
                            strGuessFileName.getClass();
                            if (Build.VERSION.SDK_INT >= 29) {
                                request.setDestinationInExternalPublicDir(Environment.DIRECTORY_DOWNLOADS, strGuessFileName);
                            } else {
                                request.setDestinationInExternalFilesDir(context, Environment.DIRECTORY_DOWNLOADS, strGuessFileName);
                            }
                            downloadManager.enqueue(request);
                            aVar = Boolean.TRUE;
                        } catch (Throwable th) {
                            aVar = new k57.a(th);
                        }
                        if (k57.a(aVar) != null) {
                            aVar = Boolean.FALSE;
                        }
                        zBooleanValue = ((Boolean) aVar).booleanValue();
                    }
                    if (zBooleanValue) {
                        i2 = R.string.universal_web_view_download_started;
                    } else {
                        i2 = R.string.universal_web_view_download_failed;
                    }
                } else {
                    i2 = R.string.universal_web_view_download_failed;
                }
                View view = universalWebViewFragment.getView();
                if (view != null) {
                    oz1.i(i2, view);
                }
            }
        });
        fh8 fh8Var = this.h;
        final boolean z = ((UniversalWebViewArgs) fh8Var.getValue()).d;
        webView.setOnScrollChangeListener(new View.OnScrollChangeListener() { // from class: r69
            @Override // android.view.View.OnScrollChangeListener
            public final void onScrollChange(View view, int i2, int i3, int i4, int i5) {
                UniversalWebViewFragment.a aVar = UniversalWebViewFragment.r;
                this.a.p().srlContent.setEnabled(z && i3 == 0);
            }
        });
        if (bundle != null) {
            String string = bundle.getString("UNIVERSAL_WEB_VIEW_CURRENT_URL_KEY");
            if (string == null) {
                string = ((UniversalWebViewArgs) fh8Var.getValue()).b;
            }
            webView.loadUrl(string);
        }
    }

    public final void o() {
        WebView webView = this.n;
        if (webView != null) {
            webView.setWebViewClient(new WebViewClient());
            webView.setWebChromeClient(null);
            webView.setDownloadListener(null);
            webView.setOnScrollChangeListener(null);
            webView.stopLoading();
            ViewParent parent = webView.getParent();
            ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
            if (viewGroup != null) {
                viewGroup.removeView(webView);
            }
            webView.removeAllViews();
            webView.destroy();
        }
        this.n = null;
    }

    @Override // defpackage.fh5, androidx.fragment.app.Fragment
    public final void onDestroyView() {
        tf9 tf9Var = this.j;
        ValueCallback<Uri[]> valueCallback = tf9Var.c;
        if (valueCallback != null) {
            valueCallback.onReceiveValue(null);
        }
        tf9Var.c = null;
        tf9Var.d = null;
        vf9 vf9Var = this.k;
        PermissionRequest permissionRequest = vf9Var.b;
        if (permissionRequest != null) {
            try {
                permissionRequest.deny();
                j59 j59Var = j59.a;
            } catch (Throwable unused) {
            }
        }
        vf9Var.b = null;
        GeolocationPermissions.Callback callback = vf9Var.d;
        if (callback != null) {
            callback.invoke(vf9Var.c, false, false);
        }
        vf9Var.d = null;
        vf9Var.c = null;
        WebChromeClient.CustomViewCallback customViewCallback = this.o;
        if (customViewCallback != null) {
            customViewCallback.onCustomViewHidden();
        }
        this.o = null;
        o();
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public final void onPause() {
        WebView webView = this.n;
        if (webView != null) {
            webView.onPause();
        }
        CookieManager.getInstance().flush();
        super.onPause();
    }

    @Override // defpackage.fh5, androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        WebView webView = this.n;
        if (webView != null) {
            webView.onResume();
        }
    }

    @Override // defpackage.fh5, androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.getClass();
        super.onSaveInstanceState(bundle);
        WebView webView = this.n;
        bundle.putString("UNIVERSAL_WEB_VIEW_CURRENT_URL_KEY", webView != null ? webView.getUrl() : null);
    }

    @Override // com.warefly.checkscan.core.ui.base.architecture.BaseFragment, androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        view.getClass();
        super.onViewCreated(view, bundle);
        FragmentUniversalWebViewBinding fragmentUniversalWebViewBindingP = p();
        AppBarLayout root = fragmentUniversalWebViewBindingP.toolbar.getRoot();
        root.getClass();
        fh8 fh8Var = this.h;
        root.setVisibility(((UniversalWebViewArgs) fh8Var.getValue()).e ? 0 : 8);
        ImageView imageView = fragmentUniversalWebViewBindingP.toolbar.ivBtnBack;
        imageView.getClass();
        imageView.setOnClickListener(new lb7(new e()));
        TextView textView = fragmentUniversalWebViewBindingP.incldError.btnTryAgain;
        textView.getClass();
        textView.setOnClickListener(new lb7(new f()));
        fragmentUniversalWebViewBindingP.srlContent.setEnabled(((UniversalWebViewArgs) fh8Var.getValue()).d);
        fragmentUniversalWebViewBindingP.srlContent.setOnRefreshListener(new b9(this, 6));
        n(bundle);
    }

    @Override // com.warefly.checkscan.shared.universalWebView.presentation.view.UniversalWebViewView
    public final void openInExternalApp(String str) {
        Object aVar;
        View view;
        str.getClass();
        x43 x43Var = (x43) this.l.getValue();
        x43Var.getClass();
        try {
            Intent intentAddCategory = new Intent("android.intent.action.VIEW", Uri.parse(str)).addCategory("android.intent.category.BROWSABLE");
            intentAddCategory.getClass();
            x43Var.a.startActivity(intentAddCategory);
            aVar = Boolean.TRUE;
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        if (k57.a(aVar) != null) {
            aVar = Boolean.FALSE;
        }
        if (((Boolean) aVar).booleanValue() || (view = getView()) == null) {
            return;
        }
        oz1.i(R.string.universal_web_view_app_not_found, view);
    }

    /* JADX WARN: Code duplicated, block: B:33:0x009d  */
    @Override // com.warefly.checkscan.shared.universalWebView.presentation.view.UniversalWebViewView
    public final void openIntentScheme(String str) {
        Object aVar;
        x43.a aVar2;
        View view;
        Object aVar3;
        Object aVar4;
        str.getClass();
        Context context = ((x43) this.l.getValue()).a;
        try {
            aVar = Intent.parseUri(str, 1);
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        Throwable thA = k57.a(aVar);
        x43.a.C0355a c0355a = x43.a.C0355a.a;
        x43.a.c cVar = x43.a.c.a;
        if (thA == null) {
            Intent intentCreateChooser = (Intent) aVar;
            String stringExtra = intentCreateChooser.getStringExtra("browser_fallback_url");
            String str2 = intentCreateChooser.getPackage();
            intentCreateChooser.addCategory("android.intent.category.BROWSABLE");
            intentCreateChooser.setComponent(null);
            intentCreateChooser.setSelector(null);
            intentCreateChooser.removeExtra("browser_fallback_url");
            if (aa4.e(intentCreateChooser.getAction(), "android.intent.action.SEND")) {
                intentCreateChooser = Intent.createChooser(intentCreateChooser, null);
            }
            try {
                context.startActivity(intentCreateChooser);
                aVar3 = cVar;
            } catch (Throwable th2) {
                aVar3 = new k57.a(th2);
            }
            if (k57.a(aVar3) != null) {
                if (stringExtra != null) {
                    aVar3 = new x43.a.b(stringExtra);
                } else if (str2 != null) {
                    try {
                        context.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=".concat(str2))));
                        aVar4 = Boolean.TRUE;
                    } catch (Throwable th3) {
                        aVar4 = new k57.a(th3);
                    }
                    if (k57.a(aVar4) != null) {
                        aVar4 = Boolean.FALSE;
                    }
                    if (((Boolean) aVar4).booleanValue()) {
                        aVar3 = cVar;
                    } else {
                        aVar3 = c0355a;
                    }
                } else {
                    aVar3 = c0355a;
                }
            }
            aVar2 = (x43.a) aVar3;
        } else {
            aVar2 = c0355a;
        }
        if (aVar2.equals(cVar)) {
            return;
        }
        if (aVar2 instanceof x43.a.b) {
            WebView webView = this.n;
            if (webView != null) {
                webView.loadUrl(((x43.a.b) aVar2).a);
                return;
            }
            return;
        }
        if (!aVar2.equals(c0355a) || (view = getView()) == null) {
            return;
        }
        oz1.i(R.string.universal_web_view_app_not_found, view);
    }

    public final FragmentUniversalWebViewBinding p() {
        return (FragmentUniversalWebViewBinding) this.g.getValue(this, s[0]);
    }

    public final UniversalWebViewPresenter providePresenter() {
        return new UniversalWebViewPresenter((UniversalWebViewArgs) this.h.getValue(), new hg9(), (t69) m2.c(t69.class, defpackage.e.e(this), null, null));
    }

    public final UniversalWebViewPresenter q() {
        UniversalWebViewPresenter universalWebViewPresenter = this.presenter;
        if (universalWebViewPresenter != null) {
            return universalWebViewPresenter;
        }
        aa4.j("presenter");
        throw null;
    }

    public final void r() {
        FrameLayout frameLayout = p().flFullScreenContainer;
        frameLayout.getClass();
        if (frameLayout.getVisibility() == 0) {
            FrameLayout frameLayout2 = p().flFullScreenContainer;
            frameLayout2.removeAllViews();
            frameLayout2.setVisibility(8);
            WebChromeClient.CustomViewCallback customViewCallback = this.o;
            if (customViewCallback != null) {
                customViewCallback.onCustomViewHidden();
            }
            this.o = null;
            return;
        }
        UniversalWebViewPresenter universalWebViewPresenterQ = q();
        WebView webView = this.n;
        boolean z = false;
        if (webView != null && webView.canGoBack()) {
            z = true;
        }
        universalWebViewPresenterQ.onBackClicked(z);
    }

    @Override // com.warefly.checkscan.shared.universalWebView.presentation.view.UniversalWebViewView
    public final void showError(boolean z) {
        ConstraintLayout root = p().incldError.getRoot();
        root.getClass();
        root.setVisibility(z ? 0 : 8);
        SwipeRefreshLayout swipeRefreshLayout = p().srlContent;
        swipeRefreshLayout.getClass();
        swipeRefreshLayout.setVisibility(z ? 8 : 0);
        if (z) {
            ProgressBar progressBar = p().pbPageProgress;
            progressBar.getClass();
            progressBar.setVisibility(8);
        }
    }

    @Override // com.warefly.checkscan.shared.universalWebView.presentation.view.UniversalWebViewView
    public final void showLoading(boolean z) {
        ConstraintLayout root = p().incldLoading.getRoot();
        root.getClass();
        root.setVisibility(z ? 0 : 8);
    }

    @Override // com.warefly.checkscan.shared.universalWebView.presentation.view.UniversalWebViewView
    public final void showTitle(String str) {
        str.getClass();
        p().toolbar.tvTitle.setText(str);
    }

    @Override // com.warefly.checkscan.shared.universalWebView.presentation.view.UniversalWebViewView
    public final void stopRefreshing() {
        p().srlContent.setRefreshing(false);
    }
}
