package com.airbnb.lottie;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.AppCompatImageView;
import com.airbnb.lottie.LottieAnimationView;
import com.warefly.checkscan.R;
import defpackage.a14;
import defpackage.ah4;
import defpackage.ay4;
import defpackage.bj;
import defpackage.bx6;
import defpackage.by4;
import defpackage.bz7;
import defpackage.dt;
import defpackage.e27;
import defpackage.ei3;
import defpackage.fg;
import defpackage.fi3;
import defpackage.fx4;
import defpackage.gq8;
import defpackage.gv4;
import defpackage.h51;
import defpackage.hb5;
import defpackage.jj2;
import defpackage.ku1;
import defpackage.lw4;
import defpackage.mx4;
import defpackage.nf4;
import defpackage.nw4;
import defpackage.ox4;
import defpackage.pw4;
import defpackage.px4;
import defpackage.s46;
import defpackage.tx4;
import defpackage.ux4;
import defpackage.vx4;
import defpackage.ww4;
import defpackage.wx4;
import defpackage.xx4;
import defpackage.z04;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.zip.ZipInputStream;

/* JADX INFO: loaded from: classes3.dex */
public class LottieAnimationView extends AppCompatImageView {
    public static final lw4 B = new lw4();
    public xx4<nw4> A;
    public final c o;
    public final b p;
    public tx4<Throwable> q;
    public int r;
    public final ox4 s;
    public String t;
    public int u;
    public boolean v;
    public boolean w;
    public boolean x;
    public final HashSet y;
    public final HashSet z;

    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new a();
        public String b;
        public int c;
        public float d;
        public boolean e;
        public String f;
        public int g;
        public int h;

        public class a implements Parcelable.Creator<SavedState> {
            @Override // android.os.Parcelable.Creator
            public final SavedState createFromParcel(Parcel parcel) {
                SavedState savedState = new SavedState(parcel);
                savedState.b = parcel.readString();
                savedState.d = parcel.readFloat();
                savedState.e = parcel.readInt() == 1;
                savedState.f = parcel.readString();
                savedState.g = parcel.readInt();
                savedState.h = parcel.readInt();
                return savedState;
            }

            @Override // android.os.Parcelable.Creator
            public final SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeString(this.b);
            parcel.writeFloat(this.d);
            parcel.writeInt(this.e ? 1 : 0);
            parcel.writeString(this.f);
            parcel.writeInt(this.g);
            parcel.writeInt(this.h);
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static final class a {
        private static final /* synthetic */ a[] $VALUES;
        public static final a PLAY_OPTION;
        public static final a SET_ANIMATION;
        public static final a SET_IMAGE_ASSETS;
        public static final a SET_PROGRESS;
        public static final a SET_REPEAT_COUNT;
        public static final a SET_REPEAT_MODE;

        static {
            a aVar = new a("SET_ANIMATION", 0);
            SET_ANIMATION = aVar;
            a aVar2 = new a("SET_PROGRESS", 1);
            SET_PROGRESS = aVar2;
            a aVar3 = new a("SET_REPEAT_MODE", 2);
            SET_REPEAT_MODE = aVar3;
            a aVar4 = new a("SET_REPEAT_COUNT", 3);
            SET_REPEAT_COUNT = aVar4;
            a aVar5 = new a("SET_IMAGE_ASSETS", 4);
            SET_IMAGE_ASSETS = aVar5;
            a aVar6 = new a("PLAY_OPTION", 5);
            PLAY_OPTION = aVar6;
            $VALUES = new a[]{aVar, aVar2, aVar3, aVar4, aVar5, aVar6};
        }

        public a() {
            throw null;
        }

        public static a valueOf(String str) {
            return (a) Enum.valueOf(a.class, str);
        }

        public static a[] values() {
            return (a[]) $VALUES.clone();
        }
    }

    public static class b implements tx4<Throwable> {
        public final WeakReference<LottieAnimationView> a;

        public b(LottieAnimationView lottieAnimationView) {
            this.a = new WeakReference<>(lottieAnimationView);
        }

        @Override // defpackage.tx4
        public final void onResult(Throwable th) {
            Throwable th2 = th;
            LottieAnimationView lottieAnimationView = this.a.get();
            if (lottieAnimationView == null) {
                return;
            }
            int i = lottieAnimationView.r;
            if (i != 0) {
                lottieAnimationView.setImageResource(i);
            }
            tx4 tx4Var = lottieAnimationView.q;
            if (tx4Var == null) {
                tx4Var = LottieAnimationView.B;
            }
            tx4Var.onResult(th2);
        }
    }

