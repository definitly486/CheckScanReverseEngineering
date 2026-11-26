package defpackage;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Handler;
import android.view.View;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.content.ContextCompat;
import androidx.viewbinding.ViewBinding;
import com.androidadvance.topsnackbar.TSnackbar;
import com.google.android.material.snackbar.Snackbar;
import com.warefly.checkscan.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class oz1 {
    public static final int a(ViewBinding viewBinding, int i) {
        viewBinding.getClass();
        return ContextCompat.getColor(viewBinding.getRoot().getContext(), i);
    }

    public static final Drawable b(ViewBinding viewBinding, int i) {
        viewBinding.getClass();
        return AppCompatResources.getDrawable(viewBinding.getRoot().getContext(), i);
    }

    public static final void c(Context context, String str, ll3<j59> ll3Var) {
        Object aVar;
        context.getClass();
        str.getClass();
        ll3Var.getClass();
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(str));
        try {
            PackageManager packageManager = context.getPackageManager();
            packageManager.getClass();
            List<ResolveInfo> listQueryIntentActivities = packageManager.queryIntentActivities(intent, 0);
            listQueryIntentActivities.getClass();
            ArrayList arrayList = new ArrayList();
            for (Object obj : listQueryIntentActivities) {
                String str2 = ((ResolveInfo) obj).activityInfo.packageName;
                str2.getClass();
                if (ta8.D(str2, "com.idamobile.android.crediteuropa", false)) {
                    arrayList.add(obj);
                }
            }
            if (arrayList.isEmpty()) {
                context.startActivity(intent);
            } else {
                ArrayList arrayList2 = new ArrayList(kn1.q(arrayList, 10));
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ActivityInfo activityInfo = ((ResolveInfo) it.next()).activityInfo;
                    arrayList2.add(new ComponentName(activityInfo.packageName, activityInfo.name));
                }
                ComponentName[] componentNameArr = (ComponentName[]) arrayList2.toArray(new ComponentName[0]);
                Intent intentCreateChooser = Intent.createChooser(intent, null);
                intentCreateChooser.putExtra("android.intent.extra.EXCLUDE_COMPONENTS", componentNameArr);
                context.startActivity(intentCreateChooser);
            }
            aVar = j59.a;
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        if (k57.a(aVar) != null) {
            ll3Var.invoke();
        }
    }

    public static final void d(int i, View view) {
        if (view.isAttachedToWindow()) {
            Handler handler = TSnackbar.e;
            TSnackbar tSnackbarC = TSnackbar.c(view, view.getResources().getText(i), 0);
            tSnackbarC.b.setBackgroundColor(Color.parseColor("#a6caff"));
            tSnackbarC.f();
        }
    }

    public static final void e(View view, String str) {
        if (view.isAttachedToWindow()) {
            TSnackbar tSnackbarC = TSnackbar.c(view, str, 0);
            tSnackbarC.b.setBackgroundColor(Color.parseColor("#a6caff"));
            tSnackbarC.f();
        }
    }

    public static final void f(CoordinatorLayout coordinatorLayout, String str, String str2, final ll3 ll3Var) {
        if (coordinatorLayout.isAttachedToWindow()) {
            TSnackbar tSnackbarC = TSnackbar.c(coordinatorLayout, str, -2);
            TSnackbar.SnackbarLayout snackbarLayout = tSnackbarC.b;
            snackbarLayout.setBackgroundColor(ContextCompat.getColor(coordinatorLayout.getContext(), R.color.blueAlice));
            snackbarLayout.getActionView().setTextColor(ContextCompat.getColor(coordinatorLayout.getContext(), R.color.readilyBlue));
            tSnackbarC.e(str2, new View.OnClickListener() { // from class: lz1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ll3Var.invoke();
                }
            });
            tSnackbarC.f();
        }
    }

    public static final void g(int i, View view) {
        if (view.isAttachedToWindow()) {
            Snackbar snackbarMake = Snackbar.make(view, i, -1);
            snackbarMake.getView().setBackgroundColor(Color.parseColor("#a6caff"));
            snackbarMake.show();
        }
    }

    public static final void h(View view, String str) {
        str.getClass();
        if (view.isAttachedToWindow()) {
            Snackbar snackbarMake = Snackbar.make(view, str, -1);
            snackbarMake.getView().setBackgroundColor(Color.parseColor("#a6caff"));
            snackbarMake.show();
        }
    }

    public static final void i(int i, View view) {
        if (view.isAttachedToWindow()) {
            Handler handler = TSnackbar.e;
            TSnackbar tSnackbarC = TSnackbar.c(view, view.getResources().getText(i), -1);
            tSnackbarC.b.setBackgroundColor(Color.parseColor("#a6caff"));
            tSnackbarC.f();
        }
    }
}
