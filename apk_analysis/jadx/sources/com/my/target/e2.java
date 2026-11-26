package com.my.target;

import android.R;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.LayerDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Base64;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.browser.customtabs.CustomTabsCallback;
import androidx.core.view.GravityCompat;
import androidx.media3.common.PlaybackException;
import com.my.target.common.MyTargetActivity;
import com.my.target.d1;
import com.my.target.dl.a;
import com.my.target.e2;
import defpackage.ao9;
import defpackage.cha;
import defpackage.dha;
import defpackage.e5a;
import defpackage.f72;
import defpackage.fk8;
import defpackage.kt9;
import defpackage.l3a;
import defpackage.ln9;
import defpackage.nt9;
import defpackage.ot9;
import defpackage.pda;
import defpackage.pp9;
import defpackage.qfa;
import defpackage.w4a;
import defpackage.y14;
import defpackage.yp0;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: classes4.dex */
public final class e2 {
    public static final WeakHashMap e = new WeakHashMap();
    public static final d1 f = new d1();
    public static kt9 g;
    public static ln9 h;
    public final dha a;
    public final f72 b;
    public final int c;
    public long d = 0;

    public static abstract class a {
        public final ao9 a;

        public a(ao9 ao9Var) {
            this.a = ao9Var;
        }

        public abstract boolean a(Context context);
    }

    public static final class b extends a {
        public final String b;
        public final String c;
        public final HashMap d;
        public final int e;

        public b(ao9 ao9Var, String str, String str2, HashMap map, int i) {
            super(ao9Var);
            this.b = str;
            this.c = str2;
            this.d = map;
            this.e = i;
        }

        /* JADX WARN: Code restructure failed: missing block: B:38:0x006b, code lost:
        
            if ((r4 == null ? false : defpackage.y14.n(r13, null, null, null, r4)) == false) goto L39;
         */
        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.my.target.e2.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean a(android.content.Context r13) {
            /*
                r12 = this;
                ao9 r0 = r12.a
                java.lang.String r1 = r0.m
                n4a r2 = r0.a
                java.lang.String r3 = "store"
                boolean r1 = r3.equals(r1)
                r3 = 0
                if (r1 != 0) goto L11
                goto L6d
            L11:
                int r1 = android.os.Build.VERSION.SDK_INT
                r4 = 30
                r6 = 0
                if (r1 < r4) goto L20
                boolean r1 = r0.u
                if (r1 == 0) goto L1d
                goto L20
            L1d:
                r1 = r6
                r4 = r1
                goto L30
            L20:
                java.lang.String r1 = r0.D
                if (r1 != 0) goto L25
                goto L6d
            L25:
                android.content.pm.PackageManager r4 = r13.getPackageManager()
                android.content.Intent r4 = r4.getLaunchIntentForPackage(r1)
                if (r4 != 0) goto L30
                goto L6d
            L30:
                java.lang.String r5 = r0.E
                r7 = 0
                if (r5 != 0) goto L39
                java.util.WeakHashMap r5 = com.my.target.e2.e
                r5 = r3
                goto L46
            L39:
                java.util.WeakHashMap r8 = com.my.target.e2.e
                if (r1 != 0) goto L42
                boolean r5 = defpackage.y14.n(r13, r5, r7, r7, r7)
                goto L46
            L42:
                boolean r5 = defpackage.y14.n(r13, r5, r1, r7, r7)
            L46:
                r11 = 1
                r8 = 2
                if (r5 == 0) goto L50
                java.lang.String r12 = "deeplinkClick"
                com.my.target.m1.d(r2, r12, r8, r6)
                return r11
            L50:
                java.lang.String r5 = r0.C
                if (r5 != 0) goto L56
                r1 = r3
                goto L61
            L56:
                if (r1 != 0) goto L5d
                boolean r1 = defpackage.y14.n(r13, r5, r7, r7, r7)
                goto L61
            L5d:
                boolean r1 = defpackage.y14.n(r13, r5, r1, r7, r7)
            L61:
                if (r1 != 0) goto L6e
                if (r4 != 0) goto L67
                r13 = r3
                goto L6b
            L67:
                boolean r13 = defpackage.y14.n(r13, r6, r6, r6, r4)
            L6b:
                if (r13 != 0) goto L6e
            L6d:
                return r3
            L6e:
                java.lang.String r13 = r12.c
                java.util.HashMap r1 = r12.d
                com.my.target.m1.e(r2, r13, r1, r8)
                java.lang.String r7 = r12.b
                if (r7 == 0) goto L8e
                boolean r13 = defpackage.y14.x(r7)
                if (r13 != 0) goto L8e
                pp9 r9 = r0.Q
                pda r5 = new pda
                int r8 = r12.e
                r10 = r6
                r5.<init>(r6, r7, r8, r9, r10)
                java.util.concurrent.ExecutorService r12 = defpackage.w4a.d
                r12.execute(r5)
            L8e:
                return r11
            */
            throw new UnsupportedOperationException("Method not decompiled: com.my.target.e2.b.a(android.content.Context):boolean");
        }
    }