    public static class c implements tx4<nw4> {
        public final WeakReference<LottieAnimationView> a;

        public c(LottieAnimationView lottieAnimationView) {
            this.a = new WeakReference<>(lottieAnimationView);
        }

        @Override // defpackage.tx4
        public final void onResult(nw4 nw4Var) {
            nw4 nw4Var2 = nw4Var;
            LottieAnimationView lottieAnimationView = this.a.get();
            if (lottieAnimationView == null) {
                return;
            }
            lottieAnimationView.setComposition(nw4Var2);
        }
    }

    public LottieAnimationView(Context context) {
        super(context);
        this.o = new c(this);
        this.p = new b(this);
        this.r = 0;
        this.s = new ox4();
        this.v = false;
        this.w = false;
        this.x = true;
        this.y = new HashSet();
        this.z = new HashSet();
        q(null, R.attr.lottieAnimationViewStyle);
    }

    private void setCompositionTask(xx4<nw4> xx4Var) {
        wx4<nw4> wx4Var = xx4Var.d;
        ox4 ox4Var = this.s;
        if (wx4Var != null && ox4Var == getDrawable() && ox4Var.b == wx4Var.a) {
            return;
        }
        this.y.add(a.SET_ANIMATION);
        this.s.d();
        p();
        xx4Var.b(this.o);
        xx4Var.a(this.p);
        this.A = xx4Var;
    }

    public dt getAsyncUpdates() {
        dt dtVar = this.s.N;
        return dtVar != null ? dtVar : ah4.a;
    }

    public boolean getAsyncUpdatesEnabled() {
        dt dtVar = this.s.N;
        if (dtVar == null) {
            dtVar = ah4.a;
        }
        return dtVar == dt.ENABLED;
    }

    public boolean getClipTextToBoundingBox() {
        return this.s.w;
    }

    public boolean getClipToCompositionBounds() {
        return this.s.p;
    }

    public nw4 getComposition() {
        Drawable drawable = getDrawable();
        ox4 ox4Var = this.s;
        if (drawable == ox4Var) {
            return ox4Var.b;
        }
        return null;
    }

    public long getDuration() {
        nw4 composition = getComposition();
        if (composition != null) {
            return (long) composition.b();
        }
        return 0L;
    }

    public int getFrame() {
        return (int) this.s.c.i;
    }

    public String getImageAssetsFolder() {
        return this.s.j;
    }

    public boolean getMaintainOriginalImageBounds() {
        return this.s.o;
    }

    public float getMaxFrame() {
        return this.s.c.i();
    }

    public float getMinFrame() {
        return this.s.c.j();
    }

    public s46 getPerformanceTracker() {
        nw4 nw4Var = this.s.b;
        if (nw4Var != null) {
            return nw4Var.a;
        }
        return null;
    }

    public float getProgress() {
        return this.s.c.h();
    }

    public e27 getRenderMode() {
        return this.s.y ? e27.SOFTWARE : e27.HARDWARE;
    }

    public int getRepeatCount() {
        return this.s.c.getRepeatCount();
    }

    public int getRepeatMode() {
        return this.s.c.getRepeatMode();
    }

    public float getSpeed() {
        return this.s.c.e;
    }

    @Override // android.view.View
    public final void invalidate() {
        super.invalidate();
        Drawable drawable = getDrawable();
        if (drawable instanceof ox4) {
            if ((((ox4) drawable).y ? e27.SOFTWARE : e27.HARDWARE) == e27.SOFTWARE) {
                this.s.invalidateSelf();
            }
        }
    }

