package com.tapjoy;

import android.R;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.media3.common.C;
import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.yh8;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class TJSplitWebView extends RelativeLayout {
    public final int A;
    public boolean B;
    public int C;
    public TJWebView a;
    public h0 b;
    public h0 c;
    public String d;
    public String e;
    public String f;
    public Uri g;
    public HashSet h;
    public final JSONObject i;
    public TJAdUnitJSBridge j;
    public final Context k;
    public final Boolean l;
    public final boolean m;
    public RelativeLayout n;
    public FrameLayout o;
    public ProgressBar p;
    public TextView q;
    public TJImageButton r;
    public TJImageButton s;
    public final String t;
    public boolean u;
    public String v;
    public String w;
    public String x;
    public final int y;
    public final int z;

    public TJSplitWebView(Context context, JSONObject jSONObject, int i, TJAdUnitJSBridge tJAdUnitJSBridge) {
        String strOptString;
        int i2;
        String str;
        boolean zOptBoolean;
        boolean z;
        int i3;
        int iOptInt;
        String strOptString2;
        String str2;
        String str3;
        boolean z2;
        boolean zOptBoolean2;
        super(context);
        this.y = 2;
        this.z = 40;
        this.B = false;
        this.C = -1;
        this.j = tJAdUnitJSBridge;
        this.k = context;
        this.A = i;
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(TJAdUnitConstants.String.SPLIT_VIEW_LAYOUT);
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray(TJAdUnitConstants.String.SPLIT_VIEW_EXIT_HOSTS);
        JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject(TJAdUnitConstants.String.SPLIT_VIEW_ERROR_DIALOG_STRINGS);
        this.t = jSONObject.optString(TJAdUnitConstants.String.SPLIT_VIEW_URL_FOR_EXTERNAL_OPEN);
        this.i = jSONObject.optJSONObject(TJAdUnitConstants.String.SPLIT_VIEW_ANIMATION);
        setLayoutOption(jSONObjectOptJSONObject);
        setExitHosts(jSONArrayOptJSONArray);
        setErrorDialog(jSONObjectOptJSONObject2);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        TJWebView tJWebView = new TJWebView(context);
        this.a = tJWebView;
        tJWebView.setId(TapjoyUtil.generateViewId());
        this.a.setBackgroundColor(-1);
        this.a.getSettings().setUseWideViewPort(true);
        this.a.setWebViewClient(new i0(this));
        this.l = Boolean.valueOf(jSONObject.optBoolean(TJAdUnitConstants.String.SPLIT_VIEW_SHOW_TOOLBAR));
        this.m = jSONObject.optBoolean(TJAdUnitConstants.String.SPLIT_VIEW_SHOW_URL, true);
        ArrayList arrayList = new ArrayList();
        for (int i4 = 0; i4 < 4; i4++) {
            arrayList.add(5);
        }
        JSONObject jSONObjectOptJSONObject3 = jSONObject.optJSONObject(TJAdUnitConstants.String.APPEARANCE);
        String strOptString3 = "#ffffff";
        String strOptString4 = "#dddddd";
        String strOptString5 = "#5d95ff";
        String strOptString6 = "";
        if (jSONObjectOptJSONObject3 != null) {
            JSONObject jSONObjectOptJSONObject4 = jSONObjectOptJSONObject3.optJSONObject(TJAdUnitConstants.String.TOOLBAR);
            if (jSONObjectOptJSONObject4 != null) {
                this.l = Boolean.valueOf(jSONObjectOptJSONObject4.optBoolean("show", false));
                strOptString3 = jSONObjectOptJSONObject4.optString("background", "#ffffff");
                strOptString4 = jSONObjectOptJSONObject4.optString(TJAdUnitConstants.String.BOUNDARY, "#dddddd");
                this.z = jSONObjectOptJSONObject4.optInt(TJAdUnitConstants.String.HEIGHT, 40);
            }
            JSONObject jSONObjectOptJSONObject5 = jSONObjectOptJSONObject3.optJSONObject(TJAdUnitConstants.String.TITLE);
            if (jSONObjectOptJSONObject5 != null) {
                String strOptString7 = jSONObjectOptJSONObject5.optString("foreground", "#5d95ff");
                strOptString6 = jSONObjectOptJSONObject5.optString("text");
                int iOptInt2 = jSONObjectOptJSONObject5.optInt(TJAdUnitConstants.String.SIZE, 14);
                String strOptString8 = jSONObjectOptJSONObject5.optString(TJAdUnitConstants.String.WEIGHT, "semibold");
                zOptBoolean = jSONObjectOptJSONObject5.optBoolean(TJAdUnitConstants.String.ALLOW_TAP, false);
                zOptBoolean2 = jSONObjectOptJSONObject5.optBoolean(TJAdUnitConstants.String.SHOW_LINK, false);
                str2 = strOptString7;
                str = strOptString8;
                i2 = iOptInt2;
            } else {
                zOptBoolean2 = false;
                zOptBoolean = false;
                str = "semibold";
                i2 = 14;
                str2 = "#5d95ff";
            }
            JSONObject jSONObjectOptJSONObject6 = jSONObjectOptJSONObject3.optJSONObject(TJAdUnitConstants.String.CLOSE_BUTTON);
            boolean z3 = zOptBoolean2;
            if (jSONObjectOptJSONObject6 != null) {
                strOptString2 = jSONObjectOptJSONObject6.optString("foreground", "#000000");
                int iOptInt3 = jSONObjectOptJSONObject6.optInt(TJAdUnitConstants.String.EDGE_OFFSET, 10);
                JSONArray jSONArrayOptJSONArray2 = jSONObjectOptJSONObject6.optJSONArray(TJAdUnitConstants.String.INSETS);
                if (jSONArrayOptJSONArray2 != null && jSONArrayOptJSONArray2.length() > 0) {
                    arrayList.clear();
                    for (int i5 = 0; i5 < jSONArrayOptJSONArray2.length(); i5++) {
                        int iOptInt4 = jSONArrayOptJSONArray2.optInt(i5, -1);
                        if (iOptInt4 >= 0) {
                            arrayList.add(Integer.valueOf(iOptInt4));
                        }
                    }
                }
                i3 = iOptInt3;
            } else {
                strOptString3 = strOptString3;
                strOptString2 = "#000000";
                i3 = 10;
            }
            JSONObject jSONObjectOptJSONObject7 = jSONObjectOptJSONObject3.optJSONObject(TJAdUnitConstants.String.PROGRESS_BAR);
            if (jSONObjectOptJSONObject7 != null) {
                strOptString5 = jSONObjectOptJSONObject7.optString("foreground", "#5d95ff");
                this.y = jSONObjectOptJSONObject7.optInt(TJAdUnitConstants.String.HEIGHT, 2);
            }
            JSONObject jSONObjectOptJSONObject8 = jSONObjectOptJSONObject3.optJSONObject(TJAdUnitConstants.String.NAVIGATION_BUTTONS);
            if (jSONObjectOptJSONObject8 != null) {
                boolean zOptBoolean3 = jSONObjectOptJSONObject8.optBoolean("show", true);
                String strOptString9 = jSONObjectOptJSONObject8.optString(TJAdUnitConstants.String.FOREGROUND_ACTIVE, "#000000");
                strOptString = jSONObjectOptJSONObject8.optString(TJAdUnitConstants.String.FOREGROUND_INACTIVE, "#bbbbbb");
                iOptInt = jSONObjectOptJSONObject8.optInt(TJAdUnitConstants.String.EDGE_OFFSET, 10);
                z = zOptBoolean3;
                str3 = strOptString9;
            } else {
                strOptString = "#bbbbbb";
                z = true;
                iOptInt = 10;
                str3 = "#000000";
            }
            z2 = z3;
        } else {
            layoutParams = layoutParams;
            strOptString = "#bbbbbb";
            i2 = 14;
            strOptString3 = "#ffffff";
            strOptString4 = "#dddddd";
            strOptString5 = "#5d95ff";
            str = "semibold";
            zOptBoolean = false;
            z = true;
            i3 = 10;
            iOptInt = 10;
            strOptString2 = "#000000";
            str2 = strOptString5;
            strOptString6 = "";
            str3 = strOptString2;
            z2 = false;
        }
        if (this.l.booleanValue()) {
            addToolbar(strOptString3, this.z, str2, strOptString6, i2, str, zOptBoolean, z2, strOptString2, i3, arrayList, z, str3, strOptString, iOptInt);
            addLineBreak(strOptString4);
            addProgressBar(strOptString5);
            this.a.setWebChromeClient(new f0(this));
        }
        addView(this.a, layoutParams);
        b();
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0045  */
    /* JADX WARN: Code duplicated, block: B:22:0x004b  */
    public final void a(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        h0 h0Var = i <= i2 ? this.b : this.c;
        TJDeviceUtils tJDeviceUtils = TJDeviceUtils.INSTANCE;
        int screenRotation = tJDeviceUtils.getScreenRotation(this.k, i, i2);
        float density = tJDeviceUtils.getDensity(getContext());
        if (screenRotation != 0) {
            if (screenRotation == 90) {
                i5 = (int) (this.A * density);
                i3 = 0;
                i4 = 0;
            } else if (screenRotation != 270) {
                i3 = 0;
            } else {
                i4 = (int) (this.A * density);
                i3 = 0;
                i5 = 0;
            }
            if (h0Var == null) {
                this.a.setVisibility(4);
                return;
            }
            double d = i;
            i6 = (int) (h0Var.a * d);
            double d2 = i2;
            int i7 = (int) (h0Var.b * d2);
            if (i6 != 0 || i7 == 0) {
                this.a.setVisibility(4);
            }
            int i8 = (int) (h0Var.c * d);
            int i9 = i5;
            int i10 = (int) (d2 * h0Var.d);
            int i11 = (i - i6) - i8;
            int i12 = (i2 - i7) - i10;
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.a.getLayoutParams();
            layoutParams.width = i6;
            layoutParams.height = i7;
            Boolean bool = this.l;
            if (bool == null || !bool.booleanValue()) {
                layoutParams.setMargins(i8 + i4, i10 + i3, i11 + i9, i12);
            } else {
                int height = this.o.getHeight() + ((int) (this.z * density));
                RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.n.getLayoutParams();
                int i13 = i8 + i4;
                int i14 = i11 + i9;
                layoutParams2.setMargins(i13, i10 + i3, i14, i12);
                this.n.setLayoutParams(layoutParams2);
                layoutParams.setMargins(i13, i10 + height + i3, i14, i12);
                RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(i6, (int) (this.y * density));
                layoutParams3.setMargins(i13, layoutParams.topMargin - this.p.getHeight(), i14, i12);
                this.p.setLayoutParams(layoutParams3);
                this.o.setLayoutParams(layoutParams3);
            }
            this.a.setLayoutParams(layoutParams);
            this.a.setVisibility(0);
            float f = h0Var.e;
            if (f <= 0.0f) {
                this.a.setBackground(null);
                this.a.setClipToOutline(false);
                Boolean bool2 = this.l;
                if (bool2 == null || !bool2.booleanValue()) {
                    return;
                }
                this.n.setClipToOutline(false);
                return;
            }
            float[] fArr = new float[8];
            float f2 = f * getResources().getDisplayMetrics().density;
            Boolean bool3 = this.l;
            if (bool3 != null && bool3.booleanValue()) {
                this.n.setOutlineProvider(new g0(f2));
                this.n.setClipToOutline(true);
                return;
            }
            Arrays.fill(fArr, f2);
            ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(fArr, null, null));
            shapeDrawable.getPaint().setColor(-1);
            this.a.setBackground(shapeDrawable);
            this.a.setClipToOutline(true);
            return;
        }
        i3 = (int) (this.A * density);
        i5 = 0;
        i4 = 0;
        if (h0Var == null) {
            this.a.setVisibility(4);
            return;
        }
        double d3 = i;
        i6 = (int) (h0Var.a * d3);
        double d4 = i2;
        int i15 = (int) (h0Var.b * d4);
        if (i6 != 0) {
        }
        this.a.setVisibility(4);
    }

    public void addLineBreak(String str) {
        FrameLayout frameLayout = new FrameLayout(getContext());
        this.o = frameLayout;
        frameLayout.setBackgroundColor(Color.parseColor(str));
        addView(this.o);
    }

    public void addProgressBar(String str) {
        ProgressBar progressBar = new ProgressBar(this.k, null, R.attr.progressBarStyleHorizontal);
        this.p = progressBar;
        progressBar.setMax(100);
        this.p.setProgressTintList(ColorStateList.valueOf(Color.parseColor(str)));
        this.p.setProgressBackgroundTintList(ColorStateList.valueOf(Color.parseColor("#dddddd")));
        addView(this.p);
    }

    public void addToolbar(String str, int i, String str2, String str3, int i2, String str4, boolean z, boolean z2, String str5, int i3, List<Integer> list, boolean z3, String str6, String str7, int i4) {
        int i5;
        RelativeLayout relativeLayout = new RelativeLayout(this.k);
        this.n = relativeLayout;
        relativeLayout.setId(TapjoyUtil.generateViewId());
        this.n.setFocusable(true);
        this.n.setClickable(true);
        TJDeviceUtils tJDeviceUtils = TJDeviceUtils.INSTANCE;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, (int) (tJDeviceUtils.getDensity(this.k) * i));
        layoutParams.addRule(6);
        this.n.setBackgroundColor(Color.parseColor(str));
        this.n.setVisibility(0);
        float density = tJDeviceUtils.getDensity(getContext());
        RelativeLayout relativeLayout2 = new RelativeLayout(getContext());
        TJImageButton tJImageButton = new TJImageButton(this.k);
        this.r = tJImageButton;
        tJImageButton.setId(TapjoyUtil.generateViewId());
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams2.addRule(15);
        layoutParams2.addRule(9);
        int i6 = (int) (i4 * density);
        layoutParams2.setMargins(i6, i6, i6, i6);
        int i7 = (int) (5.0f * density);
        int i8 = (int) (10.0f * density);
        this.r.setPadding(i7, i8, i8, i8);
        this.r.setImageBitmap(TapjoyIcons.getBackImage(density));
        this.r.setBackgroundColor(0);
        this.r.setOnClickListener(new View.OnClickListener() { // from class: bi8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.b.a(view);
            }
        });
        this.r.setDisabledColor(Color.parseColor(str7));
        this.r.setEnabledColor(Color.parseColor(str6));
        this.r.setVisibility(z3 ? 0 : 4);
        relativeLayout2.addView(this.r, layoutParams2);
        this.s = new TJImageButton(this.k);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams3.addRule(15);
        layoutParams3.addRule(1, this.r.getId());
        layoutParams3.setMargins(i8, i8, i8, i8);
        this.s.setPadding(i8, i8, i7, i8);
        this.s.setImageBitmap(TapjoyIcons.getForwardImage(density));
        this.s.setBackgroundColor(0);
        this.s.setOnClickListener(new View.OnClickListener() { // from class: ci8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.b.b(view);
            }
        });
        this.s.setDisabledColor(Color.parseColor(str7));
        this.s.setEnabledColor(Color.parseColor(str6));
        this.s.setVisibility(z3 ? 0 : 4);
        relativeLayout2.addView(this.s, layoutParams3);
        ImageButton imageButton = new ImageButton(this.k);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams4.addRule(15);
        layoutParams4.addRule(11);
        int i9 = (int) (i3 * density);
        layoutParams4.setMargins(i9, i9, i9, i9);
        imageButton.setPadding((int) (list.get(1).intValue() * density), (int) (list.get(0).intValue() * density), (int) (list.get(3).intValue() * density), (int) (list.get(2).intValue() * density));
        imageButton.setImageBitmap(TapjoyIcons.getCloseImage(density));
        imageButton.setBackgroundColor(0);
        imageButton.setColorFilter(Color.parseColor(str5), PorterDuff.Mode.SRC_IN);
        imageButton.setOnClickListener(new View.OnClickListener() { // from class: di8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.b.c(view);
            }
        });
        relativeLayout2.addView(imageButton, layoutParams4);
        TextView textView = new TextView(this.k);
        this.q = textView;
        textView.setId(TapjoyUtil.generateViewId());
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams5.addRule(13);
        this.q.setMaxLines(1);
        this.q.setMaxEms(200);
        this.q.setTextAlignment(4);
        this.q.setTextColor(Color.parseColor(str2));
        this.q.setBackgroundColor(0);
        this.q.setTextSize(2, i2);
        this.q.setEnabled(false);
        if (z) {
            this.q.setOnClickListener(new View.OnClickListener() { // from class: ei8
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.b.d(view);
                }
            });
        }
        str4.getClass();
        if (str4.equals(TtmlNode.BOLD)) {
            this.q.setTypeface(Typeface.create(C.SANS_SERIF_NAME, 1));
        } else {
            boolean zEquals = str4.equals("semibold");
            TextView textView2 = this.q;
            if (zEquals) {
                textView2.setTypeface(Typeface.create("sans-serif-medium", 0));
            } else {
                textView2.setTypeface(Typeface.create(C.SANS_SERIF_NAME, 0));
            }
        }
        if (!str3.isEmpty()) {
            this.q.setText(str3);
        }
        relativeLayout2.addView(this.q, layoutParams5);
        ImageButton imageButton2 = new ImageButton(this.k);
        imageButton2.setId(TapjoyUtil.generateViewId());
        RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams6.addRule(1, this.q.getId());
        layoutParams6.addRule(15);
        imageButton2.setPadding(i7, i7, i7, i7);
        imageButton2.setImageBitmap(TapjoyIcons.getOpenBrowserImage(density));
        imageButton2.setColorFilter(Color.parseColor(str2));
        imageButton2.setBackgroundColor(0);
        if (z) {
            imageButton2.setOnClickListener(new View.OnClickListener() { // from class: fi8
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.b.e(view);
                }
            });
        }
        relativeLayout2.addView(imageButton2, layoutParams6);
        if (this.m) {
            i5 = 4;
        } else {
            i5 = 4;
            this.q.setVisibility(4);
            imageButton2.setVisibility(4);
        }
        if (!z2) {
            imageButton2.setVisibility(i5);
        }
        this.n.addView(relativeLayout2, new RelativeLayout.LayoutParams(-1, -2));
        addView(this.n, layoutParams);
    }

    public void animateOpen(ViewGroup viewGroup) {
        JSONObject jSONObject = this.i;
        if (jSONObject != null && jSONObject.has(TJAdUnitConstants.String.ANIMATION_EVENT_ON_OPEN) && this.i.optString(TJAdUnitConstants.String.ANIMATION_EVENT_ON_OPEN).equalsIgnoreCase(TJAdUnitConstants.String.ANIMATION_TYPE_SLIDE_UP)) {
            setY(viewGroup.getHeight());
            animate().translationY(0.0f);
        }
    }

    public void applyLayoutOption(JSONObject jSONObject) {
        setLayoutOption(jSONObject);
        a(getWidth(), getHeight());
    }

    public final /* synthetic */ void b(DialogInterface dialogInterface, int i) {
        if (TextUtils.isEmpty(getLastUrl())) {
            loadUrl(this.d);
        } else {
            loadUrl(getLastUrl());
        }
        dialogInterface.cancel();
    }

    public final void c(View view) {
        this.j.dismissSplitView(null, null);
    }

    public final /* synthetic */ void d(View view) {
        openInExternalBrowser();
    }

    public final /* synthetic */ void e(View view) {
        openInExternalBrowser();
    }

    public String getLastUrl() {
        return this.e;
    }

    public boolean goBack() {
        if (!this.a.canGoBack()) {
            return false;
        }
        this.a.goBack();
        return true;
    }

    public void isFirstOrLastPage() {
        this.r.setEnabled(this.a.canGoBack());
        this.s.setEnabled(this.a.canGoForward());
    }

    public void loadUrl(String str) {
        TJWebView tJWebView = this.a;
        if (tJWebView != null) {
            this.d = str;
            this.e = str;
            tJWebView.loadUrl(str);
        }
    }

    @Override // android.widget.RelativeLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        int i3;
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        if (this.B && (i3 = this.C) > 0) {
            size2 = i3;
        }
        if (this.a != null) {
            a(size, size2);
        }
        super.onMeasure(i, i2);
    }

    public void openInExternalBrowser() {
        Uri uri;
        if (TextUtils.isEmpty(this.t)) {
            uri = Uri.parse(this.a.getUrl());
            if (uri == null) {
                uri = Uri.parse(getLastUrl());
            }
        } else {
            uri = Uri.parse(this.t);
        }
        Intent intent = new Intent();
        intent.setAction("android.intent.action.VIEW");
        intent.setData(uri);
        intent.addFlags(268435456);
        if (this.a.getContext() != null) {
            try {
                this.a.getContext().startActivity(intent);
            } catch (Exception e) {
                TapjoyLog.d(e.getMessage());
            }
        }
    }

    public void setErrorDialog(JSONObject jSONObject) {
        if (jSONObject != null) {
            this.u = true;
            this.v = jSONObject.optString("description");
            this.w = jSONObject.optString(TJAdUnitConstants.String.CLOSE);
            this.x = jSONObject.optString("reload");
        }
    }

    public void setExitHosts(JSONArray jSONArray) {
        if (jSONArray == null) {
            this.h = null;
            return;
        }
        this.h = new HashSet();
        for (int i = 0; i <= jSONArray.length(); i++) {
            String strOptString = jSONArray.optString(i);
            if (strOptString != null) {
                this.h.add(strOptString);
            }
        }
    }

    public void setLayoutOption(JSONObject jSONObject) {
        if (jSONObject != null) {
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject(TJAdUnitConstants.String.LANDSCAPE);
            this.c = jSONObjectOptJSONObject != null ? new h0(jSONObjectOptJSONObject) : null;
            JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject(TJAdUnitConstants.String.PORTRAIT);
            this.b = jSONObjectOptJSONObject2 != null ? new h0(jSONObjectOptJSONObject2) : null;
        }
    }

    public void setTrigger(String str, String str2) {
        if (str == null || str.length() == 0) {
            str = null;
        }
        this.f = str;
        this.g = str2 != null ? Uri.parse(str2) : null;
    }

    public void setUserAgent(String str) {
        this.a.getSettings().setUserAgentString(str);
    }

    public void showErrorDialog() {
        new AlertDialog.Builder(this.k, R.style.Theme.Material.Light.Dialog.Alert).setMessage(this.v).setPositiveButton(this.w, new yh8()).setNegativeButton(this.x, new DialogInterface.OnClickListener() { // from class: zh8
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.b.b(dialogInterface, i);
            }
        }).create().show();
    }

    public final /* synthetic */ void b(View view) {
        this.a.goForward();
    }

    public final void b() {
        getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: ai8
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public final void onGlobalLayout() {
                this.b.a();
            }
        });
    }

    public final /* synthetic */ void a(View view) {
        if (this.a.canGoBack()) {
            this.a.goBack();
        }
    }

    public final /* synthetic */ void a() {
        Rect rect = new Rect();
        getWindowVisibleDisplayFrame(rect);
        int height = getRootView().getHeight();
        int iHeight = rect.height();
        boolean z = ((double) (height - iHeight)) > ((double) height) * 0.15d;
        if (z != this.B || Math.abs(this.C - iHeight) > 50) {
            this.B = z;
            this.C = iHeight;
            TapjoyLog.d("Keyboard visibility changed: " + this.B + ", visible height: " + iHeight);
            int width = getWidth();
            if (z) {
                height = iHeight;
            }
            a(width, height);
        }
    }
}
