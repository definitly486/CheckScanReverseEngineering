package defpackage;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.View;
import androidx.collection.ArrayMap;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public final class q37 implements Handler.Callback {
    public static final a f = new a();
    public volatile p37 b;
    public final uk3 d;
    public final ArrayMap<View, Fragment> c = new ArrayMap<>();
    public final wp4 e = new wp4(f);

    public class a implements b {
    }

    public interface b {
    }

    public q37() {
        this.d = (su3.f && su3.e) ? new bc3() : new yp2();
    }

    public static Activity a(Context context) {
        if (context instanceof Activity) {
            return (Activity) context;
        }
        if (context instanceof ContextWrapper) {
            return a(((ContextWrapper) context).getBaseContext());
        }
        return null;
    }

    public static void b(List list, ArrayMap arrayMap) {
        if (list == null) {
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Fragment fragment = (Fragment) it.next();
            if (fragment != null && fragment.getView() != null) {
                arrayMap.put(fragment.getView(), fragment);
                b(fragment.getChildFragmentManager().getFragments(), arrayMap);
            }
        }
    }

    public final p37 c(Context context) {
        if (context == null) {
            fg.c("You cannot start a load on a null Context");
            return null;
        }
        if (Looper.myLooper() == Looper.getMainLooper() && !(context instanceof Application)) {
            if (context instanceof FragmentActivity) {
                return e((FragmentActivity) context);
            }
            if (context instanceof ContextWrapper) {
                ContextWrapper contextWrapper = (ContextWrapper) context;
                if (contextWrapper.getBaseContext().getApplicationContext() != null) {
                    return c(contextWrapper.getBaseContext());
                }
            }
        }
        if (this.b == null) {
            synchronized (this) {
                try {
                    if (this.b == null) {
                        this.b = new p37(com.bumptech.glide.a.a(context.getApplicationContext()), new oq(0), new u96(2), context.getApplicationContext());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.b;
    }

    public final p37 d(Fragment fragment) {
        r96.c(fragment.getContext(), "You cannot start a load on a fragment before it is attached or after it is destroyed");
        if (!(Looper.myLooper() == Looper.getMainLooper())) {
            return c(fragment.getContext().getApplicationContext());
        }
        if (fragment.getActivity() != null) {
            this.d.a(fragment.getActivity());
        }
        FragmentManager childFragmentManager = fragment.getChildFragmentManager();
        Context context = fragment.getContext();
        return this.e.a(context, com.bumptech.glide.a.a(context.getApplicationContext()), fragment.getLifecycle(), childFragmentManager, fragment.isVisible());
    }

    public final p37 e(FragmentActivity fragmentActivity) {
        if (!(Looper.myLooper() == Looper.getMainLooper())) {
            return c(fragmentActivity.getApplicationContext());
        }
        if (fragmentActivity.isDestroyed()) {
            fg.c("You cannot start a load for a destroyed activity");
            return null;
        }
        this.d.a(fragmentActivity);
        Activity activityA = a(fragmentActivity);
        return this.e.a(fragmentActivity, com.bumptech.glide.a.a(fragmentActivity.getApplicationContext()), fragmentActivity.getLifecycle(), fragmentActivity.getSupportFragmentManager(), activityA == null || !activityA.isFinishing());
    }

    @Override // android.os.Handler.Callback
    @Deprecated
    public final boolean handleMessage(Message message) {
        return false;
    }
}
