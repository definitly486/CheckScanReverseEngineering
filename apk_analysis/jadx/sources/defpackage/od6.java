package defpackage;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.VectorDrawable;
import android.os.Build;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.RatingBar;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.Switch;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.media3.common.C;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.webkit.ProxyConfig;
import com.posthog.internal.replay.PostHogSessionReplayHandler;
import com.posthog.internal.replay.RRCustomEvent;
import com.posthog.internal.replay.RRFullSnapshotEvent;
import com.posthog.internal.replay.RRIncrementalMouseInteractionData;
import com.posthog.internal.replay.RRIncrementalMouseInteractionEvent;
import com.posthog.internal.replay.RRIncrementalMutationData;
import com.posthog.internal.replay.RRIncrementalSnapshotEvent;
import com.posthog.internal.replay.RRMetaEvent;
import com.posthog.internal.replay.RRMouseInteraction;
import com.posthog.internal.replay.RRMutatedNode;
import com.posthog.internal.replay.RRRemovedNode;
import com.posthog.internal.replay.RRStyle;
import com.posthog.internal.replay.RRUtilsKt;
import com.posthog.internal.replay.RRWireframe;
import com.tapjoy.TJAdUnitConstants;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.WeakHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.ExecutorService;

/* JADX INFO: loaded from: classes4.dex */
public final class od6 implements ac6, PostHogSessionReplayHandler {
    public static volatile boolean A;
    public final Context b;
    public final ta6 c;
    public final az4 d;
    public final Map<View, xe9> e;
    public final Set<Integer> f;
    public final fh8 g;
    public final fh8 h;
    public final fh8 i;
    public final Rect j;
    public final Point k;
    public volatile boolean l;
    public final Object m;
    public volatile String n;
    public oa6 o;
    public qd6 p;
    public volatile String q;
    public final Object r;
    public volatile boolean s;
    public Long t;
    public boolean u;
    public int v;
    public final a w;
    public final kd6 x;
    public final ld6 y;
    public final cl4 z;

    public static final class a {
        public a() {
        }

