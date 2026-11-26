package com.bumptech.glide;

import android.R;
import android.app.Activity;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import androidx.collection.ArrayMap;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.tapjoy.TJAdUnitConstants;
import defpackage.bx1;
import defpackage.eb9;
import defpackage.ey4;
import defpackage.fg;
import defpackage.fy4;
import defpackage.g94;
import defpackage.h2;
import defpackage.ih2;
import defpackage.ij0;
import defpackage.ik0;
import defpackage.iy4;
import defpackage.jj0;
import defpackage.kp;
import defpackage.kz2;
import defpackage.m24;
import defpackage.p37;
import defpackage.pr;
import defpackage.q17;
import defpackage.q37;
import defpackage.q95;
import defpackage.r96;
import defpackage.rq3;
import defpackage.sz4;
import defpackage.wq3;
import defpackage.xq3;
import defpackage.yq3;
import defpackage.zq3;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes3.dex */
public final class a implements ComponentCallbacks2 {
    public static volatile a i;
    public static volatile boolean j;
    public final ij0 b;
    public final iy4 c;
    public final wq3 d;
    public final pr e;
    public final q37 f;
    public final bx1 g;
    public final ArrayList h = new ArrayList();

    public a(Context context, kz2 kz2Var, iy4 iy4Var, ij0 ij0Var, pr prVar, q37 q37Var, bx1 bx1Var, rq3 rq3Var, ArrayMap arrayMap, List list, ArrayList arrayList, kp kpVar, yq3 yq3Var) {
        this.b = ij0Var;
        this.e = prVar;
        this.c = iy4Var;
        this.f = q37Var;
        this.g = bx1Var;
        this.d = new wq3(context, prVar, new q17(this, arrayList, kpVar), new m24(0), rq3Var, arrayMap, list, kz2Var, yq3Var);
    }

    public static a a(Context context) {
        if (i == null) {
            GeneratedAppGlideModule generatedAppGlideModule = null;
            try {
                generatedAppGlideModule = (GeneratedAppGlideModule) Class.forName("com.bumptech.glide.GeneratedAppGlideModuleImpl").getDeclaredConstructor(Context.class).newInstance(context.getApplicationContext().getApplicationContext());
            } catch (ClassNotFoundException unused) {
                if (Log.isLoggable("Glide", 5)) {
                    Log.w("Glide", "Failed to find GeneratedAppGlideModule. You should include an annotationProcessor compile dependency on com.github.bumptech.glide:compiler in your application and a @GlideModule annotated AppGlideModule implementation or LibraryGlideModules will be silently ignored");
                }
            } catch (IllegalAccessException e) {
                h2.e("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", e);
                return null;
            } catch (InstantiationException e2) {
                h2.e("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", e2);
                return null;
            } catch (NoSuchMethodException e3) {
                h2.e("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", e3);
                return null;
            } catch (InvocationTargetException e4) {
                h2.e("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", e4);
                return null;
            }
            synchronized (a.class) {
                if (i == null) {
                    if (j) {
                        throw new IllegalStateException("Glide has been called recursively, this is probably an internal library error!");
                    }
                    j = true;
                    try {
                        c(context, generatedAppGlideModule);
                        j = false;
                    } catch (Throwable th) {
                        j = false;
                        throw th;
                    }
                }
            }
        }
        return i;
    }

    public static q37 b(Context context) {
        r96.c(context, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed).");
        return a(context).f;
    }

