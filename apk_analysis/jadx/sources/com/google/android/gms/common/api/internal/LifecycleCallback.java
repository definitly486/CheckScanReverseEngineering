package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.content.ContextWrapper;
import android.content.Intent;
import android.os.Bundle;
import com.google.android.gms.common.internal.Preconditions;
import defpackage.fg;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* JADX INFO: loaded from: classes4.dex */
public class LifecycleCallback {
    public final LifecycleFragment b;

    public LifecycleCallback(LifecycleFragment lifecycleFragment) {
        this.b = lifecycleFragment;
    }

    public static LifecycleFragment a(LifecycleActivity lifecycleActivity) {
        if (lifecycleActivity.zza()) {
            return zzd.zza(lifecycleActivity.zzd());
        }
        if (lifecycleActivity.zzb()) {
            return zza.zza(lifecycleActivity.zzc());
        }
        fg.c("Can't get fragment for unexpected activity.");
        return null;
    }

    public static LifecycleFragment getFragment(Activity activity) {
        return a(new LifecycleActivity(activity));
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    public Activity getActivity() {
        Activity lifecycleActivity = this.b.getLifecycleActivity();
        Preconditions.checkNotNull(lifecycleActivity);
        return lifecycleActivity;
    }

    public void onActivityResult(int i, int i2, Intent intent) {
    }

    public void onCreate(Bundle bundle) {
    }

    public void onDestroy() {
    }

    public void onResume() {
    }

    public void onSaveInstanceState(Bundle bundle) {
    }

    public void onStart() {
    }

    public void onStop() {
    }

    public static LifecycleFragment getFragment(ContextWrapper contextWrapper) {
        throw new UnsupportedOperationException();
    }
}
