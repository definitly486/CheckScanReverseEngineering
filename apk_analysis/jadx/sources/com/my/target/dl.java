package com.my.target;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.my.target.common.MyTargetActivity;
import defpackage.l3a;
import defpackage.y14;
import defpackage.yp0;
import java.net.URI;

/* JADX INFO: loaded from: classes4.dex */
public class dl extends LinearLayout {
    public static final int o = View.generateViewId();
    public static final int p = View.generateViewId();
    public final l3a b;
    public final ImageButton c;
    public final LinearLayout d;
    public final TextView e;
    public final TextView f;
    public final FrameLayout g;
    public final View h;
    public final FrameLayout i;
    public final ImageButton j;
    public final RelativeLayout k;
    public final h1 l;
    public final ProgressBar m;
    public b n;

    public class a implements View.OnClickListener {
        public a() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            dl dlVar = dl.this;
            if (view == dlVar.c) {
                b bVar = dlVar.n;
                if (bVar != null) {
                    ((MyTargetActivity) ((yp0) bVar).c).finish();
                    return;
                }
                return;
            }
            if (view == dlVar.j) {
                String url = dlVar.l.getUrl();
                if (TextUtils.isEmpty(url)) {
                    return;
                }
                try {
                    Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(url));
                    if (!(dlVar.getContext() instanceof Activity)) {
                        intent.addFlags(268435456);
                    }
                    dlVar.getContext().startActivity(intent);
                } catch (Throwable unused) {
                    y14.r(null, "WebViewBrowser: Unable to open url " + url);
                }
            }
        }
    }

    public interface b {
    }

    public dl(Context context) {
        super(context);
        this.k = new RelativeLayout(context);
        this.l = new h1(context);
        this.c = new ImageButton(context);
        this.d = new LinearLayout(context);
        this.e = new TextView(context);
        this.f = new TextView(context);
        this.g = new FrameLayout(context);
        this.i = new FrameLayout(context);
        this.j = new ImageButton(context);
        this.m = new ProgressBar(context, null, R.attr.progressBarStyleHorizontal);
        this.h = new View(context);
        this.b = new l3a(context);
    }

    public static String a(String str) {
        try {
            URI uri = new URI(str);
            return uri.getScheme() + "://" + uri.getHost();
        } catch (Throwable th) {
            th.printStackTrace();
            return str;
        }
    }

    public void setListener(b bVar) {
        this.n = bVar;
    }

    public void setUrl(String str) {
        this.l.b(str);
        this.e.setText(a(str));
    }
}