    public static final class c extends e {
        @Override // com.my.target.e2.e, com.my.target.e2.a
        public final boolean a(Context context) {
            if (!y14.n(context, this.b, null, null, null)) {
                return super.a(context);
            }
            this.c.a();
            return true;
        }
    }

    public static class d extends a {
        public final String b;
        public final f72 c;

        public d(String str, ao9 ao9Var, f72 f72Var) {
            super(ao9Var);
            this.b = str;
            this.c = f72Var;
        }

        @Override // com.my.target.e2.a
        public final boolean a(Context context) {
            try {
                new com.my.target.e(this.b, this.c, context).b.show();
                return true;
            } catch (Throwable unused) {
                y14.u(null, "WebFormView: Unable to start WebForm dialog");
                return false;
            }
        }
    }

    public static class e extends a {
        public final String b;
        public final dha c;

        public e(dha dhaVar, String str, ao9 ao9Var) {
            super(ao9Var);
            this.c = dhaVar;
            this.b = str;
        }

        @Override // com.my.target.e2.a
        public boolean a(Context context) {
            boolean zN;
            boolean zEquals = context.getPackageName().equals("ru.mail.browser");
            String str = this.b;
            if (zEquals) {
                Bundle bundle = new Bundle();
                bundle.putString("com.android.browser.application_id", "ru.mail.browser");
                zN = y14.n(context, str, "ru.mail.browser", bundle, null);
            } else {
                zN = false;
            }
            dha dhaVar = this.c;
            if (zN) {
                dhaVar.a();
                return true;
            }
            if (!this.a.s) {
                w4a.c(new fk8(2, this, context));
                return true;
            }
            dhaVar.a();
            WeakHashMap weakHashMap = e2.e;
            return y14.n(context, str, null, null, null);
        }
    }

    public static final class f implements MyTargetActivity.a {
        public final String a;
        public dl b;

