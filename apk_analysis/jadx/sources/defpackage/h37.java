package defpackage;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.widget.ImageView;
import androidx.collection.ArrayMap;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes3.dex */
public final class h37<TranscodeType> extends ee0<h37<TranscodeType>> {
    public Object A;
    public ArrayList B;
    public h37<TranscodeType> C;
    public h37<TranscodeType> D;
    public boolean E = true;
    public boolean F;
    public boolean G;
    public final Context v;
    public final p37 w;
    public final Class<TranscodeType> x;
    public final wq3 y;
    public o29<?, ? super TranscodeType> z;

    public static /* synthetic */ class a {
        public static final /* synthetic */ int[] a;
        public static final /* synthetic */ int[] b;

        static {
            int[] iArr = new int[jg6.values().length];
            b = iArr;
            try {
                iArr[jg6.LOW.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                b[jg6.NORMAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                b[jg6.HIGH.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                b[jg6.IMMEDIATE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[ImageView.ScaleType.values().length];
            a = iArr2;
            try {
                iArr2[ImageView.ScaleType.CENTER_CROP.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                a[ImageView.ScaleType.CENTER_INSIDE.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                a[ImageView.ScaleType.FIT_CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                a[ImageView.ScaleType.FIT_START.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                a[ImageView.ScaleType.FIT_END.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                a[ImageView.ScaleType.FIT_XY.ordinal()] = 6;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                a[ImageView.ScaleType.CENTER.ordinal()] = 7;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                a[ImageView.ScaleType.MATRIX.ordinal()] = 8;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    static {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public h37(com.bumptech.glide.a aVar, p37 p37Var, Class<TranscodeType> cls, Context context) {
        s37 s37Var;
        this.w = p37Var;
        this.x = cls;
        this.v = context;
        ArrayMap arrayMap = p37Var.b.d.e;
        o29<?, ? super TranscodeType> o29Var = (o29) arrayMap.get(cls);
        if (o29Var == null) {
            Iterator it = arrayMap.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                if (((Class) entry.getKey()).isAssignableFrom(cls)) {
                    o29Var = (o29) entry.getValue();
                }
            }
        }
        this.z = o29Var == null ? wq3.i : o29Var;
        this.y = aVar.d;
        Iterator<o37<Object>> it2 = p37Var.j.iterator();
        while (it2.hasNext()) {
            F((o37) it2.next());
        }
        synchronized (p37Var) {
            s37Var = p37Var.k;
        }
        b(s37Var);
    }

    public final h37<TranscodeType> F(o37<TranscodeType> o37Var) {
        if (this.s) {
            return clone().F(o37Var);
        }
        if (o37Var != null) {
            ArrayList arrayList = this.B;
            if (arrayList == null) {
                arrayList = new ArrayList();
                this.B = arrayList;
            }
            arrayList.add(o37Var);
        }
        v();
        return this;
    }

    @Override // defpackage.ee0
    /* JADX INFO: renamed from: G, reason: merged with bridge method [inline-methods] */
    public final h37<TranscodeType> b(ee0<?> ee0Var) {
        r96.b(ee0Var);
        return (h37) super.b(ee0Var);
    }

    public final h37<TranscodeType> H(h37<TranscodeType> h37Var) {
        PackageInfo packageInfo;
        Context context = this.v;
        h37<TranscodeType> h37VarZ = h37Var.z(context.getTheme());
        ConcurrentHashMap concurrentHashMap = pq.a;
        String packageName = context.getPackageName();
        ConcurrentHashMap concurrentHashMap2 = pq.a;
        kf4 kf4Var = (kf4) concurrentHashMap2.get(packageName);
        if (kf4Var == null) {
            try {
                packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            } catch (PackageManager.NameNotFoundException e) {
                Log.e("AppVersionSignature", "Cannot resolve info for" + context.getPackageName(), e);
                packageInfo = null;
            }
            oq5 oq5Var = new oq5(packageInfo != null ? String.valueOf(packageInfo.versionCode) : UUID.randomUUID().toString());
            kf4 kf4Var2 = (kf4) concurrentHashMap2.putIfAbsent(packageName, oq5Var);
            kf4Var = kf4Var2 == null ? oq5Var : kf4Var2;
        }
        return h37VarZ.x(new oj(context.getResources().getConfiguration().uiMode & 48, kf4Var));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final c37 I(Object obj, wk8 wk8Var, j37 j37Var, o29 o29Var, jg6 jg6Var, int i, int i2, ee0 ee0Var) {
        j37 j37Var2;
        j37 t03Var;
        ee0 ee0Var2;
        c37 y08Var;
        jg6 jg6Var2;
        if (this.D != null) {
            t03Var = new t03(obj, j37Var);
            j37Var2 = t03Var;
        } else {
            j37Var2 = null;
            t03Var = j37Var;
        }
        h37<TranscodeType> h37Var = this.C;
        if (h37Var == null) {
            Context context = this.v;
            wq3 wq3Var = this.y;
            ee0Var2 = ee0Var;
            y08Var = new y08(context, wq3Var, obj, this.A, this.x, ee0Var2, i, i2, jg6Var, wk8Var, this.B, t03Var, wq3Var.f, o29Var.b);
        } else {
            if (this.G) {
                ah.f("You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()");
                return null;
            }
            o29 o29Var2 = h37Var.E ? o29Var : h37Var.z;
            if (ee0.k(h37Var.b, 8)) {
                jg6Var2 = this.C.d;
            } else {
                int i3 = a.b[jg6Var.ordinal()];
                if (i3 == 1) {
                    jg6Var2 = jg6.NORMAL;
                } else if (i3 == 2) {
                    jg6Var2 = jg6.HIGH;
                } else {
                    if (i3 != 3 && i3 != 4) {
                        mz0.c(this.d, "unknown priority: ");
                        return null;
                    }
                    jg6Var2 = jg6.IMMEDIATE;
                }
            }
            jg6 jg6Var3 = jg6Var2;
            h37<TranscodeType> h37Var2 = this.C;
            int i4 = h37Var2.j;
            int i5 = h37Var2.i;
            if (eb9.j(i, i2)) {
                h37<TranscodeType> h37Var3 = this.C;
                if (!eb9.j(h37Var3.j, h37Var3.i)) {
                    i4 = ee0Var.j;
                    i5 = ee0Var.i;
                }
            }
            int i6 = i5;
            int i7 = i4;
            bu8 bu8Var = new bu8(obj, t03Var);
            Context context2 = this.v;
            wq3 wq3Var2 = this.y;
            y08 y08Var2 = new y08(context2, wq3Var2, obj, this.A, this.x, ee0Var, i, i2, jg6Var, wk8Var, this.B, bu8Var, wq3Var2.f, o29Var.b);
            this.G = true;
            h37<TranscodeType> h37Var4 = this.C;
            c37 c37VarI = h37Var4.I(obj, wk8Var, bu8Var, o29Var2, jg6Var3, i7, i6, h37Var4);
            this.G = false;
            bu8Var.c = y08Var2;
            bu8Var.d = c37VarI;
            ee0Var2 = ee0Var;
            y08Var = bu8Var;
        }
        if (j37Var2 == null) {
            return y08Var;
        }
        h37<TranscodeType> h37Var5 = this.D;
        int i8 = h37Var5.j;
        int i9 = h37Var5.i;
        if (eb9.j(i, i2)) {
            h37<TranscodeType> h37Var6 = this.D;
            if (!eb9.j(h37Var6.j, h37Var6.i)) {
                i8 = ee0Var2.j;
                i9 = ee0Var2.i;
            }
        }
        h37<TranscodeType> h37Var7 = this.D;
        t03 t03Var2 = j37Var2;
        c37 c37VarI2 = h37Var7.I(obj, wk8Var, t03Var2, h37Var7.z, h37Var7.d, i8, i9, h37Var7);
        t03Var2.c = y08Var;
        t03Var2.d = c37VarI2;
        return t03Var2;
    }

    @Override // defpackage.ee0
    /* JADX INFO: renamed from: J, reason: merged with bridge method [inline-methods] */
    public final h37<TranscodeType> clone() {
        h37<TranscodeType> h37Var = (h37) super.clone();
        h37Var.z = h37Var.z.clone();
        if (h37Var.B != null) {
            h37Var.B = new ArrayList(h37Var.B);
        }
        h37<TranscodeType> h37Var2 = h37Var.C;
        if (h37Var2 != null) {
            h37Var.C = h37Var2.clone();
        }
        h37<TranscodeType> h37Var3 = h37Var.D;
        if (h37Var3 != null) {
            h37Var.D = h37Var3.clone();
        }
        return h37Var;
    }

    public final void K(wk8 wk8Var, ee0 ee0Var) {
        r96.b(wk8Var);
        if (!this.F) {
            fg.c("You must call #load() before calling #into()");
            return;
        }
        c37 c37VarI = I(new Object(), wk8Var, null, this.z, ee0Var.d, ee0Var.j, ee0Var.i, ee0Var);
        c37 request = wk8Var.getRequest();
        if (c37VarI.d(request) && (ee0Var.h || !request.isComplete())) {
            r96.c(request, "Argument must not be null");
            if (request.isRunning()) {
                return;
            }
            request.i();
            return;
        }
        this.w.c(wk8Var);
        wk8Var.setRequest(c37VarI);
        p37 p37Var = this.w;
        synchronized (p37Var) {
            p37Var.g.b.add(wk8Var);
            t37 t37Var = p37Var.e;
            t37Var.a.add(c37VarI);
            if (t37Var.c) {
                c37VarI.clear();
                if (Log.isLoggable("RequestTracker", 2)) {
                    Log.v("RequestTracker", "Paused, delaying request");
                }
                t37Var.b.add(c37VarI);
            } else {
                c37VarI.i();
            }
        }
    }

    public final void L(ImageView imageView) {
        ee0 ee0VarL;
        wk8 hs2Var;
        eb9.a();
        r96.b(imageView);
        if (!ee0.k(this.b, 2048) && this.m && imageView.getScaleType() != null) {
            switch (a.a[imageView.getScaleType().ordinal()]) {
                case 1:
                    ee0VarL = clone().l(uq2.c, new s81());
                    break;
                case 2:
                    ee0VarL = clone().u(uq2.b, new t81(), false);
                    break;
                case 3:
                case 4:
                case 5:
                    ee0VarL = clone().u(uq2.a, new dc3(), false);
                    break;
                case 6:
                    ee0VarL = clone().u(uq2.b, new t81(), false);
                    break;
                default:
                    ee0VarL = this;
                    break;
            }
        } else {
            ee0VarL = this;
        }
        m24 m24Var = this.y.c;
        Class<TranscodeType> cls = this.x;
        if (Bitmap.class.equals(cls)) {
            hs2Var = new gj0(imageView);
        } else {
            if (!Drawable.class.isAssignableFrom(cls)) {
                yq.c(cls, "Unhandled class: ", ", try .as*(Class).transcode(ResourceTranscoder)");
                return;
            }
            hs2Var = new hs2(imageView);
        }
        K(hs2Var, ee0VarL);
    }

    public final h37<TranscodeType> M(o37<TranscodeType> o37Var) {
        if (this.s) {
            return clone().M(o37Var);
        }
        this.B = null;
        return F(o37Var);
    }

    public final h37<TranscodeType> N(Object obj) {
        if (this.s) {
            return clone().N(obj);
        }
        this.A = obj;
        this.F = true;
        v();
        return this;
    }

    public final void O() {
        K(new mf6(this.w), this);
    }

    public final h37 P(qs2 qs2Var) {
        if (this.s) {
            return clone().P(qs2Var);
        }
        this.z = qs2Var;
        this.E = false;
        v();
        return this;
    }

    @Override // defpackage.ee0
    public final boolean equals(Object obj) {
        if (!(obj instanceof h37)) {
            return false;
        }
        h37 h37Var = (h37) obj;
        return super.equals(h37Var) && Objects.equals(this.x, h37Var.x) && this.z.equals(h37Var.z) && Objects.equals(this.A, h37Var.A) && Objects.equals(this.B, h37Var.B) && Objects.equals(this.C, h37Var.C) && Objects.equals(this.D, h37Var.D) && this.E == h37Var.E && this.F == h37Var.F;
    }

    @Override // defpackage.ee0
    public final int hashCode() {
        return eb9.h(this.F ? 1 : 0, eb9.h(this.E ? 1 : 0, eb9.i(eb9.i(eb9.i(eb9.i(eb9.i(eb9.i(eb9.i(super.hashCode(), this.x), this.z), this.A), this.B), this.C), this.D), null)));
    }
}