    @Override // android.widget.ImageView, android.view.View, android.graphics.drawable.Drawable.Callback
    public final void invalidateDrawable(Drawable drawable) {
        Drawable drawable2 = getDrawable();
        ox4 ox4Var = this.s;
        if (drawable2 == ox4Var) {
            super.invalidateDrawable(ox4Var);
        } else {
            super.invalidateDrawable(drawable);
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (isInEditMode() || !this.w) {
            return;
        }
        this.s.k();
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        int i;
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.t = savedState.b;
        a aVar = a.SET_ANIMATION;
        HashSet hashSet = this.y;
        if (!hashSet.contains(aVar) && !TextUtils.isEmpty(this.t)) {
            setAnimation(this.t);
        }
        this.u = savedState.c;
        if (!hashSet.contains(aVar) && (i = this.u) != 0) {
            setAnimation(i);
        }
        boolean zContains = hashSet.contains(a.SET_PROGRESS);
        ox4 ox4Var = this.s;
        if (!zContains) {
            ox4Var.w(savedState.d);
        }
        a aVar2 = a.PLAY_OPTION;
        if (!hashSet.contains(aVar2) && savedState.e) {
            hashSet.add(aVar2);
            ox4Var.k();
        }
        if (!hashSet.contains(a.SET_IMAGE_ASSETS)) {
            setImageAssetsFolder(savedState.f);
        }
        if (!hashSet.contains(a.SET_REPEAT_MODE)) {
            setRepeatMode(savedState.g);
        }
        if (hashSet.contains(a.SET_REPEAT_COUNT)) {
            return;
        }
        setRepeatCount(savedState.h);
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        boolean z;
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.b = this.t;
        savedState.c = this.u;
        ox4 ox4Var = this.s;
        ay4 ay4Var = ox4Var.c;
        ay4 ay4Var2 = ox4Var.c;
        savedState.d = ay4Var.h();
        if (ox4Var.isVisible()) {
            z = ay4Var2.n;
        } else {
            ox4.b bVar = ox4Var.g;
            z = bVar == ox4.b.PLAY || bVar == ox4.b.RESUME;
        }
        savedState.e = z;
        savedState.f = ox4Var.j;
        savedState.g = ay4Var2.getRepeatMode();
        savedState.h = ay4Var2.getRepeatCount();
        return savedState;
    }

    public final void p() {
        xx4<nw4> xx4Var = this.A;
        if (xx4Var != null) {
            c cVar = this.o;
            synchronized (xx4Var) {
                xx4Var.a.remove(cVar);
            }
            xx4<nw4> xx4Var2 = this.A;
            b bVar = this.p;
            synchronized (xx4Var2) {
                xx4Var2.b.remove(bVar);
            }
        }
    }

    public final void q(AttributeSet attributeSet, int i) {
        String string;
        boolean zRemove;
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, bx6.a, i, 0);
        this.x = typedArrayObtainStyledAttributes.getBoolean(4, true);
        boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(16);
        boolean zHasValue2 = typedArrayObtainStyledAttributes.hasValue(11);
        boolean zHasValue3 = typedArrayObtainStyledAttributes.hasValue(21);
        if (zHasValue && zHasValue2) {
            fg.c("lottie_rawRes and lottie_fileName cannot be used at the same time. Please use only one at once.");
            return;
        }
        if (zHasValue) {
            int resourceId = typedArrayObtainStyledAttributes.getResourceId(16, 0);
            if (resourceId != 0) {
                setAnimation(resourceId);
            }
        } else if (zHasValue2) {
            String string2 = typedArrayObtainStyledAttributes.getString(11);
            if (string2 != null) {
                setAnimation(string2);
            }
        } else if (zHasValue3 && (string = typedArrayObtainStyledAttributes.getString(21)) != null) {
            setAnimationFromUrl(string);
        }
        setFallbackResource(typedArrayObtainStyledAttributes.getResourceId(10, 0));
        if (typedArrayObtainStyledAttributes.getBoolean(3, false)) {
            this.w = true;
        }
        boolean z = typedArrayObtainStyledAttributes.getBoolean(14, false);
        ox4 ox4Var = this.s;
        if (z) {
            ox4Var.c.setRepeatCount(-1);
        }
        if (typedArrayObtainStyledAttributes.hasValue(19)) {
            setRepeatMode(typedArrayObtainStyledAttributes.getInt(19, 1));
        }
        if (typedArrayObtainStyledAttributes.hasValue(18)) {
            setRepeatCount(typedArrayObtainStyledAttributes.getInt(18, -1));
        }
        if (typedArrayObtainStyledAttributes.hasValue(20)) {
            setSpeed(typedArrayObtainStyledAttributes.getFloat(20, 1.0f));
        }
        if (typedArrayObtainStyledAttributes.hasValue(6)) {
            setClipToCompositionBounds(typedArrayObtainStyledAttributes.getBoolean(6, true));
        }
        if (typedArrayObtainStyledAttributes.hasValue(5)) {
            setClipTextToBoundingBox(typedArrayObtainStyledAttributes.getBoolean(5, false));
        }
        if (typedArrayObtainStyledAttributes.hasValue(8)) {
            setDefaultFontFileExtension(typedArrayObtainStyledAttributes.getString(8));
        }
        setImageAssetsFolder(typedArrayObtainStyledAttributes.getString(13));
        boolean zHasValue4 = typedArrayObtainStyledAttributes.hasValue(15);
        float f = typedArrayObtainStyledAttributes.getFloat(15, 0.0f);
        if (zHasValue4) {
            this.y.add(a.SET_PROGRESS);
        }
        ox4Var.w(f);
        boolean z2 = typedArrayObtainStyledAttributes.getBoolean(9, false);
        px4 px4Var = px4.MergePathsApi19;
        HashSet<px4> hashSet = ox4Var.n.a;
        if (!z2) {
            zRemove = hashSet.remove(px4Var);
        } else if (Build.VERSION.SDK_INT < px4Var.minRequiredSdkVersion) {
            gv4.b(String.format("%s is not supported pre SDK %d", px4Var.name(), Integer.valueOf(px4Var.minRequiredSdkVersion)));
            zRemove = false;
        } else {
            zRemove = hashSet.add(px4Var);
        }
        if (ox4Var.b != null && zRemove) {
            ox4Var.c();
        }
        setApplyingOpacityToLayersEnabled(typedArrayObtainStyledAttributes.getBoolean(0, false));
        setApplyingShadowToLayersEnabled(typedArrayObtainStyledAttributes.getBoolean(1, true));
        if (typedArrayObtainStyledAttributes.hasValue(7)) {
            ox4Var.a(new nf4("**"), vx4.I, new by4(new bz7(AppCompatResources.getColorStateList(getContext(), typedArrayObtainStyledAttributes.getResourceId(7, -1)).getDefaultColor(), PorterDuff.Mode.SRC_ATOP)));
        }
        if (typedArrayObtainStyledAttributes.hasValue(17)) {
            e27 e27Var = e27.AUTOMATIC;
            int iOrdinal = typedArrayObtainStyledAttributes.getInt(17, e27Var.ordinal());
            if (iOrdinal >= e27.values().length) {
                iOrdinal = e27Var.ordinal();
            }
            setRenderMode(e27.values()[iOrdinal]);
        }
        if (typedArrayObtainStyledAttributes.hasValue(2)) {
            dt dtVar = dt.AUTOMATIC;
            int iOrdinal2 = typedArrayObtainStyledAttributes.getInt(2, dtVar.ordinal());
            if (iOrdinal2 >= e27.values().length) {
                iOrdinal2 = dtVar.ordinal();
            }
            setAsyncUpdates(dt.values()[iOrdinal2]);
        }
        setIgnoreDisabledSystemAnimations(typedArrayObtainStyledAttributes.getBoolean(12, false));
        if (typedArrayObtainStyledAttributes.hasValue(22)) {
            setUseCompositionFrameRate(typedArrayObtainStyledAttributes.getBoolean(22, false));
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public void setAnimation(final int i) {
        xx4<nw4> xx4VarA;
        this.u = i;
        final String str = null;
        this.t = null;
        if (isInEditMode()) {
            xx4VarA = new xx4<>(new Callable() { // from class: mw4
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    lw4 lw4Var = LottieAnimationView.B;
                    LottieAnimationView lottieAnimationView = this.b;
                    boolean z = lottieAnimationView.x;
                    int i2 = i;
                    if (!z) {
                        return ww4.f(lottieAnimationView.getContext(), i2, null);
                    }
                    Context context = lottieAnimationView.getContext();
                    return ww4.f(context, i2, ww4.k(i2, context));
                }
            }, true);
        } else if (this.x) {
            Context context = getContext();
            final String strK = ww4.k(i, context);
            final WeakReference weakReference = new WeakReference(context);
            final Context applicationContext = context.getApplicationContext();
            xx4VarA = ww4.a(strK, new Callable() { // from class: vw4
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    Context context2 = (Context) weakReference.get();
                    if (context2 == null) {
                        context2 = applicationContext;
                    }
                    return ww4.f(context2, i, strK);
                }
            }, null);
        } else {
            Context context2 = getContext();
            HashMap map = ww4.a;
            final WeakReference weakReference2 = new WeakReference(context2);
            final Context applicationContext2 = context2.getApplicationContext();
            xx4VarA = ww4.a(null, new Callable() { // from class: vw4
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    Context context3 = (Context) weakReference2.get();
                    if (context3 == null) {
                        context3 = applicationContext2;
                    }
                    return ww4.f(context3, i, str);
                }
            }, null);
        }
        setCompositionTask(xx4VarA);
    }

