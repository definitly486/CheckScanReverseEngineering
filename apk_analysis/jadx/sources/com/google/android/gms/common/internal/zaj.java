package com.google.android.gms.common.internal;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Build;
import android.util.Log;
import androidx.fragment.app.Fragment;
import com.google.android.gms.common.api.internal.LifecycleFragment;
import defpackage.ela;
import defpackage.hla;
import defpackage.jla;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zaj implements DialogInterface.OnClickListener {
    public static zaj zab(Activity activity, Intent intent, int i) {
        return new ela(activity, intent, i);
    }

    public static zaj zac(Fragment fragment, Intent intent, int i) {
        return new hla(fragment, intent, i);
    }

    public static zaj zad(LifecycleFragment lifecycleFragment, Intent intent, int i) {
        return new jla(intent, lifecycleFragment);
    }

    public abstract void a();

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        try {
            try {
                a();
            } catch (ActivityNotFoundException e) {
                Log.e("DialogRedirect", true == Build.FINGERPRINT.contains("generic") ? "Failed to start resolution intent. This may occur when resolving Google Play services connection issues on emulators with Google APIs but not Google Play Store." : "Failed to start resolution intent.", e);
            }
        } finally {
            dialogInterface.dismiss();
        }
    }
}
