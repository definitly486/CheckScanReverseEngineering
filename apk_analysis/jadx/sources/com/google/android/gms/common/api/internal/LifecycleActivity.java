package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.content.ContextWrapper;
import androidx.fragment.app.FragmentActivity;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public class LifecycleActivity {
    public final Activity a;

    public LifecycleActivity(Activity activity) {
        Preconditions.checkNotNull(activity, "Activity must not be null");
        this.a = activity;
    }

    public final boolean zza() {
        return this.a instanceof FragmentActivity;
    }

    public final boolean zzb() {
        return Objects.nonNull(this.a);
    }

    public final Activity zzc() {
        return this.a;
    }

    public final FragmentActivity zzd() {
        return (FragmentActivity) this.a;
    }

    @Deprecated
    public LifecycleActivity(ContextWrapper contextWrapper) {
        throw new UnsupportedOperationException();
    }
}