    public void setAnimationFromJson(String str, String str2) {
        setAnimation(new ByteArrayInputStream(str.getBytes()), str2);
    }

    public void setAnimationFromUrl(String str) {
        xx4<nw4> xx4VarA;
        String str2 = null;
        if (this.x) {
            Context context = getContext();
            HashMap map = ww4.a;
            String strC = bj.c("url_", str);
            xx4VarA = ww4.a(strC, new pw4(context, str, strC), null);
        } else {
            xx4VarA = ww4.a(null, new pw4(getContext(), str, str2), null);
        }
        setCompositionTask(xx4VarA);
    }

    public void setApplyingOpacityToLayersEnabled(boolean z) {
        this.s.u = z;
    }

    public void setApplyingShadowToLayersEnabled(boolean z) {
        this.s.v = z;
    }

    public void setAsyncUpdates(dt dtVar) {
        this.s.N = dtVar;
    }

    public void setCacheComposition(boolean z) {
        this.x = z;
    }

    public void setClipTextToBoundingBox(boolean z) {
        ox4 ox4Var = this.s;
        if (z != ox4Var.w) {
            ox4Var.w = z;
            ox4Var.invalidateSelf();
        }
    }

    public void setClipToCompositionBounds(boolean z) {
        ox4 ox4Var = this.s;
        if (z != ox4Var.p) {
            ox4Var.p = z;
            ku1 ku1Var = ox4Var.q;
            if (ku1Var != null) {
                ku1Var.L = z;
            }
            ox4Var.invalidateSelf();
        }
    }

