package com.my.target.ads;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Point;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import defpackage.b8;
import defpackage.f72;
import defpackage.fg;
import defpackage.l3a;
import defpackage.sh5;
import defpackage.uf9;
import defpackage.vw6;
import defpackage.y14;
import defpackage.z2a;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes4.dex */
public final class MyTargetView extends FrameLayout {
    public final z2a b;
    public final AtomicBoolean c;
    public a d;
    public boolean e;

    public interface b {
    }

    public interface c {
    }

    public MyTargetView(Context context, AttributeSet attributeSet, int i) {
        TypedArray typedArrayObtainStyledAttributes;
        super(context, attributeSet, i);
        this.c = new AtomicBoolean();
        this.e = false;
        String str = sh5.a;
        y14.t("MyTargetView created. Version - 5.52.5");
        this.b = new z2a(0, "");
        this.d = a.b(context);
        if (attributeSet == null) {
            return;
        }
        try {
            typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, vw6.a);
        } catch (Throwable th) {
            fg.e(null, new StringBuilder("MyTargetView: Unable to get view attributes - "), th);
            typedArrayObtainStyledAttributes = null;
        }
        if (typedArrayObtainStyledAttributes == null) {
            return;
        }
        int i2 = typedArrayObtainStyledAttributes.getInt(2, 0);
        z2a z2aVar = this.b;
        z2aVar.e = i2;
        typedArrayObtainStyledAttributes.getBoolean(1, true);
        z2aVar.getClass();
        int i3 = typedArrayObtainStyledAttributes.getInt(0, -1);
        if (i3 >= 0) {
            if (i3 != 3) {
                this.e = true;
            }
            this.d = i3 != 1 ? i3 != 2 ? i3 != 3 ? a.d : a.b(context) : a.f : a.e;
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public String getAdSource() {
        return null;
    }

    public float getAdSourcePriority() {
        return 0.0f;
    }

    public f72 getCustomParams() {
        return this.b.a;
    }

    public b getListener() {
        return null;
    }

    public c getRenderCrashListener() {
        return null;
    }

    public a getSize() {
        return this.d;
    }

    public uf9 getWebFormClient() {
        return null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        if (!this.e) {
            Context context = getContext();
            Point pointQ = l3a.q(context);
            int i3 = pointQ.x;
            float f = pointQ.y;
            a aVar = this.d;
            if (i3 != aVar.a || aVar.b > f * 0.15f) {
                this.d = a.b(context);
            }
        }
        super.onMeasure(i, i2);
    }

    public void setAdNetworkConfig(String str, b8 b8Var) {
        this.b.b.put(str.toLowerCase(Locale.ROOT), b8Var);
    }

    public void setAdSize(a aVar) {
        if (aVar == null) {
            y14.r(null, "MyTargetView: AdSize cannot be null");
            return;
        }
        if (this.e && a.a(this.d, aVar)) {
            return;
        }
        this.e = true;
        if (this.c.get()) {
            a aVar2 = this.d;
            a aVar3 = a.e;
            if (a.a(aVar2, aVar3) || a.a(aVar, aVar3)) {
                y14.r(null, "MyTargetView: unable to switch size to/from 300x250");
                return;
            }
        }
        this.d = aVar;
        if (aVar == a.d) {
            this.b.f = "standard_320x50";
            return;
        }
        if (aVar == a.e) {
            this.b.f = "standard_300x250";
            return;
        }
        a aVar4 = a.f;
        z2a z2aVar = this.b;
        if (aVar == aVar4) {
            z2aVar.f = "standard_728x90";
        } else {
            z2aVar.f = "standard";
        }
    }

    public void setListener(b bVar) {
    }

    public void setMediationEnabled(boolean z) {
        this.b.c = z;
    }

    public void setRefreshAd(boolean z) {
        this.b.getClass();
    }

    public void setRenderCrashListener(c cVar) {
    }

    public void setSlotId(int i) {
        if (this.c.get()) {
            return;
        }
        this.b.e = i;
    }

    public void setWebFormClient(uf9 uf9Var) {
    }

    public static final class a {
        public static final a d = new a(320, 50, 0);
        public static final a e = new a(300, 250, 1);
        public static final a f = new a(728, 90, 2);
        public final int a;
        public final int b;
        public final int c;

        public a(int i, int i2, int i3) {
            this.a = i;
            this.b = i2;
            float f2 = l3a.a.a;
            this.c = i3;
        }

        public static boolean a(a aVar, a aVar2) {
            return aVar.b == aVar2.b && aVar.a == aVar2.a && aVar.c == aVar2.c;
        }

        public static a b(Context context) {
            Point pointQ = l3a.q(context);
            float f2 = pointQ.x;
            float f3 = pointQ.y * 0.15f;
            float f4 = l3a.a.a;
            return new a((int) (f2 / f4), (int) (Math.max(Math.min(f2 > 524.0f ? (f2 / 728.0f) * 90.0f : (f2 / 320.0f) * 50.0f, f3), 50.0f * f4) / f4));
        }

        public a(int i, int i2) {
            this.a = i;
            this.b = i2;
            this.c = 3;
        }
    }

    public MyTargetView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MyTargetView(Context context) {
        this(context, null);
    }
}
