package com.my.target.common;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.Insets;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.WindowInsets;
import android.view.WindowInsetsController;
import android.widget.FrameLayout;
import android.window.OnBackInvokedCallback;
import com.my.target.common.MyTargetActivity;
import defpackage.mh5;
import defpackage.n2a;
import defpackage.o1a;

/* JADX INFO: loaded from: classes4.dex */
public class MyTargetActivity extends Activity {
    public static a f;
    public a b;
    public FrameLayout c;
    public b d;
    public WindowInsetsController e;

    public interface a {
        void f(MyTargetActivity myTargetActivity, Intent intent, FrameLayout frameLayout);

        void h();

        boolean i();

        void j(MyTargetActivity myTargetActivity);

        void k();

        void p();

        void q();
    }

    public final class b extends FrameLayout {
        public final View b;
        public final View c;
        public final View d;
        public final View e;

        public b(MyTargetActivity myTargetActivity) {
            super(myTargetActivity, null, 0, 0);
            this.b = new View(getContext());
            this.c = new View(getContext());
            this.d = new View(getContext());
            this.e = new View(getContext());
        }

        public final WindowInsets a(FrameLayout frameLayout, View view, WindowInsets windowInsets) {
            Insets insets = windowInsets.getInsets(WindowInsets.Type.displayCutout() | WindowInsets.Type.systemBars());
            int i = insets.left;
            int i2 = insets.top;
            int i3 = insets.right;
            int i4 = insets.bottom;
            o1a o1aVar = (i == 0 && i2 == 0 && i3 == 0 && i4 == 0) ? o1a.e : new o1a(i, i2, i3, i4);
            int i5 = o1aVar.b;
            int i6 = o1aVar.d;
            int i7 = o1aVar.a;
            int i8 = o1aVar.c;
            View view2 = this.c;
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view2.getLayoutParams();
            layoutParams.width = i8;
            view2.setLayoutParams(layoutParams);
            View view3 = this.d;
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) view3.getLayoutParams();
            layoutParams2.height = i6;
            layoutParams2.leftMargin = Math.max(i7, 0);
            layoutParams2.rightMargin = Math.max(i8, 0);
            view3.setLayoutParams(layoutParams2);
            View view4 = this.e;
            FrameLayout.LayoutParams layoutParams3 = (FrameLayout.LayoutParams) view4.getLayoutParams();
            layoutParams3.width = i7;
            view4.setLayoutParams(layoutParams3);
            View view5 = this.b;
            FrameLayout.LayoutParams layoutParams4 = (FrameLayout.LayoutParams) view5.getLayoutParams();
            layoutParams4.height = i5;
            layoutParams4.leftMargin = Math.max(i7, 0);
            layoutParams4.rightMargin = Math.max(i8, 0);
            view5.setLayoutParams(layoutParams4);
            FrameLayout.LayoutParams layoutParams5 = (FrameLayout.LayoutParams) frameLayout.getLayoutParams();
            layoutParams5.topMargin = i5;
            layoutParams5.leftMargin = i7;
            layoutParams5.rightMargin = i8;
            layoutParams5.bottomMargin = i6;
            frameLayout.setLayoutParams(layoutParams5);
            FrameLayout frameLayout2 = MyTargetActivity.this.c;
            if (frameLayout2 != null) {
                frameLayout2.dispatchApplyWindowInsets(windowInsets);
            }
            view.invalidate();
            return WindowInsets.CONSUMED;
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.b != null) {
            if (getApplicationInfo().targetSdkVersion >= 35 && Build.VERSION.SDK_INT >= 35) {
                getWindow().setNavigationBarContrastEnforced(false);
                this.e = getWindow().getInsetsController();
                b bVar = this.d;
                if (bVar != null) {
                    int iArgb = Color.argb(204, Color.red(-16777216), Color.green(-16777216), Color.blue(-16777216));
                    bVar.b.setBackground(new ColorDrawable(iArgb));
                    bVar.e.setBackground(new ColorDrawable(iArgb));
                    bVar.c.setBackground(new ColorDrawable(iArgb));
                    bVar.d.setBackground(new ColorDrawable(iArgb));
                    MyTargetActivity myTargetActivity = MyTargetActivity.this;
                    if (myTargetActivity.e != null) {
                        float fRed = Color.red(iArgb);
                        float fGreen = Color.green(iArgb);
                        float fBlue = Color.blue(iArgb);
                        float f2 = (fBlue * fBlue * 0.114f) + (fGreen * fGreen * 0.587f) + (fRed * fRed * 0.299f);
                        WindowInsetsController windowInsetsController = myTargetActivity.e;
                        if (16256.25f < f2) {
                            windowInsetsController.setSystemBarsAppearance(8, 8);
                            myTargetActivity.e.setSystemBarsAppearance(16, 16);
                        } else {
                            windowInsetsController.setSystemBarsAppearance(0, 8);
                            myTargetActivity.e.setSystemBarsAppearance(0, 16);
                        }
                    }
                }
            }
            this.b.j(this);
        }
    }

    @Override // android.app.Activity
    public final void onBackPressed() {
        a aVar = this.b;
        if (aVar == null || aVar.i()) {
            super.onBackPressed();
        }
    }

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Intent intent = getIntent();
        a aVar = f;
        this.b = aVar;
        f = null;
        if (aVar == null || intent == null) {
            finish();
            return;
        }
        this.c = new FrameLayout(this);
        if (getApplicationInfo().targetSdkVersion >= 35 && Build.VERSION.SDK_INT >= 35) {
            b bVar = new b(this);
            this.d = bVar;
            View view = this.c;
            bVar.setLayoutParams(new FrameLayout.LayoutParams(-1, -1, 17));
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
            layoutParams.leftMargin = 0;
            layoutParams.topMargin = 0;
            layoutParams.rightMargin = 0;
            layoutParams.bottomMargin = 0;
            view.setLayoutParams(layoutParams);
            bVar.addView(view);
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -2, 48);
            layoutParams2.height = 0;
            layoutParams2.leftMargin = 0;
            layoutParams2.rightMargin = 0;
            View view2 = bVar.b;
            view2.setLayoutParams(layoutParams2);
            bVar.addView(view2);
            FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-2, -1, 5);
            layoutParams3.width = 0;
            View view3 = bVar.c;
            view3.setLayoutParams(layoutParams3);
            bVar.addView(view3);
            FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(-1, -2, 80);
            layoutParams4.height = 0;
            layoutParams4.leftMargin = 0;
            layoutParams4.rightMargin = 0;
            View view4 = bVar.d;
            view4.setLayoutParams(layoutParams4);
            bVar.addView(view4);
            FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(-2, -1, 3);
            layoutParams5.width = 0;
            View view5 = bVar.e;
            view5.setLayoutParams(layoutParams5);
            bVar.addView(view5);
            bVar.setOnApplyWindowInsetsListener(new n2a(new mh5(bVar, view)));
        }
        this.b.f(this, intent, this.c);
        View view6 = this.d;
        if (view6 == null) {
            view6 = this.c;
        }
        setContentView(view6);
        if (Build.VERSION.SDK_INT >= 33) {
            getOnBackInvokedDispatcher().registerOnBackInvokedCallback(0, new OnBackInvokedCallback() { // from class: lh5
                public final void onBackInvoked() {
                    MyTargetActivity.a aVar2 = MyTargetActivity.f;
                    MyTargetActivity myTargetActivity = this.a;
                    MyTargetActivity.a aVar3 = myTargetActivity.b;
                    if (aVar3 == null || aVar3.i()) {
                        myTargetActivity.finish();
                    }
                }
            });
        }
    }

    @Override // android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        a aVar = this.b;
        if (aVar != null) {
            aVar.p();
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final void onDetachedFromWindow() {
        this.e = null;
        super.onDetachedFromWindow();
    }

    @Override // android.app.Activity
    public final void onPause() {
        super.onPause();
        a aVar = this.b;
        if (aVar != null) {
            aVar.q();
        }
    }

    @Override // android.app.Activity
    public final void onResume() {
        super.onResume();
        a aVar = this.b;
        if (aVar != null) {
            aVar.k();
        }
    }

    @Override // android.app.Activity
    public final void onStart() {
        super.onStart();
    }

    @Override // android.app.Activity
    public final void onStop() {
        super.onStop();
        a aVar = this.b;
        if (aVar != null) {
            aVar.h();
        }
    }
}