    public static void c(Context context, GeneratedAppGlideModule generatedAppGlideModule) {
        ArrayMap arrayMap = new ArrayMap();
        yq3.a aVar = new yq3.a();
        rq3 rq3Var = new rq3();
        Context applicationContext = context.getApplicationContext();
        List list = Collections.EMPTY_LIST;
        if (Log.isLoggable("ManifestParser", 3)) {
            Log.d("ManifestParser", "Loading Glide modules");
        }
        ArrayList arrayList = new ArrayList();
        try {
            ApplicationInfo applicationInfo = applicationContext.getPackageManager().getApplicationInfo(applicationContext.getPackageName(), 128);
            if (applicationInfo != null && applicationInfo.metaData != null) {
                if (Log.isLoggable("ManifestParser", 2)) {
                    Log.v("ManifestParser", "Got app info metadata: " + applicationInfo.metaData);
                }
                for (String str : applicationInfo.metaData.keySet()) {
                    if ("GlideModule".equals(applicationInfo.metaData.get(str))) {
                        arrayList.add(sz4.a(str));
                        if (Log.isLoggable("ManifestParser", 3)) {
                            Log.d("ManifestParser", "Loaded Glide module: " + str);
                        }
                    }
                }
                if (Log.isLoggable("ManifestParser", 3)) {
                    Log.d("ManifestParser", "Finished loading Glide modules");
                }
            } else if (Log.isLoggable("ManifestParser", 3)) {
                Log.d("ManifestParser", "Got null app info metadata");
            }
        } catch (PackageManager.NameNotFoundException e) {
            if (Log.isLoggable("ManifestParser", 6)) {
                Log.e("ManifestParser", "Failed to parse glide modules", e);
            }
        }
        if (generatedAppGlideModule != null && !new HashSet().isEmpty()) {
            HashSet hashSet = new HashSet();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                zq3 zq3Var = (zq3) it.next();
                if (hashSet.contains(zq3Var.getClass())) {
                    if (Log.isLoggable("Glide", 3)) {
                        Log.d("Glide", "AppGlideModule excludes manifest GlideModule: " + zq3Var);
                    }
                    it.remove();
                }
            }
        }
        if (Log.isLoggable("Glide", 3)) {
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                Log.d("Glide", "Discovered GlideModule from manifest: " + ((zq3) it2.next()).getClass());
            }
        }
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            ((zq3) it3.next()).b();
        }
        xq3.a aVar2 = new xq3.a();
        if (xq3.c == 0) {
            xq3.c = Math.min(4, Runtime.getRuntime().availableProcessors());
        }
        int i2 = xq3.c;
        if (TextUtils.isEmpty("source")) {
            fg.c("Name must be non-null and non-empty, but given: source");
            return;
        }
        xq3 xq3Var = new xq3(new ThreadPoolExecutor(i2, i2, 0L, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new xq3.b(aVar2, "source", false)));
        xq3.a aVar3 = new xq3.a();
        if (TextUtils.isEmpty("disk-cache")) {
            fg.c("Name must be non-null and non-empty, but given: disk-cache");
            return;
        }
        xq3 xq3Var2 = new xq3(new ThreadPoolExecutor(1, 1, 0L, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new xq3.b(aVar3, "disk-cache", true)));
        if (xq3.c == 0) {
            xq3.c = Math.min(4, Runtime.getRuntime().availableProcessors());
        }
        int i3 = xq3.c >= 4 ? 2 : 1;
        xq3.a aVar4 = new xq3.a();
        if (TextUtils.isEmpty(TJAdUnitConstants.String.SPLIT_VIEW_ANIMATION)) {
            fg.c("Name must be non-null and non-empty, but given: animation");
            return;
        }
        xq3 xq3Var3 = new xq3(new ThreadPoolExecutor(i3, i3, 0L, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new xq3.b(aVar4, TJAdUnitConstants.String.SPLIT_VIEW_ANIMATION, true)));
        q95 q95Var = new q95(new q95.a(applicationContext));
        ih2 ih2Var = new ih2();
        int i4 = q95Var.a;
        ij0 fy4Var = i4 > 0 ? new fy4(i4) : new jj0();
        ey4 ey4Var = new ey4(q95Var.c);
        iy4 iy4Var = new iy4(q95Var.b);
        a aVar5 = new a(applicationContext, new kz2(iy4Var, new g94(new ik0(applicationContext)), xq3Var2, xq3Var, new xq3(new ThreadPoolExecutor(0, Integer.MAX_VALUE, 10000L, TimeUnit.MILLISECONDS, new SynchronousQueue(), new xq3.b(new xq3.a(), "source-unlimited", false))), xq3Var3), iy4Var, fy4Var, ey4Var, new q37(), ih2Var, rq3Var, arrayMap, Collections.EMPTY_LIST, arrayList, generatedAppGlideModule, new yq3(aVar));
        applicationContext.registerComponentCallbacks(aVar5);
        i = aVar5;
    }

    public static p37 d(Context context) {
        return b(context).c(context);
    }

    public static p37 e(View view) {
        q37 q37VarB = b(view.getContext());
        q37VarB.getClass();
        if (!(Looper.myLooper() == Looper.getMainLooper())) {
            return q37VarB.c(view.getContext().getApplicationContext());
        }
        r96.c(view.getContext(), "Unable to obtain a request manager for a view without a Context");
        Activity activityA = q37.a(view.getContext());
        if (activityA != null && (activityA instanceof FragmentActivity)) {
            FragmentActivity fragmentActivity = (FragmentActivity) activityA;
            ArrayMap<View, Fragment> arrayMap = q37VarB.c;
            arrayMap.clear();
            q37.b(fragmentActivity.getSupportFragmentManager().getFragments(), arrayMap);
            View viewFindViewById = fragmentActivity.findViewById(R.id.content);
            Fragment fragment = null;
            while (!view.equals(viewFindViewById) && (fragment = arrayMap.get(view)) == null && (view.getParent() instanceof View)) {
                view = (View) view.getParent();
            }
            arrayMap.clear();
            return fragment != null ? q37VarB.d(fragment) : q37VarB.e(fragmentActivity);
        }
        return q37VarB.c(view.getContext().getApplicationContext());
    }

    @Override // android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
    }

    @Override // android.content.ComponentCallbacks
    public final void onLowMemory() {
        eb9.a();
        this.c.e(0L);
        this.b.b();
        this.e.b();
    }

    @Override // android.content.ComponentCallbacks2
    public final void onTrimMemory(int i2) {
        long j2;
        eb9.a();
        synchronized (this.h) {
            try {
                Iterator it = this.h.iterator();
                while (it.hasNext()) {
                    ((p37) it.next()).getClass();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        iy4 iy4Var = this.c;
        iy4Var.getClass();
        if (i2 >= 40) {
            iy4Var.e(0L);
        } else if (i2 >= 20 || i2 == 15) {
            synchronized (iy4Var) {
                j2 = iy4Var.b;
            }
            iy4Var.e(j2 / 2);
        }
        this.b.a(i2);
        this.e.a(i2);
    }
}