    public void setComposition(nw4 nw4Var) {
        dt dtVar = ah4.a;
        ox4 ox4Var = this.s;
        ox4Var.setCallback(this);
        boolean z = true;
        this.v = true;
        ArrayList<ox4.a> arrayList = ox4Var.h;
        ay4 ay4Var = ox4Var.c;
        if (ox4Var.b == nw4Var) {
            z = false;
        } else {
            ox4Var.M = true;
            ox4Var.d();
            ox4Var.b = nw4Var;
            ox4Var.c();
            boolean z2 = ay4Var.m == null;
            ay4Var.m = nw4Var;
            if (z2) {
                ay4Var.q(Math.max(ay4Var.k, nw4Var.l), Math.min(ay4Var.l, nw4Var.m));
            } else {
                ay4Var.q((int) nw4Var.l, (int) nw4Var.m);
            }
            float f = ay4Var.i;
            ay4Var.i = 0.0f;
            ay4Var.h = 0.0f;
            ay4Var.p((int) f);
            ay4Var.e();
            ox4Var.w(ay4Var.getAnimatedFraction());
            Iterator it = new ArrayList(arrayList).iterator();
            while (it.hasNext()) {
                ox4.a aVar = (ox4.a) it.next();
                if (aVar != null) {
                    aVar.run();
                }
                it.remove();
            }
            arrayList.clear();
            nw4Var.a.a = ox4Var.s;
            ox4Var.e();
            Drawable.Callback callback = ox4Var.getCallback();
            if (callback instanceof ImageView) {
                ImageView imageView = (ImageView) callback;
                imageView.setImageDrawable(null);
                imageView.setImageDrawable(ox4Var);
            }
        }
        if (this.w) {
            ox4Var.k();
        }
        this.v = false;
        if (getDrawable() != ox4Var || z) {
            if (!z) {
                boolean z3 = ay4Var != null ? ay4Var.n : false;
                setImageDrawable(null);
                setImageDrawable(ox4Var);
                if (z3) {
                    ox4Var.m();
                }
            }
            onVisibilityChanged(this, getVisibility());
            requestLayout();
            Iterator it2 = this.z.iterator();
            while (it2.hasNext()) {
                ((ux4) it2.next()).a();
            }
        }
    }

