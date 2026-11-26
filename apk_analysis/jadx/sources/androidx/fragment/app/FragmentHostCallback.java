package androidx.fragment.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;
import defpackage.ah;
import defpackage.ul2;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes3.dex */
public abstract class FragmentHostCallback<H> extends FragmentContainer {
    private final Activity activity;
    private final Context context;
    private final FragmentManager fragmentManager;
    private final Handler handler;
    private final int windowAnimations;

    public FragmentHostCallback(Activity activity, Context context, Handler handler, int i) {
        context.getClass();
        handler.getClass();
        this.activity = activity;
        this.context = context;
        this.handler = handler;
        this.windowAnimations = i;
        this.fragmentManager = new FragmentManagerImpl();
    }

    public final Activity getActivity() {
        return this.activity;
    }

    public final Context getContext() {
        return this.context;
    }

    public final FragmentManager getFragmentManager() {
        return this.fragmentManager;
    }

    public final Handler getHandler() {
        return this.handler;
    }

    public void onDump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        str.getClass();
        printWriter.getClass();
    }

    @Override // androidx.fragment.app.FragmentContainer
    public View onFindViewById(int i) {
        return null;
    }

    public abstract H onGetHost();

    public LayoutInflater onGetLayoutInflater() {
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.context);
        layoutInflaterFrom.getClass();
        return layoutInflaterFrom;
    }

    public int onGetWindowAnimations() {
        return this.windowAnimations;
    }

    @Override // androidx.fragment.app.FragmentContainer
    public boolean onHasView() {
        return true;
    }

    public boolean onHasWindowAnimations() {
        return true;
    }

    @ul2
    public void onRequestPermissionsFromFragment(Fragment fragment, String[] strArr, int i) {
        fragment.getClass();
        strArr.getClass();
    }

    public boolean onShouldSaveFragmentState(Fragment fragment) {
        fragment.getClass();
        return true;
    }

    public boolean onShouldShowRequestPermissionRationale(String str) {
        str.getClass();
        return false;
    }

    public void onStartActivityFromFragment(Fragment fragment, Intent intent, int i, Bundle bundle) {
        fragment.getClass();
        intent.getClass();
        if (i == -1) {
            ContextCompat.startActivity(this.context, intent, bundle);
        } else {
            ah.f("Starting activity with a requestCode requires a FragmentActivity host");
        }
    }

    @ul2
    public void onStartIntentSenderFromFragment(Fragment fragment, IntentSender intentSender, int i, Intent intent, int i2, int i3, int i4, Bundle bundle) {
        fragment.getClass();
        intentSender.getClass();
        if (i != -1) {
            ah.f("Starting intent sender with a requestCode requires a FragmentActivity host");
            return;
        }
        Activity activity = this.activity;
        if (activity != null) {
            ActivityCompat.startIntentSenderForResult(activity, intentSender, i, intent, i2, i3, i4, bundle);
        } else {
            ah.f("Starting intent sender with a requestCode requires a FragmentActivity host");
        }
    }

    public void onSupportInvalidateOptionsMenu() {
    }

    public void onStartActivityFromFragment(Fragment fragment, Intent intent, int i) {
        fragment.getClass();
        intent.getClass();
        onStartActivityFromFragment(fragment, intent, i, null);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public FragmentHostCallback(Context context, Handler handler, int i) {
        this(context instanceof Activity ? (Activity) context : null, context, handler, i);
        context.getClass();
        handler.getClass();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public FragmentHostCallback(FragmentActivity fragmentActivity) {
        this(fragmentActivity, fragmentActivity, new Handler(), 0);
        fragmentActivity.getClass();
    }
}
