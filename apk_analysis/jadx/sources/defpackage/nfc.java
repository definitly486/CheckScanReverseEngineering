package defpackage;

import android.app.Activity;
import com.google.android.gms.common.api.internal.LifecycleCallback;
import com.google.android.gms.common.api.internal.LifecycleFragment;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes4.dex */
public final class nfc extends LifecycleCallback {
    public final ArrayList c;

    public nfc(LifecycleFragment lifecycleFragment) {
        super(lifecycleFragment);
        this.c = new ArrayList();
        lifecycleFragment.addCallback("TaskOnStopCallback", this);
    }

    public static nfc b(Activity activity) {
        nfc nfcVar;
        LifecycleFragment fragment = LifecycleCallback.getFragment(activity);
        synchronized (fragment) {
            try {
                nfcVar = (nfc) fragment.getCallbackOrNull("TaskOnStopCallback", nfc.class);
                if (nfcVar == null) {
                    nfcVar = new nfc(fragment);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return nfcVar;
    }

    public final void c(ecc eccVar) {
        ArrayList arrayList = this.c;
        synchronized (arrayList) {
            arrayList.add(new WeakReference(eccVar));
        }
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public final void onStop() {
        ArrayList arrayList = this.c;
        synchronized (arrayList) {
            try {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ecc eccVar = (ecc) ((WeakReference) it.next()).get();
                    if (eccVar != null) {
                        eccVar.zzb();
                    }
                }
                arrayList.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