    public void setDefaultFontFileExtension(String str) {
        fi3 fi3Var;
        ox4 ox4Var = this.s;
        ox4Var.m = str;
        if (ox4Var.getCallback() == null) {
            fi3Var = null;
        } else {
            fi3 fi3Var2 = ox4Var.k;
            if (fi3Var2 == null) {
                fi3Var2 = new fi3(ox4Var.getCallback());
                ox4Var.k = fi3Var2;
                String str2 = ox4Var.m;
                if (str2 != null) {
                    fi3Var2.e = str2;
                }
            }
            fi3Var = fi3Var2;
        }
        if (fi3Var != null) {
            fi3Var.e = str;
        }
    }

    public void setFailureListener(tx4<Throwable> tx4Var) {
        this.q = tx4Var;
    }

    public void setFallbackResource(int i) {
        this.r = i;
    }

    public void setFontAssetDelegate(ei3 ei3Var) {
        fi3 fi3Var = this.s.k;
    }

    public void setFontMap(Map<String, Typeface> map) {
        ox4 ox4Var = this.s;
        if (map == ox4Var.l) {
            return;
        }
        ox4Var.l = map;
        ox4Var.invalidateSelf();
    }

    public void setFrame(int i) {
        this.s.n(i);
    }

    @Deprecated
    public void setIgnoreDisabledSystemAnimations(boolean z) {
        this.s.e = z;
    }

    public void setImageAssetDelegate(z04 z04Var) {
        a14 a14Var = this.s.i;
    }

    public void setImageAssetsFolder(String str) {
        this.s.j = str;
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        this.u = 0;
        this.t = null;
        p();
        super.setImageBitmap(bitmap);
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        this.u = 0;
        this.t = null;
        p();
        super.setImageDrawable(drawable);
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageResource(int i) {
        this.u = 0;
        this.t = null;
        p();
        super.setImageResource(i);
    }

    public void setMaintainOriginalImageBounds(boolean z) {
        this.s.o = z;
    }

    public void setMaxFrame(int i) {
        this.s.o(i);
    }

    public void setMaxProgress(float f) {
        ox4 ox4Var = this.s;
        nw4 nw4Var = ox4Var.b;
        if (nw4Var == null) {
            ox4Var.h.add(new fx4(ox4Var, f));
            return;
        }
        ay4 ay4Var = ox4Var.c;
        ay4Var.q(ay4Var.k, hb5.f(nw4Var.l, nw4Var.m, f));
    }

    public void setMinAndMaxFrame(String str) {
        this.s.r(str);
    }

    public void setMinAndMaxProgress(float f, float f2) {
        this.s.t(f, f2);
    }

    public void setMinFrame(int i) {
        this.s.u(i);
    }

    public void setMinProgress(float f) {
        ox4 ox4Var = this.s;
        nw4 nw4Var = ox4Var.b;
        if (nw4Var == null) {
            ox4Var.h.add(new mx4(ox4Var, f));
        } else {
            ox4Var.u((int) hb5.f(nw4Var.l, nw4Var.m, f));
        }
    }

    public void setOutlineMasksAndMattes(boolean z) {
        ox4 ox4Var = this.s;
        if (ox4Var.t == z) {
            return;
        }
        ox4Var.t = z;
        ku1 ku1Var = ox4Var.q;
        if (ku1Var != null) {
            ku1Var.r(z);
        }
    }

    public void setPerformanceTrackingEnabled(boolean z) {
        ox4 ox4Var = this.s;
        ox4Var.s = z;
        nw4 nw4Var = ox4Var.b;
        if (nw4Var != null) {
            nw4Var.a.a = z;
        }
    }

    public void setProgress(float f) {
        this.y.add(a.SET_PROGRESS);
        this.s.w(f);
    }

    public void setRenderMode(e27 e27Var) {
        ox4 ox4Var = this.s;
        ox4Var.x = e27Var;
        ox4Var.e();
    }

    public void setRepeatCount(int i) {
        this.y.add(a.SET_REPEAT_COUNT);
        this.s.c.setRepeatCount(i);
    }

    public void setRepeatMode(int i) {
        this.y.add(a.SET_REPEAT_MODE);
        this.s.c.setRepeatMode(i);
    }

    public void setSafeMode(boolean z) {
        this.s.f = z;
    }

    public void setSpeed(float f) {
        this.s.c.e = f;
    }

    public void setTextDelegate(gq8 gq8Var) {
        this.s.getClass();
    }

    public void setUseCompositionFrameRate(boolean z) {
        this.s.c.o = z;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0019  */
    /* JADX WARN: Code duplicated, block: B:18:0x0027  */
    /* JADX WARN: Code duplicated, block: B:20:0x002b  */
    @Override // android.view.View
    public final void unscheduleDrawable(Drawable drawable) {
        ox4 ox4Var;
        ay4 ay4Var;
        ox4 ox4Var2;
        boolean z = this.v;
        if (!z && drawable == (ox4Var2 = this.s)) {
            ay4 ay4Var2 = ox4Var2.c;
            if (ay4Var2 == null ? false : ay4Var2.n) {
                this.w = false;
                ox4Var2.j();
            } else if (!z) {
                ox4Var = (ox4) drawable;
                ay4Var = ox4Var.c;
                if (ay4Var != null ? ay4Var.n : false) {
                    ox4Var.j();
                }
            }
        } else if (!z && (drawable instanceof ox4)) {
            ox4Var = (ox4) drawable;
            ay4Var = ox4Var.c;
            if (ay4Var != null ? ay4Var.n : false) {
                ox4Var.j();
            }
        }
        super.unscheduleDrawable(drawable);
    }

    public void setMaxFrame(String str) {
        this.s.p(str);
    }

    public void setMinAndMaxFrame(String str, String str2, boolean z) {
        this.s.s(str, str2, z);
    }

    public void setMinFrame(String str) {
        this.s.v(str);
    }

    public void setMinAndMaxFrame(int i, int i2) {
        this.s.q(i, i2);
    }

    @Deprecated
    public void setAnimationFromJson(String str) {
        setAnimationFromJson(str, null);
    }

    public void setAnimationFromUrl(String str, String str2) {
        setCompositionTask(ww4.a(str2, new pw4(getContext(), str, str2), null));
    }

    public LottieAnimationView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.o = new c(this);
        this.p = new b(this);
        this.r = 0;
        this.s = new ox4();
        this.v = false;
        this.w = false;
        this.x = true;
        this.y = new HashSet();
        this.z = new HashSet();
        q(attributeSet, R.attr.lottieAnimationViewStyle);
    }

    public LottieAnimationView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.o = new c(this);
        this.p = new b(this);
        this.r = 0;
        this.s = new ox4();
        this.v = false;
        this.w = false;
        this.x = true;
        this.y = new HashSet();
        this.z = new HashSet();
        q(attributeSet, i);
    }