        public f(String str) {
            this.a = str;
        }

        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        @Override // com.my.target.common.MyTargetActivity.a
        public final void f(MyTargetActivity myTargetActivity, Intent intent, FrameLayout frameLayout) {
            myTargetActivity.setTheme(R.style.Theme.Light.NoTitleBar);
            Window window = myTargetActivity.getWindow();
            window.addFlags(Integer.MIN_VALUE);
            window.setStatusBarColor(-12232092);
            try {
                dl dlVar = new dl(myTargetActivity);
                this.b = dlVar;
                frameLayout.addView(dlVar);
                dl dlVar2 = this.b;
                h1 h1Var = dlVar2.l;
                WebSettings settings = h1Var.getSettings();
                if (settings != null) {
                    settings.setJavaScriptEnabled(true);
                    settings.setLoadWithOverviewMode(true);
                    settings.setUseWideViewPort(true);
                    settings.setBuiltInZoomControls(true);
                    settings.setDisplayZoomControls(false);
                    settings.setAllowFileAccessFromFileURLs(false);
                    settings.setAllowUniversalAccessFromFileURLs(false);
                    settings.setDomStorageEnabled(true);
                }
                h1Var.setWebViewClient(new nt9(dlVar2));
                h1Var.setWebChromeClient(new ot9(dlVar2));
                View view = dlVar2.h;
                FrameLayout frameLayout2 = dlVar2.i;
                FrameLayout frameLayout3 = dlVar2.g;
                ProgressBar progressBar = dlVar2.m;
                TextView textView = dlVar2.e;
                RelativeLayout relativeLayout = dlVar2.k;
                LinearLayout linearLayout = dlVar2.d;
                ImageButton imageButton = dlVar2.c;
                TextView textView2 = dlVar2.f;
                ImageButton imageButton2 = dlVar2.j;
                dlVar2.setOrientation(1);
                dlVar2.setGravity(16);
                dl.a aVar = dlVar2.new a();
                h1Var.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
                TypedValue typedValue = new TypedValue();
                l3a l3aVar = dlVar2.b;
                int iComplexToDimensionPixelSize = dlVar2.getContext().getTheme().resolveAttribute(R.attr.actionBarSize, typedValue, true) ? TypedValue.complexToDimensionPixelSize(typedValue.data, dlVar2.getResources().getDisplayMetrics()) : l3aVar.b(50.0f);
                relativeLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, iComplexToDimensionPixelSize));
                frameLayout3.setLayoutParams(new LinearLayout.LayoutParams(iComplexToDimensionPixelSize, iComplexToDimensionPixelSize));
                int i = dl.o;
                frameLayout3.setId(i);
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
                layoutParams.gravity = 17;
                imageButton.setLayoutParams(layoutParams);
                int i2 = iComplexToDimensionPixelSize / 4;
                int iB = l3aVar.b(2.0f);
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i2, i2, Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(bitmapCreateBitmap);
                Paint paint = new Paint();
                paint.setStrokeWidth(iB);
                paint.setAntiAlias(true);
                paint.setColor(-7829368);
                paint.setStrokeCap(Paint.Cap.BUTT);
                paint.setStyle(Paint.Style.STROKE);
                float f = i2;
                canvas.drawLine(0.0f, 0.0f, f, f, paint);
                canvas.drawLine(0.0f, f, f, 0.0f, paint);
                imageButton.setImageBitmap(bitmapCreateBitmap);
                imageButton.setContentDescription("Close");
                imageButton.setOnClickListener(aVar);
                RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(iComplexToDimensionPixelSize, iComplexToDimensionPixelSize);
                layoutParams2.addRule(21);
                frameLayout2.setLayoutParams(layoutParams2);
                int i3 = dl.p;
                frameLayout2.setId(i3);
                FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-1, -1);
                layoutParams3.gravity = 17;
                imageButton2.setLayoutParams(layoutParams3);
                dlVar2.getContext();
                byte[] bArrDecode = Base64.decode("iVBORw0KGgoAAAANSUhEUgAAAGAAAABgCAQAAABIkb+zAAAAAmJLR0QAAKqNIzIAAAAJcEhZcwAACxMAAAsTAQCanBgAAAAHdElNRQfgAR0KGztQKbC4AAAA8UlEQVR42u2aQQ6EMAzE6IhH8wR+DfeVoCAySRfs82plQ0FNxTQBAAAAAMBXab0frFut4NIeBFTLX4lo4+ufJ+i1z8BI1//sHvz9HSCAAAIIIIAAAiqZo/bl0Vzdi7GECCCAAAJGDlg392wtr77/eEBufXeC/PreBGXoOxOUo+9LUJa+K0F5+p4EZeo7EpSrH5+gbP3oBOXrxyaoQj8yQTX6cQmq0o9KUJ1+TML89A+Ozot+1VznSkxkBBBAAAEEEEAAAQQQ4J8HeqPH3f3+UDMxS4iAgDXt5cVf7iruvVJx/Tuv0aWN//k9AAAAAAB8lx0xVUXCRDTw+wAAAABJRU5ErkJggg==", 0);
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inDensity = 640;
                options.inTargetDensity = l3a.a.b;
                imageButton2.setImageBitmap(BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length, options));
                imageButton2.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                imageButton2.setContentDescription("Open outside");
                imageButton2.setOnClickListener(aVar);
                l3a.h(imageButton, 0, -3355444);
                l3a.h(imageButton2, 0, -3355444);
                RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-2, -2);
                layoutParams4.addRule(15, -1);
                layoutParams4.addRule(1, i);
                layoutParams4.addRule(0, i3);
                linearLayout.setLayoutParams(layoutParams4);
                linearLayout.setOrientation(1);
                linearLayout.setPadding(l3aVar.b(4.0f), l3aVar.b(4.0f), l3aVar.b(4.0f), l3aVar.b(4.0f));
                LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-2, -2);
                textView2.setVisibility(8);
                textView2.setLayoutParams(layoutParams5);
                textView2.setTextColor(-16777216);
                textView2.setTextSize(2, 18.0f);
                textView2.setSingleLine();
                TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.MIDDLE;
                textView2.setEllipsize(truncateAt);
                textView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
                textView.setSingleLine();
                textView.setTextSize(2, 12.0f);
                textView.setEllipsize(truncateAt);
                ClipDrawable clipDrawable = new ClipDrawable(new ColorDrawable(-16537100), GravityCompat.START, 1);
                ColorDrawable colorDrawable = new ColorDrawable(-1968642);
                LayerDrawable layerDrawable = (LayerDrawable) progressBar.getProgressDrawable();
                layerDrawable.setDrawableByLayerId(R.id.background, colorDrawable);
                layerDrawable.setDrawableByLayerId(R.id.progress, clipDrawable);
                progressBar.setProgressDrawable(layerDrawable);
                progressBar.setLayoutParams(new LinearLayout.LayoutParams(-1, l3aVar.b(2.0f)));
                progressBar.setProgress(0);
                linearLayout.addView(textView2);
                linearLayout.addView(textView);
                frameLayout3.addView(imageButton);
                frameLayout2.addView(imageButton2);
                relativeLayout.addView(frameLayout3);
                relativeLayout.addView(linearLayout);
                relativeLayout.addView(frameLayout2);
                dlVar2.addView(relativeLayout);
                view.setBackgroundColor(-5592406);
                ViewGroup.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(-1, 1);
                view.setVisibility(8);
                view.setLayoutParams(layoutParams6);
                dlVar2.addView(progressBar);
                dlVar2.addView(view);
                dlVar2.addView(h1Var);
                this.b.setUrl(this.a);
                this.b.setListener(new yp0(myTargetActivity, 6));
            } catch (Throwable th) {
                y14.u(null, "ClickHandler: Error - " + th.getMessage());
                myTargetActivity.finish();
            }
        }

        @Override // com.my.target.common.MyTargetActivity.a
        public final void h() {
        }

        @Override // com.my.target.common.MyTargetActivity.a
        public final boolean i() {
            dl dlVar = this.b;
            if (dlVar == null) {
                return true;
            }
            h1 h1Var = dlVar.l;
            h1Var.getClass();
            try {
                WebView webView = h1Var.b;
                if (webView != null && webView.canGoBack()) {
                    WebView webView2 = this.b.l.b;
                    if (webView2 == null) {
                        return false;
                    }
                    try {
                        webView2.goBack();
                        return false;
                    } catch (Throwable th) {
                        h1.c(th);
                        return false;
                    }
                }
            } catch (Throwable th2) {
                h1.c(th2);
            }
            return true;
        }

        @Override // com.my.target.common.MyTargetActivity.a
        public final void j(MyTargetActivity myTargetActivity) {
        }

        @Override // com.my.target.common.MyTargetActivity.a
        public final void k() {
        }

        @Override // com.my.target.common.MyTargetActivity.a
        public final void p() {
            dl dlVar = this.b;
            if (dlVar == null) {
                return;
            }
            h1 h1Var = dlVar.l;
            h1Var.setWebChromeClient(null);
            h1Var.a(0);
            this.b = null;
        }

        @Override // com.my.target.common.MyTargetActivity.a
        public final void q() {
        }
    }

    public e2(f72 f72Var) {
        kt9 kt9Var = g;
        int i = qfa.i;
        if (i == 0) {
            try {
                y14.r(null, "CustomTabsFacade: custom tabs found: ".concat(CustomTabsCallback.class.getName()));
                i = 1;
            } catch (Throwable unused) {
                i = 2;
            }
            qfa.i = i;
        }
        dha qfaVar = qfa.h;
        if (kt9Var != null && i == 1) {
            try {
                qfaVar = new qfa(w4a.g, kt9Var);
            } catch (Throwable unused2) {
            }
        } else if (kt9Var == null) {
            y14.r(null, "CustomTabsFacade: sac==null");
        }
        this.a = qfaVar;
        this.b = f72Var;
        this.c = 10;
    }

    public final void a(ao9 ao9Var, int i, cha chaVar, Context context) {
        String strE;
        ao9Var.Q.b(null, 2, 3, 7000, cha.a(chaVar));
        if (SystemClock.elapsedRealtime() - this.d < 800) {
            ao9Var.Q.d(2, 7005, "too-many-clicks");
            return;
        }
        if (i == 2) {
            strE = ao9Var.e();
            if (strE == null) {
                strE = ao9Var.F;
                i = 1;
            }
        } else {
            strE = ao9Var.F;
        }
        d(ao9Var, strE, i, chaVar, context);
    }

    public final void b(ao9 ao9Var, String str, int i, cha chaVar, Context context) {
        ao9Var.Q.b(null, 2, 3, 7000, cha.a(chaVar));
        if (SystemClock.elapsedRealtime() - this.d < 800) {
            ao9Var.Q.d(2, 7005, "too-many-clicks");
        } else {
            d(ao9Var, str, i, chaVar, context);
        }
    }

    public final void c(String str, ao9 ao9Var, cha chaVar, Context context) {
        a eVar;
        byte b2 = 2;
        m1.d(ao9Var.a, "urlResolved", 2, null);
        y14.r(null, "WebViewReachability: url resolved");
        String str2 = ao9Var.m;
        str2.getClass();
        switch (str2.hashCode()) {
            case 117588:
                b2 = !str2.equals("web") ? (byte) -1 : (byte) 0;
                break;
            case 109770977:
                b2 = !str2.equals("store") ? (byte) -1 : (byte) 1;
                break;
            case 1223953944:
                if (!str2.equals("webform")) {
                    b2 = -1;
                }
                break;
            default:
                b2 = -1;
                break;
        }
        switch (b2) {
            case 0:
            case 1:
                boolean zX = y14.x(str);
                dha dhaVar = this.a;
                eVar = !zX ? new e(dhaVar, str, ao9Var) : new c(dhaVar, str, ao9Var);
                break;
            case 2:
                eVar = new d(str, ao9Var, this.b);
                break;
            default:
                return;
        }
        boolean zA = eVar.a(context);
        this.d = SystemClock.elapsedRealtime();
        pp9 pp9Var = ao9Var.Q;
        if (zA) {
            pp9Var.b(null, 2, 3, 7002, cha.a(chaVar));
        } else {
            pp9Var.b(null, 2, 3, PlaybackException.ERROR_CODE_VIDEO_FRAME_PROCESSING_FAILED, cha.a(chaVar));
        }
    }

    public final void d(final ao9 ao9Var, String str, int i, final cha chaVar, final Context context) {
        String string;
        WeakHashMap weakHashMap = e;
        if (weakHashMap.containsKey(ao9Var)) {
            ao9Var.Q.d(2, 7005, "nested-call");
            return;
        }
        String str2 = "click";
        if (i == 2 && ao9Var.e() != null && (str == null || !str.equals(ao9Var.F))) {
            str2 = "ctaClick";
        }
        String str3 = str2;
        HashMap map = new HashMap();
        if (str == null || !(str.equals(ao9Var.F) || str.equals(ao9Var.e()))) {
            string = str;
        } else {
            Uri.Builder builderBuildUpon = Uri.parse(str).buildUpon();
            for (Map.Entry entry : map.entrySet()) {
                builderBuildUpon.appendQueryParameter((String) entry.getKey(), (String) entry.getValue());
            }
            string = builderBuildUpon.build().toString();
        }
        final String str4 = string;
        if (new b(ao9Var, str4, str3, map, this.c).a(context)) {
            this.d = SystemClock.elapsedRealtime();
            ao9Var.Q.b(null, 2, 3, 7002, cha.a(chaVar));
            return;
        }
        m1.e(ao9Var.a, str3, map, 2);
        y14.r(null, "WebViewReachability: banner clicked");
        if (str4 == null) {
            return;
        }
        boolean z = ao9Var.t;
        dha dhaVar = this.a;
        if (z || y14.x(str4)) {
            if (g != null) {
                dhaVar.b();
            }
            w4a.c(new Runnable() { // from class: oda
                @Override // java.lang.Runnable
                public final void run() {
                    this.b.c(str4, ao9Var, chaVar, context);
                }
            });
        } else {
            weakHashMap.put(ao9Var, Boolean.TRUE);
            w4a.d.execute(new pda(dhaVar, str4, this.c, ao9Var.Q, new e5a() { // from class: nda
                @Override // defpackage.e5a
                public final void accept(Object obj) {
                    String str5;
                    d1.a aVar = (d1.a) obj;
                    if (aVar == null || !aVar.a() || (str5 = aVar.b) == null) {
                        str5 = null;
                    }
                    ao9 ao9Var2 = ao9Var;
                    if (str5 != null) {
                        this.b.c(str5, ao9Var2, chaVar, context);
                    }
                    e2.e.remove(ao9Var2);
                }
            }));
        }
    }
}
