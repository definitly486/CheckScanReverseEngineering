package com.google.android.gms.dynamic;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.internal.zaf;
import com.google.android.gms.dynamic.LifecycleDelegate;
import defpackage.ala;
import defpackage.cla;
import defpackage.gka;
import defpackage.gla;
import defpackage.nja;
import defpackage.qia;
import defpackage.tka;
import defpackage.wka;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes4.dex */
public abstract class DeferredLifecycleHelper<T extends LifecycleDelegate> {
    public LifecycleDelegate a;
    public Bundle b;
    public LinkedList c;

    public DeferredLifecycleHelper() {
        new qia(this);
    }

    public static void showGooglePlayUnavailableMessage(FrameLayout frameLayout) {
        GoogleApiAvailability googleApiAvailability = GoogleApiAvailability.getInstance();
        Context context = frameLayout.getContext();
        int iIsGooglePlayServicesAvailable = googleApiAvailability.isGooglePlayServicesAvailable(context);
        String strZac = zaf.zac(context, iIsGooglePlayServicesAvailable);
        String strZae = zaf.zae(context, iIsGooglePlayServicesAvailable);
        LinearLayout linearLayout = new LinearLayout(frameLayout.getContext());
        linearLayout.setOrientation(1);
        linearLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        frameLayout.addView(linearLayout);
        TextView textView = new TextView(frameLayout.getContext());
        textView.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        textView.setText(strZac);
        linearLayout.addView(textView);
        Intent errorResolutionIntent = googleApiAvailability.getErrorResolutionIntent(context, iIsGooglePlayServicesAvailable, null);
        if (errorResolutionIntent != null) {
            Button button = new Button(context);
            button.setId(R.id.button1);
            button.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
            button.setText(strZae);
            linearLayout.addView(button);
            button.setOnClickListener(new wka(context, errorResolutionIntent));
        }
    }

    public abstract void a();

    public final void b(int i) {
        while (!this.c.isEmpty() && ((gla) this.c.getLast()).zaa() >= i) {
            this.c.removeLast();
        }
    }

    public final void c(Bundle bundle, gla glaVar) {
        if (this.a != null) {
            glaVar.zab();
            return;
        }
        LinkedList linkedList = this.c;
        if (linkedList == null) {
            linkedList = new LinkedList();
            this.c = linkedList;
        }
        linkedList.add(glaVar);
        if (bundle != null) {
            Bundle bundle2 = this.b;
            if (bundle2 == null) {
                this.b = (Bundle) bundle.clone();
            } else {
                bundle2.putAll(bundle);
            }
        }
        a();
    }

    public T getDelegate() {
        return (T) this.a;
    }

    public void onCreate(Bundle bundle) {
        c(bundle, new gka(this, bundle));
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        FrameLayout frameLayout = new FrameLayout(layoutInflater.getContext());
        c(bundle, new tka(this, frameLayout, layoutInflater, viewGroup, bundle));
        if (this.a == null) {
            showGooglePlayUnavailableMessage(frameLayout);
        }
        return frameLayout;
    }

    public void onDestroy() {
        LifecycleDelegate lifecycleDelegate = this.a;
        if (lifecycleDelegate != null) {
            lifecycleDelegate.onDestroy();
        } else {
            b(1);
        }
    }

    public void onDestroyView() {
        LifecycleDelegate lifecycleDelegate = this.a;
        if (lifecycleDelegate != null) {
            lifecycleDelegate.onDestroyView();
        } else {
            b(2);
        }
    }

    public void onInflate(Activity activity, Bundle bundle, Bundle bundle2) {
        c(bundle2, new nja(this, activity, bundle, bundle2));
    }

    public void onLowMemory() {
        LifecycleDelegate lifecycleDelegate = this.a;
        if (lifecycleDelegate != null) {
            lifecycleDelegate.onLowMemory();
        }
    }

    public void onPause() {
        LifecycleDelegate lifecycleDelegate = this.a;
        if (lifecycleDelegate != null) {
            lifecycleDelegate.onPause();
        } else {
            b(5);
        }
    }

    public void onResume() {
        c(null, new cla(this));
    }

    public void onSaveInstanceState(Bundle bundle) {
        LifecycleDelegate lifecycleDelegate = this.a;
        if (lifecycleDelegate != null) {
            lifecycleDelegate.onSaveInstanceState(bundle);
            return;
        }
        Bundle bundle2 = this.b;
        if (bundle2 != null) {
            bundle.putAll(bundle2);
        }
    }

    public void onStart() {
        c(null, new ala(this));
    }

    public void onStop() {
        LifecycleDelegate lifecycleDelegate = this.a;
        if (lifecycleDelegate != null) {
            lifecycleDelegate.onStop();
        } else {
            b(4);
        }
    }
}