    public void setAnimation(final InputStream inputStream, final String str) {
        setCompositionTask(ww4.a(str, new Callable() { // from class: qw4
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return ww4.d(inputStream, str);
            }
        }, new jj2(inputStream, 2)));
    }

    public void setAnimation(final String str) {
        xx4<nw4> xx4VarA;
        this.t = str;
        this.u = 0;
        if (isInEditMode()) {
            xx4VarA = new xx4<>(new Callable() { // from class: kw4
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    lw4 lw4Var = LottieAnimationView.B;
                    LottieAnimationView lottieAnimationView = this.b;
                    boolean z = lottieAnimationView.x;
                    String str2 = str;
                    if (!z) {
                        return ww4.b(lottieAnimationView.getContext(), str2, null);
                    }
                    Context context = lottieAnimationView.getContext();
                    HashMap map = ww4.a;
                    return ww4.b(context, str2, "asset_" + str2);
                }
            }, true);
        } else {
            final String str2 = null;
            if (this.x) {
                Context context = getContext();
                HashMap map = ww4.a;
                final String strC = bj.c("asset_", str);
                final Context applicationContext = context.getApplicationContext();
                xx4VarA = ww4.a(strC, new Callable() { // from class: sw4
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return ww4.b(applicationContext, str, strC);
                    }
                }, null);
            } else {
                Context context2 = getContext();
                HashMap map2 = ww4.a;
                final Context applicationContext2 = context2.getApplicationContext();
                xx4VarA = ww4.a(null, new Callable() { // from class: sw4
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return ww4.b(applicationContext2, str, str2);
                    }
                }, null);
            }
        }
        setCompositionTask(xx4VarA);
    }

    public void setAnimation(final ZipInputStream zipInputStream, final String str) {
        setCompositionTask(ww4.a(str, new Callable() { // from class: rw4
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return ww4.g(null, zipInputStream, str);
            }
        }, new h51(zipInputStream, 1)));
    }
}