        public final boolean a() {
            od6 od6Var = od6.this;
            synchronized (od6Var.r) {
                if (od6Var.u) {
                    return true;
                }
                Long l = od6Var.t;
                if (l != null && l.longValue() > 0) {
                    return !od6Var.s;
                }
                return false;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r2v16, types: [kd6] */
    /* JADX WARN: Type inference failed for: r2v17, types: [ld6] */
    public od6(Context context, ta6 ta6Var, az4 az4Var) {
        this.b = context;
        this.c = ta6Var;
        this.d = az4Var;
        Map<View, xe9> mapSynchronizedMap = Collections.synchronizedMap(new WeakHashMap());
        mapSynchronizedMap.getClass();
        this.e = mapSynchronizedMap;
        this.f = yr.k0(new Integer[]{128, 144, 224, 16});
        this.g = new fh8(new vu1(this));
        this.h = new fh8(new jd6(this, 0));
        this.i = new fh8(new zi0(this, 1));
        new Paint().setColor(-16777216);
        this.j = new Rect();
        this.k = new Point();
        this.m = new Object();
        this.r = new Object();
        this.w = new a();
        this.x = new hw5() { // from class: kd6
            @Override // defpackage.hw5
            public final void a(View view, boolean z) {
                this.a.c(view, z);
            }
        };
        this.y = new iy8() { // from class: ld6
            @Override // defpackage.iy8
            public final eo2 a(MotionEvent motionEvent, ji9.d dVar) {
                final od6 od6Var = this.a;
                try {
                    eo2 eo2Var = (eo2) dVar.invoke(motionEvent);
                    try {
                        if (od6Var.l) {
                            final long jCurrentTimeMillis = od6Var.c.I.currentTimeMillis();
                            final MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
                            Object value = od6Var.g.getValue();
                            value.getClass();
                            ((ExecutorService) value).submit(new Runnable() { // from class: gd6
                                @Override // java.lang.Runnable
                                public final void run() {
                                    od6 od6Var2 = od6Var;
                                    MotionEvent motionEvent2 = motionEventObtain;
                                    long j = jCurrentTimeMillis;
                                    try {
                                        if (!od6Var2.l) {
                                            motionEvent2.recycle();
                                            return;
                                        }
                                        int action = motionEvent2.getAction() & 255;
                                        if (action == 0) {
                                            od6Var2.f(j, motionEvent2, RRMouseInteraction.TouchStart);
                                        } else if (action == 1) {
                                            od6Var2.f(j, motionEvent2, RRMouseInteraction.TouchEnd);
                                        }
                                        motionEvent2.recycle();
                                    } catch (Throwable th) {
                                        try {
                                            od6Var2.c.v.a("Executor#OnTouchEventListener " + motionEvent2 + " failed: " + th + '.');
                                        } finally {
                                            motionEvent2.recycle();
                                        }
                                    }
                                }
                            });
                        }
                    } catch (Throwable unused) {
                    }
                    return eo2Var;
                } catch (Throwable th) {
                    od6Var.c.v.a("TouchEventInterceptor " + motionEvent + " failed: " + th + '.');
                    throw th;
                }
            }
        };
        this.z = nm4.a(po4.PUBLICATION, new q(this, 4));
    }

    public static String d(od6 od6Var, Drawable drawable, int i, int i2) {
        Drawable drawable2;
        Drawable drawable3;
        od6Var.c.N.getClass();
        Drawable.ConstantState constantState = drawable.getConstantState();
        Drawable drawableNewDrawable = constantState != null ? constantState.newDrawable() : null;
        if (drawableNewDrawable == null) {
            return null;
        }
        if (drawableNewDrawable instanceof BitmapDrawable) {
            try {
                Bitmap bitmap = ((BitmapDrawable) drawableNewDrawable).getBitmap();
                bitmap.getClass();
                return za6.g(bitmap);
            } catch (Throwable unused) {
            }
        } else if (drawableNewDrawable instanceof LayerDrawable) {
            LayerDrawable layerDrawable = (LayerDrawable) drawableNewDrawable;
            int numberOfLayers = layerDrawable.getNumberOfLayers();
            int i3 = 0;
            while (true) {
                if (i3 >= numberOfLayers) {
                    drawable3 = null;
                    break;
                }
                drawable3 = layerDrawable.getDrawable(i3);
                if (drawable3 != null) {
                    break;
                }
                i3++;
            }
            if (drawable3 != null) {
                return d(od6Var, drawable3, i, i2);
            }
        } else if ((drawableNewDrawable instanceof InsetDrawable) && (drawable2 = ((InsetDrawable) drawableNewDrawable).getDrawable()) != null) {
            return d(od6Var, drawable2, i, i2);
        }
        try {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap((DisplayMetrics) od6Var.h.getValue(), i, i2, Bitmap.Config.ARGB_8888);
            bitmapCreateBitmap.getClass();
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            canvas.drawColor(0, PorterDuff.Mode.MULTIPLY);
            drawableNewDrawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
            drawableNewDrawable.draw(canvas);
            String strG = za6.g(bitmapCreateBitmap);
            bitmapCreateBitmap.recycle();
            return strG;
        } catch (Throwable unused2) {
            return null;
        }
    }

    public static ArrayList e(List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            RRWireframe rRWireframe = (RRWireframe) it.next();
            arrayList.add(rRWireframe);
            List<RRWireframe> childWireframes = rRWireframe.getChildWireframes();
            if (childWireframes != null) {
                arrayList.addAll(e(childWireframes));
            }
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void g(od6 od6Var, WeakReference weakReference, WeakReference weakReference2) throws IllegalAccessException {
        View view;
        xe9 xe9Var;
        View view2;
        RRWireframe rRWireframeCopy$default;
        RRWireframe rRWireframe;
        boolean zIsVisible;
        b36 b36Var;
        WindowManager.LayoutParams attributes;
        CharSequence title;
        String string;
        Resources.Theme theme;
        RRStyle style;
        if (!od6Var.l || (view = (View) weakReference.get()) == null || (xe9Var = od6Var.e.get(view)) == null || ((Window) weakReference2.get()) == null || !tl.b(view)) {
            return;
        }
        long jCurrentTimeMillis = od6Var.c.I.currentTimeMillis();
        od6Var.c.N.getClass();
        RRWireframe rRWireframeS = od6Var.s(view, null, false);
        if (rRWireframeS == null) {
            return;
        }
        RRStyle style2 = rRWireframeS.getStyle();
        if ((style2 != null ? style2.getBackgroundColor() : null) == null && (theme = od6Var.b.getTheme()) != null) {
            TypedValue typedValue = new TypedValue();
            theme.resolveAttribute(R.attr.windowBackground, typedValue, true);
            int i = typedValue.type;
            Integer numValueOf = (i < 28 || i > 31) ? null : Integer.valueOf(typedValue.data);
            String strQ = numValueOf != null ? q(numValueOf.intValue()) : null;
            if (strQ != null && (style = rRWireframeS.getStyle()) != null) {
                style.setBackgroundColor(strQ);
            }
        }
        ArrayList arrayList = new ArrayList();
        if (!xe9Var.c) {
            Window windowA = ti9.a(view);
            String strA0 = (windowA == null || (attributes = windowA.getAttributes()) == null || (title = attributes.getTitle()) == null || (string = title.toString()) == null) ? "" : ta8.a0(string, "/", string);
            Context context = view.getContext();
            context.getClass();
            rd6 rd6VarE = za6.e(context);
            if (rd6VarE == null) {
                return;
            }
            arrayList.add(new RRMetaEvent(rd6VarE.a, rd6VarE.b, jCurrentTimeMillis, strA0));
            xe9Var.c = true;
        }
        if (xe9Var.b) {
            RRWireframe rRWireframe2 = xe9Var.e;
            ArrayList arrayListE = e(rRWireframe2 != null ? u96.h(rRWireframe2) : kx2.b);
            ArrayList arrayListE2 = e(u96.h(rRWireframeS));
            int iB = m05.b(kn1.q(arrayListE, 10));
            if (iB < 16) {
                iB = 16;
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap(iB);
            for (Object obj : arrayListE) {
                linkedHashMap.put(Integer.valueOf(((RRWireframe) obj).getId()), obj);
            }
            int iB2 = m05.b(kn1.q(arrayListE2, 10));
            LinkedHashMap linkedHashMap2 = new LinkedHashMap(iB2 >= 16 ? iB2 : 16);
            for (Object obj2 : arrayListE2) {
                linkedHashMap2.put(Integer.valueOf(((RRWireframe) obj2).getId()), obj2);
            }
            ArrayList arrayList2 = new ArrayList(kn1.q(arrayListE, 10));
            Iterator it = arrayListE.iterator();
            while (it.hasNext()) {
                arrayList2.add(Integer.valueOf(((RRWireframe) it.next()).getId()));
            }
            HashSet hashSet = new HashSet(arrayList2);
            ArrayList arrayList3 = new ArrayList(kn1.q(arrayListE2, 10));
            Iterator it2 = arrayListE2.iterator();
            while (it2.hasNext()) {
                arrayList3.add(Integer.valueOf(((RRWireframe) it2.next()).getId()));
            }
            HashSet hashSet2 = new HashSet(arrayList3);
            Set setJ = mr7.j(hashSet2, hashSet);
            ArrayList<RRWireframe> arrayList4 = new ArrayList();
            for (Object obj3 : arrayListE2) {
                View view3 = view;
                if (setJ.contains(Integer.valueOf(((RRWireframe) obj3).getId()))) {
                    arrayList4.add(obj3);
                }
                view = view3;
            }
            view2 = view;
            Set setJ2 = mr7.j(hashSet, hashSet2);
            ArrayList<RRWireframe> arrayList5 = new ArrayList();
            for (Object obj4 : arrayListE) {
                if (setJ2.contains(Integer.valueOf(((RRWireframe) obj4).getId()))) {
                    arrayList5.add(obj4);
                }
            }
            ArrayList<RRWireframe> arrayList6 = new ArrayList();
            for (Integer num : qn1.X(hashSet, hashSet2)) {
                RRWireframe rRWireframe3 = (RRWireframe) linkedHashMap.get(num);
                if (rRWireframe3 != null && (rRWireframeCopy$default = RRWireframe.copy$default(rRWireframe3, 0, 0, 0, 0, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, 262111, null)) != null && (rRWireframe = (RRWireframe) linkedHashMap2.get(num)) != null && !rRWireframeCopy$default.equals(RRWireframe.copy$default(rRWireframe, 0, 0, 0, 0, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, 262111, null))) {
                    arrayList6.add(rRWireframe);
                }
            }
            ArrayList arrayList7 = new ArrayList();
            for (RRWireframe rRWireframe4 : arrayList4) {
                arrayList7.add(new RRMutatedNode(rRWireframe4, rRWireframe4.getParentId()));
            }
            ArrayList arrayList8 = new ArrayList();
            for (RRWireframe rRWireframe5 : arrayList5) {
                arrayList8.add(new RRRemovedNode(rRWireframe5.getId(), rRWireframe5.getParentId()));
            }
            ArrayList arrayList9 = new ArrayList();
            for (RRWireframe rRWireframe6 : arrayList6) {
                arrayList9.add(new RRMutatedNode(rRWireframe6, rRWireframe6.getParentId()));
            }
            if (!arrayList7.isEmpty() || !arrayList8.isEmpty() || !arrayList9.isEmpty()) {
                arrayList.add(new RRIncrementalSnapshotEvent(new RRIncrementalMutationData(arrayList7.isEmpty() ? null : arrayList7, arrayList8.isEmpty() ? null : arrayList8, arrayList9.isEmpty() ? null : arrayList9, null, 8, null), jCurrentTimeMillis));
            }
        } else {
            arrayList.add(new RRFullSnapshotEvent(u96.h(rRWireframeS), 0, 0, jCurrentTimeMillis));
            xe9Var.b = true;
            view2 = view;
        }
        boolean z = xe9Var.d;
        WindowInsetsCompat rootWindowInsets = ViewCompat.getRootWindowInsets(view2);
        if (rootWindowInsets == null || z == (zIsVisible = rootWindowInsets.isVisible(WindowInsetsCompat.Type.ime()))) {
            b36Var = new b36(Boolean.valueOf(z), null);
        } else {
            LinkedHashMap linkedHashMap3 = new LinkedHashMap();
            if (zIsVisible) {
                int i2 = rootWindowInsets.getInsets(WindowInsetsCompat.Type.ime()).bottom;
                linkedHashMap3.put(TtmlNode.TEXT_EMPHASIS_MARK_OPEN, Boolean.TRUE);
                linkedHashMap3.put(TJAdUnitConstants.String.HEIGHT, Integer.valueOf((int) (i2 / od6Var.h())));
            } else {
                linkedHashMap3.put(TtmlNode.TEXT_EMPHASIS_MARK_OPEN, Boolean.FALSE);
            }
            b36Var = new b36(Boolean.valueOf(zIsVisible), new RRCustomEvent("keyboard", linkedHashMap3, od6Var.c.I.currentTimeMillis()));
        }
        boolean zBooleanValue = ((Boolean) b36Var.b).booleanValue();
        RRCustomEvent rRCustomEvent = (RRCustomEvent) b36Var.c;
        xe9Var.d = zBooleanValue;
        if (rRCustomEvent != null) {
            arrayList.add(rRCustomEvent);
        }
        if (!arrayList.isEmpty()) {
            RRUtilsKt.capture(arrayList, od6Var.o);
        }
        xe9Var.e = rRWireframeS;
    }

    public static boolean j(View view) {
        CharSequence contentDescription;
        String string;
        Object tag = view.getTag();
        String str = tag instanceof String ? (String) tag : null;
        return (str != null && ta8.D(str, "ph-no-mask", true)) || !((contentDescription = view.getContentDescription()) == null || (string = contentDescription.toString()) == null || !ta8.D(string, "ph-no-mask", true));
    }

    public static String q(int i) {
        return String.format("#%06X", Arrays.copyOf(new Object[]{Integer.valueOf(i & ViewCompat.MEASURED_SIZE_MASK)}, 1));
    }

    /* JADX WARN: Code duplicated, block: B:16:0x002a A[Catch: all -> 0x007d, TRY_LEAVE, TryCatch #0 {all -> 0x007d, blocks: (B:8:0x0015, B:10:0x001d, B:16:0x002a, B:13:0x0024), top: B:41:0x0015 }] */
    public static String r(Drawable drawable) {
        Drawable drawable2;
        if (drawable instanceof ColorDrawable) {
            return q(((ColorDrawable) drawable).getColor());
        }
        if (drawable instanceof RippleDrawable) {
            try {
                LayerDrawable layerDrawable = (LayerDrawable) drawable;
                int numberOfLayers = layerDrawable.getNumberOfLayers();
                for (int i = 0; i < numberOfLayers; i++) {
                    drawable2 = layerDrawable.getDrawable(i);
                    if (drawable2 != null) {
                        if (drawable2 != null) {
                            return r(drawable2);
                        }
                    }
                }
                drawable2 = null;
                if (drawable2 != null) {
                    return r(drawable2);
                }
            } catch (Throwable unused) {
            }
        } else if (drawable instanceof InsetDrawable) {
            Drawable drawable3 = ((InsetDrawable) drawable).getDrawable();
            if (drawable3 != null) {
                return r(drawable3);
            }
        } else if (drawable instanceof GradientDrawable) {
            GradientDrawable gradientDrawable = (GradientDrawable) drawable;
            int[] colors = gradientDrawable.getColors();
            if (colors != null && colors.length != 0) {
                int i2 = colors[0];
                return q(Color.rgb(Color.red(i2), Color.green(i2), Color.blue(i2)));
            }
            ColorStateList color = gradientDrawable.getColor();
            if (color != null && color.getDefaultColor() != -1) {
                return q(color.getDefaultColor());
            }
        }
        return null;
    }

    @Override // defpackage.ac6
    public final void a(boolean z) {
        boolean z2;
        boolean z3;
        if (!z) {
            synchronized (this.r) {
                z3 = this.u;
            }
            if (z3) {
                this.c.v.a("[Session Replay] First remote config fetch failed. Falling back to the cached session replay flag.");
            }
            o();
            return;
        }
        ad6 ad6Var = this.c.H;
        Long l = ad6Var != null ? ad6Var.H : null;
        synchronized (this.r) {
            this.t = l;
            j59 j59Var = j59.a;
        }
        synchronized (this.r) {
            z2 = this.u;
        }
        o();
        if (this.o == null || this.c.H == null || z2 || !this.l) {
            return;
        }
        this.c.v.a("[Session Replay] ".concat("Remote config disabled recording. Stopping."));
        this.l = false;
        ((Handler) this.d.c).post(new Runnable() { // from class: id6
            @Override // java.lang.Runnable
            public final void run() {
                this.b.stop();
            }
        });
    }

    @Override // defpackage.ac6
    public final void b(bc6 bc6Var) {
        ad6 ad6Var;
        if (A) {
            return;
        }
        A = true;
        this.o = (oa6) bc6Var;
        qd6 qd6Var = this.c.O;
        this.p = qd6Var;
        boolean z = false;
        z = false;
        if (qd6Var != null) {
            try {
                qd6Var.c.execute(new pd6(qd6Var, z ? 1 : 0));
            } catch (Throwable unused) {
            }
        }
        qd6 qd6Var2 = this.p;
        if (qd6Var2 != null) {
            qd6Var2.e = this.w;
        }
        ad6 ad6Var2 = this.c.H;
        Long l = ad6Var2 != null ? ad6Var2.H : null;
        synchronized (this.r) {
            this.t = l;
            j59 j59Var = j59.a;
        }
        synchronized (this.r) {
            ta6 ta6Var = this.c;
            if ((ta6Var.e || ta6Var.c) && (ad6Var = ta6Var.H) != null) {
                z = !ad6Var.i.get();
            }
            this.u = z;
            this.v++;
        }
        Iterator it = qn1.t0(((y77) w62.a.getValue()).b).iterator();
        while (it.hasNext()) {
            c((View) it.next(), true);
        }
        try {
            ((y77) w62.a.getValue()).a.add(this.x);
        } catch (Throwable th) {
            sg.f("Session Replay setup failed: ", th, '.', this.c.v);
        }
    }

    public final void c(View view, boolean z) {
        xe9 xe9Var;
        ta6 ta6Var = this.c;
        try {
            Window windowA = ti9.a(view);
            if (windowA != null) {
                View viewPeekDecorView = windowA.peekDecorView();
                boolean z2 = true;
                int i = 0;
                Map<View, xe9> map = this.e;
                boolean z3 = (viewPeekDecorView == null || map.get(viewPeekDecorView) == null) ? false : true;
                ld6 ld6Var = this.y;
                if (z) {
                    if (ib4.windowAttachCount(view) != 0 && z3) {
                        ta6Var.v.a("Session Replay already has onDecorViewReady.");
                        return;
                    }
                    nd6 nd6Var = new nd6(0, this, windowA);
                    View viewPeekDecorView2 = windowA.peekDecorView();
                    if (viewPeekDecorView2 != null) {
                        nd6Var.invoke(viewPeekDecorView2);
                    } else {
                        cl4 cl4Var = ji9.e;
                        wl7 wl7VarA = ji9.c.a(windowA);
                        ((CopyOnWriteArrayList) wl7VarA.c).add(new si9(wl7VarA, windowA, nd6Var));
                    }
                    cl4 cl4Var2 = ji9.e;
                    ((CopyOnWriteArrayList) ji9.c.a(windowA).a).add(ld6Var);
                    return;
                }
                View viewPeekDecorView3 = windowA.peekDecorView();
                if (viewPeekDecorView3 == null || (xe9Var = map.get(viewPeekDecorView3)) == null) {
                    return;
                }
                if (!tl.b(viewPeekDecorView3) || !viewPeekDecorView3.isAttachedToWindow()) {
                    z2 = false;
                }
                if (z2) {
                    ((Handler) this.d.c).post(new fd6(viewPeekDecorView3, xe9Var, this, i));
                }
                Window windowA2 = ti9.a(viewPeekDecorView3);
                if (windowA2 != null) {
                    cl4 cl4Var3 = ji9.e;
                    ((CopyOnWriteArrayList) ji9.c.a(windowA2).a).remove(ld6Var);
                }
                map.remove(viewPeekDecorView3);
            }
        } catch (Throwable th) {
            sg.f("Session Replay OnRootViewsChangedListener failed: ", th, '.', ta6Var.v);
        }
    }

    public final void f(long j, MotionEvent motionEvent, RRMouseInteraction rRMouseInteraction) {
        ArrayList arrayList = new ArrayList();
        int pointerCount = motionEvent.getPointerCount();
        int i = 0;
        while (i < pointerCount) {
            try {
                int pointerId = motionEvent.getPointerId(i);
                float rawX = (i < 0 || i >= motionEvent.getPointerCount() || Build.VERSION.SDK_INT < 29) ? motionEvent.getRawX() : motionEvent.getRawX(i);
                int iH = (int) (((int) rawX) / h());
                float rawY = (i < 0 || i >= motionEvent.getPointerCount() || Build.VERSION.SDK_INT < 29) ? motionEvent.getRawY() : motionEvent.getRawY(i);
                try {
                    arrayList.add(new RRIncrementalMouseInteractionEvent(new RRIncrementalMouseInteractionData(pointerId, rRMouseInteraction, iH, (int) (((int) rawY) / h()), null, 0, null, 112, null), j));
                } catch (Throwable th) {
                    th = th;
                    sg.f("Reading MotionEvent pointers failed: ", th, '.', this.c.v);
                }
            } catch (Throwable th2) {
                th = th2;
            }
            i++;
        }
        if (arrayList.isEmpty()) {
            return;
        }
        RRUtilsKt.capture(arrayList, this.o);
    }

    public final float h() {
        return ((Number) this.i.getValue()).floatValue();
    }

    public final boolean i(View view, boolean z) {
        if (z || j(view)) {
            return false;
        }
        this.c.N.getClass();
        return true;
    }

    @Override // com.posthog.internal.replay.PostHogSessionReplayHandler
    public final boolean isActive() {
        return this.l;
    }

    /* JADX WARN: Code duplicated, block: B:30:0x004a  */
    /* JADX WARN: Code duplicated, block: B:32:0x004d A[Catch: all -> 0x0014, TryCatch #0 {all -> 0x0014, blocks: (B:3:0x0001, B:5:0x0007, B:7:0x000d, B:12:0x0016, B:14:0x001c, B:16:0x0022, B:18:0x0028, B:20:0x002e, B:22:0x0035, B:24:0x003b, B:26:0x0041, B:32:0x004d, B:34:0x0055, B:37:0x005b, B:40:0x0062, B:42:0x0068), top: B:48:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:34:0x0055 A[Catch: all -> 0x0014, TryCatch #0 {all -> 0x0014, blocks: (B:3:0x0001, B:5:0x0007, B:7:0x000d, B:12:0x0016, B:14:0x001c, B:16:0x0022, B:18:0x0028, B:20:0x002e, B:22:0x0035, B:24:0x003b, B:26:0x0041, B:32:0x004d, B:34:0x0055, B:37:0x005b, B:40:0x0062, B:42:0x0068), top: B:48:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:35:0x0058  */
    public final boolean k(View view) {
        Animation animation;
        boolean z;
        ViewParent parent;
        ViewGroup viewGroup;
        View rootView;
        Animation animation2;
        try {
            if (view.isAttachedToWindow()) {
                if (!view.isLaidOut()) {
                    Object obj = yd6.a;
                    if (yd6.g) {
                        if (view.getWidth() > 0 && view.getHeight() > 0 && !view.isInLayout() && !view.hasTransientState()) {
                            animation = view.getAnimation();
                            if (animation == null && animation.hasStarted() && ((animation2 = view.getAnimation()) == null || !animation2.hasEnded())) {
                                z = true;
                            } else {
                                z = false;
                            }
                            if (!z) {
                                parent = view.getParent();
                                if (parent instanceof ViewGroup) {
                                    viewGroup = (ViewGroup) parent;
                                } else {
                                    viewGroup = null;
                                }
                                if ((viewGroup != null || !viewGroup.isInLayout()) && (rootView = view.getRootView()) != null && rootView.isAttachedToWindow()) {
                                }
                            }
                        }
                    }
                } else if (view.getWidth() > 0) {
                    animation = view.getAnimation();
                    if (animation == null) {
                        z = false;
                    } else {
                        z = false;
                    }
                    if (!z) {
                        parent = view.getParent();
                        if (parent instanceof ViewGroup) {
                            viewGroup = (ViewGroup) parent;
                        } else {
                            viewGroup = null;
                        }
                        return viewGroup != null ? true : true;
                    }
                }
            }
            return false;
        } catch (Throwable th) {
            sg.f("Session Replay view state check failed: ", th, '.', this.c.v);
            return false;
        }
    }

    public final void l(qd6 qd6Var) {
        Long l;
        Long lValueOf;
        String str;
        Long lValueOf2;
        Long lValueOf3;
        synchronized (this.r) {
            l = this.t;
        }
        if (l != null) {
            if (l.longValue() > 0) {
                ed6 ed6Var = qd6Var.d;
                synchronized (ed6Var.d) {
                    String str2 = (String) qn1.V(ed6Var.c);
                    lValueOf = null;
                    if (str2 != null && (str = (String) qn1.c0(ed6Var.c)) != null) {
                        try {
                            lValueOf2 = Long.valueOf(UUID.fromString(ta8.U(str2, ".event")).getMostSignificantBits() >>> 16);
                        } catch (Throwable unused) {
                            lValueOf2 = null;
                        }
                        if (lValueOf2 != null) {
                            long jLongValue = lValueOf2.longValue();
                            try {
                                lValueOf3 = Long.valueOf(UUID.fromString(ta8.U(str, ".event")).getMostSignificantBits() >>> 16);
                            } catch (Throwable unused2) {
                                lValueOf3 = null;
                            }
                            if (lValueOf3 != null) {
                                lValueOf = Long.valueOf(Math.max(lValueOf3.longValue() - jLongValue, 0L));
                            }
                        }
                    }
                }
                if ((lValueOf != null ? lValueOf.longValue() : 0L) >= l.longValue()) {
                    this.c.v.a("[Session Replay] Minimum duration met. Migrating " + qd6Var.d.a() + " buffered events to replay queue.");
                    synchronized (this.r) {
                        this.s = true;
                        j59 j59Var = j59.a;
                    }
                    m(qd6Var);
                    return;
                }
                return;
            }
        }
        synchronized (this.r) {
            this.s = true;
            j59 j59Var2 = j59.a;
        }
        m(qd6Var);
    }

    public final void m(qd6 qd6Var) {
        try {
            Object value = this.g.getValue();
            value.getClass();
            ((ExecutorService) value).submit(new x42(3, qd6Var, this));
        } catch (Throwable th) {
            sg.f("Session Replay scheduling migrateBufferToQueue failed: ", th, '.', this.c.v);
        }
    }

    public final void n(String str, boolean z) {
        int i;
        ad6 ad6Var;
        if (z || !aa4.e(this.q, str)) {
            this.q = str;
            synchronized (this.e) {
                try {
                    Iterator<T> it = this.e.entrySet().iterator();
                    while (true) {
                        i = 0;
                        if (!it.hasNext()) {
                            break;
                        }
                        xe9 xe9Var = (xe9) ((Map.Entry) it.next()).getValue();
                        xe9Var.b = false;
                        xe9Var.c = false;
                        xe9Var.d = false;
                        xe9Var.e = null;
                    }
                    j59 j59Var = j59.a;
                } catch (Throwable th) {
                    throw th;
                }
            }
            synchronized (this.r) {
                this.s = false;
                ta6 ta6Var = this.c;
                this.u = ((ta6Var.e || ta6Var.c) && (ad6Var = ta6Var.H) != null) ? !ad6Var.i.get() : false;
                this.v++;
            }
            qd6 qd6Var = this.p;
            if (qd6Var != null) {
                try {
                    qd6Var.c.execute(new pd6(qd6Var, i));
                } catch (Throwable unused) {
                }
            }
        }
    }

    public final void o() {
        int i;
        boolean z;
        synchronized (this.r) {
            if (this.u) {
                int i2 = this.v;
                synchronized (this.r) {
                    i = 0;
                    z = (this.v == i2 && this.u) ? false : true;
                }
                if (z) {
                    return;
                }
                stop();
                qd6 qd6Var = this.p;
                if (qd6Var != null) {
                    try {
                        qd6Var.c.execute(new pd6(qd6Var, i));
                    } catch (Throwable unused) {
                    }
                }
                synchronized (this.r) {
                    try {
                        if (this.v == i2) {
                            this.u = false;
                        }
                        j59 j59Var = j59.a;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }
    }

    @Override // com.posthog.internal.replay.PostHogSessionReplayHandler
    public final void onEvent(String str, Map<String, ? extends Object> map) {
        UUID uuidQ;
        String string;
        String str2;
        str.getClass();
        oa6 oa6Var = this.o;
        if (oa6Var == null || (uuidQ = oa6Var.q()) == null || (string = uuidQ.toString()) == null) {
            return;
        }
        ad6 ad6Var = this.c.H;
        Set<String> set = null;
        if (ad6Var != null) {
            Object obj = yd6.a;
            if (!yd6.g) {
                set = ad6Var.G;
            }
        }
        Set<String> set2 = set;
        if (set2 == null || set2.isEmpty()) {
            return;
        }
        synchronized (this.m) {
            str2 = this.n;
        }
        if (!aa4.e(str2, string) && set.contains(str)) {
            synchronized (this.m) {
                this.n = string;
                j59 j59Var = j59.a;
            }
            this.c.v.a("[Session Replay] Event trigger matched: " + str + ". Starting replay for session " + string + '.');
            start(true);
        }
    }

    @Override // com.posthog.internal.replay.PostHogSessionReplayHandler
    public final void onSessionIdChanged() {
        Set<String> set;
        UUID uuid;
        String str;
        if (this.o == null) {
            return;
        }
        synchronized (yd6.a) {
            set = null;
            uuid = aa4.e(yd6.c, yd6.b) ? null : yd6.c;
        }
        final String string = uuid != null ? uuid.toString() : null;
        n(string, false);
        final ad6 ad6Var = this.c.H;
        if (ad6Var != null && !yd6.g) {
            set = ad6Var.G;
        }
        synchronized (this.m) {
            str = this.n;
        }
        Set<String> set2 = set;
        if (set2 != null && !set2.isEmpty() && !aa4.e(str, string)) {
            if (this.l) {
                this.c.v.a("[Session Replay] Session changed. Stopping until trigger is matched.");
                stop();
                return;
            }
            return;
        }
        if (string != null) {
            this.c.v.a("[Session Replay] Session changed. Re-initializing recording for new session.");
            ((Handler) this.d.c).post(new Runnable(ad6Var, string) { // from class: md6
                @Override // java.lang.Runnable
                public final void run() {
                    od6 od6Var = this.b;
                    if (od6Var.l) {
                        od6Var.stop();
                    }
                }
            });
        } else if (this.l) {
            this.c.v.a("[Session Replay] Session cleared. Stopping recording.");
            ((Handler) this.d.c).post(new iu0(this, 1));
        }
    }

    public final boolean p(TextView textView, boolean z) {
        if (!i(textView, z)) {
            if (!this.f.contains(Integer.valueOf(textView.getInputType() - 1))) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:130:0x0254  */
    /* JADX WARN: Code duplicated, block: B:132:0x025a  */
    /* JADX WARN: Code duplicated, block: B:141:0x0274  */
    /* JADX WARN: Code duplicated, block: B:237:0x0435  */
    /* JADX WARN: Code duplicated, block: B:243:0x044d A[PHI: r13
      0x044d: PHI (r13v11 java.lang.String) = (r13v10 java.lang.String), (r13v20 java.lang.String), (r13v20 java.lang.String) binds: [B:210:0x03ec, B:239:0x0438, B:241:0x043e] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Multi-variable type inference failed */
    public final RRWireframe s(View view, Integer num, boolean z) {
        boolean globalVisibleRect;
        int i;
        String str;
        Object objValueOf;
        String str2;
        Boolean boolValueOf;
        String str3;
        String strD;
        Integer numValueOf;
        String str4;
        Boolean boolValueOf2;
        String str5;
        String str6;
        boolean z2;
        Drawable drawable;
        boolean zD;
        String string;
        String str7;
        String str8;
        String str9;
        int i2;
        ta6 ta6Var = this.c;
        try {
            if (view.getWidth() > 0 && view.getHeight() > 0 && view.isAttachedToWindow() && view.getWindowVisibility() == 0) {
                Object parent = view;
                while (true) {
                    if (!(parent instanceof View)) {
                        if (k(view)) {
                            globalVisibleRect = view.getGlobalVisibleRect(this.j, this.k);
                            break;
                        }
                    } else {
                        float transitionAlpha = Build.VERSION.SDK_INT >= 29 ? ((View) parent).getTransitionAlpha() : 1.0f;
                        if (((View) parent).getAlpha() > 0.0f && transitionAlpha > 0.0f && ((View) parent).getVisibility() == 0) {
                            parent = ((View) parent).getParent();
                        }
                    }
                    globalVisibleRect = false;
                    break;
                }
            }
            globalVisibleRect = false;
            break;
        } catch (Throwable th) {
            sg.f("Session Replay isVisible failed: ", th, '.', ta6Var.v);
            globalVisibleRect = true;
        }
        if (!globalVisibleRect) {
            return null;
        }
        boolean z3 = z || j(view);
        int iIdentityHashCode = System.identityHashCode(view);
        int[] iArr = new int[2];
        if (k(view)) {
            view.getLocationOnScreen(iArr);
        } else {
            iArr[0] = 0;
            iArr[1] = 0;
        }
        int iH = (int) (iArr[0] / h());
        int iH2 = (int) (iArr[1] / h());
        int width = (int) (view.getWidth() / h());
        int height = (int) (view.getHeight() / h());
        String str10 = view.getId() == 16908335 ? "status_bar" : null;
        if (view.getId() == 16908336) {
            str10 = "navigation_bar";
        }
        RRStyle rRStyle = new RRStyle(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 131071, null);
        Drawable background = view.getBackground();
        if (background != null) {
            String strR = r(background);
            if (strR != null) {
                rRStyle.setBackgroundColor(strR);
            } else {
                rRStyle.setBackgroundImage(d(this, background, view.getWidth(), view.getHeight()));
            }
        }
        if (view instanceof TextView) {
            TextView textView = (TextView) view;
            CharSequence text = textView.getText();
            String string2 = text != null ? text.toString() : null;
            if (string2 == null || string2.length() == 0) {
                string2 = null;
            } else if (p(textView, z3)) {
                string2 = ra8.x(string2.length(), ProxyConfig.MATCH_ALL_SCHEMES);
            }
            CharSequence hint = textView.getHint();
            String string3 = hint != null ? hint.toString() : null;
            if ((string2 == null || string2.length() == 0) && string3 != null && string3.length() != 0) {
                string2 = !p(textView, z3) ? string3 : ra8.x(string3.length(), ProxyConfig.MATCH_ALL_SCHEMES);
            }
            rRStyle.setColor(q(textView.getCurrentTextColor()));
            if (!(view instanceof Button) || (view instanceof CompoundButton)) {
                str2 = string2;
                objValueOf = null;
                str10 = "text";
                str7 = null;
            } else {
                rRStyle.setBorderWidth(1);
                rRStyle.setBorderColor("#000000");
                str7 = "button";
                objValueOf = string2;
                str10 = "input";
                str2 = null;
            }
            Typeface typeface = textView.getTypeface();
            if (typeface != null) {
                if (typeface.equals(Typeface.DEFAULT)) {
                    rRStyle.setFontFamily(C.SANS_SERIF_NAME);
                } else if (typeface.equals(Typeface.DEFAULT_BOLD)) {
                    rRStyle.setFontFamily("sans-serif-bold");
                } else if (typeface.equals(Typeface.MONOSPACE)) {
                    rRStyle.setFontFamily("monospace");
                } else if (typeface.equals(Typeface.SERIF)) {
                    rRStyle.setFontFamily(C.SERIF_NAME);
                }
            }
            rRStyle.setFontSize(Integer.valueOf((int) (((int) textView.getTextSize()) / h())));
            String str11 = str7;
            switch (textView.getTextAlignment()) {
                case 1:
                    int gravity = textView.getGravity() & 7;
                    if (gravity == 1) {
                        str8 = TtmlNode.CENTER;
                    } else if (gravity == 3) {
                        str8 = TtmlNode.LEFT;
                    } else {
                        if (gravity != 5) {
                            if (gravity == 17) {
                                str8 = TtmlNode.CENTER;
                            } else if (gravity == 8388611 || gravity != 8388613) {
                                str8 = TtmlNode.LEFT;
                            }
                        }
                        str8 = TtmlNode.RIGHT;
                    }
                    rRStyle.setHorizontalAlign(str8);
                    int gravity2 = textView.getGravity() & 112;
                    if (gravity2 == 16 || gravity2 == 17) {
                        str9 = TtmlNode.CENTER;
                    } else if (gravity2 == 48) {
                        str9 = "top";
                    } else if (gravity2 != 80) {
                        str9 = TtmlNode.CENTER;
                    } else {
                        str9 = "bottom";
                    }
                    rRStyle.setVerticalAlign(str9);
                    break;
                case 2:
                case 5:
                    rRStyle.setVerticalAlign(TtmlNode.CENTER);
                    rRStyle.setHorizontalAlign(TtmlNode.LEFT);
                    break;
                case 3:
                case 6:
                    rRStyle.setVerticalAlign(TtmlNode.CENTER);
                    rRStyle.setHorizontalAlign(TtmlNode.RIGHT);
                    break;
                case 4:
                    rRStyle.setVerticalAlign(TtmlNode.CENTER);
                    rRStyle.setHorizontalAlign(TtmlNode.CENTER);
                    break;
                default:
                    rRStyle.setVerticalAlign(TtmlNode.CENTER);
                    rRStyle.setHorizontalAlign(TtmlNode.LEFT);
                    break;
            }
            Drawable[] compoundDrawables = textView.getCompoundDrawables();
            compoundDrawables.getClass();
            int length = compoundDrawables.length;
            int i3 = 0;
            int i4 = 0;
            while (i3 < length) {
                int i5 = i3;
                Drawable drawable2 = compoundDrawables[i5];
                int i6 = i4 + 1;
                int i7 = length;
                if (drawable2 != null) {
                    i2 = iH2;
                    String strD2 = d(this, drawable2, textView.getWidth(), textView.getHeight());
                    if (i4 == 0) {
                        rRStyle.setIconLeft(strD2);
                    } else if (i4 == 2) {
                        rRStyle.setIconRight(strD2);
                    }
                } else {
                    i2 = iH2;
                }
                i3 = i5 + 1;
                i4 = i6;
                length = i7;
                iH2 = i2;
            }
            i = iH2;
            if (!aa4.e(rRStyle.getVerticalAlign(), TtmlNode.CENTER)) {
                rRStyle.setPaddingTop(Integer.valueOf((int) (textView.getTotalPaddingTop() / h())));
                rRStyle.setPaddingBottom(Integer.valueOf((int) (textView.getTotalPaddingBottom() / h())));
            }
            if (!aa4.e(rRStyle.getHorizontalAlign(), TtmlNode.CENTER)) {
                rRStyle.setPaddingLeft(Integer.valueOf((int) (textView.getTotalPaddingLeft() / h())));
                rRStyle.setPaddingRight(Integer.valueOf((int) (textView.getTotalPaddingRight() / h())));
            }
            str = str11;
        } else {
            i = iH2;
            str = null;
            objValueOf = null;
            str2 = null;
        }
        if (view instanceof CheckBox) {
            boolValueOf = Boolean.valueOf(((CheckBox) view).isChecked());
            str = "checkbox";
            str10 = "input";
            str3 = str2;
            str2 = null;
        } else {
            boolValueOf = null;
            str3 = null;
        }
        if (view instanceof RadioGroup) {
            str10 = "radio_group";
        }
        if (view instanceof RadioButton) {
            boolValueOf = Boolean.valueOf(((RadioButton) view).isChecked());
            str = "radio";
            str10 = "input";
            str3 = str2;
            str2 = null;
        }
        if (view instanceof EditText) {
            str = "text_area";
            str10 = "input";
            objValueOf = str2;
            str2 = null;
        }
        r07 r07Var = new r07();
        if (view instanceof Spinner) {
            Spinner spinner = (Spinner) view;
            boolean zI = i(spinner, z3);
            Object selectedItem = spinner.getSelectedItem();
            if (selectedItem != null) {
                objValueOf = !zI ? selectedItem.toString() : ra8.x(selectedItem.toString().length(), ProxyConfig.MATCH_ALL_SCHEMES);
            }
            SpinnerAdapter adapter = spinner.getAdapter();
            if (adapter != null) {
                ArrayList arrayList = new ArrayList();
                int count = adapter.getCount();
                int i8 = 0;
                while (i8 < count) {
                    Object item = adapter.getItem(i8);
                    if (item == null || (string = item.toString()) == null) {
                        count = count;
                    } else {
                        if (zI) {
                            string = ra8.x(string.length(), ProxyConfig.MATCH_ALL_SCHEMES);
                        }
                        arrayList.add(string);
                    }
                    i8++;
                    count = count;
                }
                boolean zIsEmpty = arrayList.isEmpty();
                T t = arrayList;
                if (zIsEmpty) {
                    t = 0;
                }
                r07Var.b = t;
            }
            str = "select";
            str10 = "input";
        } else {
            boolValueOf = boolValueOf;
            str3 = str3;
        }
        if (view instanceof ImageView) {
            ImageView imageView = (ImageView) view;
            if (z3 || j(imageView)) {
                z2 = false;
            } else {
                ta6Var.N.getClass();
                Drawable drawable3 = imageView.getDrawable();
                if (drawable3 == null) {
                    z2 = false;
                } else {
                    if ((drawable3 instanceof InsetDrawable) || (drawable3 instanceof ColorDrawable) || (drawable3 instanceof VectorDrawable) || (drawable3 instanceof GradientDrawable) || (drawable3 instanceof LayerDrawable)) {
                        zD = false;
                    } else if (drawable3 instanceof BitmapDrawable) {
                        Bitmap bitmap = ((BitmapDrawable) drawable3).getBitmap();
                        bitmap.getClass();
                        zD = za6.d(bitmap);
                    } else {
                        zD = true;
                    }
                    if (zD) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                }
            }
            str10 = "image";
            if (z2 || (drawable = imageView.getDrawable()) == null) {
                strD = null;
            } else {
                strD = d(this, drawable, imageView.getWidth(), imageView.getHeight());
            }
        } else {
            strD = null;
        }
        if (view instanceof ProgressBar) {
            ProgressBar progressBar = (ProgressBar) view;
            if (progressBar.isIndeterminate()) {
                str6 = "circular";
                numValueOf = null;
            } else {
                numValueOf = Integer.valueOf(progressBar.getMax());
                objValueOf = Integer.valueOf(progressBar.getProgress());
                str6 = "horizontal";
            }
            rRStyle.setBar(str6);
            str = "progress";
            str10 = "input";
        } else {
            numValueOf = null;
        }
        if (view instanceof RatingBar) {
            rRStyle.setBar("rating");
            RatingBar ratingBar = (RatingBar) view;
            numValueOf = Integer.valueOf(ratingBar.getMax() / 2);
            objValueOf = Float.valueOf(ratingBar.getRating());
        }
        Integer num2 = numValueOf;
        if (view instanceof Switch) {
            str = "toggle";
            boolValueOf2 = Boolean.valueOf(((Switch) view).isChecked());
            str10 = "input";
            str4 = str2;
            str2 = null;
        } else {
            str4 = str3;
            boolValueOf2 = boolValueOf;
        }
        String str12 = str;
        if (view instanceof WebView) {
            str10 = "web_view";
        }
        ArrayList arrayList2 = new ArrayList();
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            if (viewGroup.getChildCount() > 0) {
                int childCount = viewGroup.getChildCount();
                int i9 = 0;
                while (i9 < childCount) {
                    View childAt = viewGroup.getChildAt(i9);
                    if (childAt == null) {
                        str5 = strD;
                    } else {
                        str5 = strD;
                        RRWireframe rRWireframeS = s(childAt, Integer.valueOf(iIdentityHashCode), z3);
                        if (rRWireframeS != null) {
                            arrayList2.add(rRWireframeS);
                        }
                    }
                    i9++;
                    strD = str5;
                }
            }
        }
        return new RRWireframe(iIdentityHashCode, iH, i, width, height, arrayList2.isEmpty() ? null : arrayList2, str10, str12, str2, str4, objValueOf, strD, rRStyle, Boolean.valueOf(!view.isEnabled()), boolValueOf2, (List) r07Var.b, num, num2);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0024  */
    /* JADX WARN: Code duplicated, block: B:30:0x003f  */
    @Override // com.posthog.internal.replay.PostHogSessionReplayHandler
    public final void start(boolean z) {
        boolean z2;
        UUID uuidQ;
        UUID uuidQ2;
        String string;
        Set<String> set;
        String str;
        oa6 oa6Var = this.o;
        String string2 = null;
        set = null;
        Set<String> set2 = null;
        string2 = null;
        if (oa6Var == null || (uuidQ2 = oa6Var.q()) == null || (string = uuidQ2.toString()) == null) {
            z2 = false;
        } else {
            ad6 ad6Var = this.c.H;
            if (ad6Var != null) {
                Object obj = yd6.a;
                if (yd6.g) {
                    set = null;
                } else {
                    set = ad6Var.G;
                }
            } else {
                set = null;
            }
            Set<String> set3 = set;
            if (set3 == null || set3.isEmpty()) {
                z2 = false;
            } else {
                synchronized (this.m) {
                    str = this.n;
                }
                z2 = !aa4.e(str, string);
            }
        }
        if (z2) {
            ad6 ad6Var2 = this.c.H;
            if (ad6Var2 != null) {
                Object obj2 = yd6.a;
                if (!yd6.g) {
                    set2 = ad6Var2.G;
                }
            }
            this.c.v.a("[Session Replay] Event triggers configured. Integration will not start until any of these events are captured: " + set2);
            return;
        }
        oa6 oa6Var2 = this.o;
        if (oa6Var2 != null && (uuidQ = oa6Var2.q()) != null) {
            string2 = uuidQ.toString();
        }
        n(string2, !z);
        this.l = true;
        if (z) {
            return;
        }
        ((Handler) this.d.c).post(new x(this, 1));
    }

    @Override // com.posthog.internal.replay.PostHogSessionReplayHandler
    public final void stop() {
        this.l = false;
    }
}
