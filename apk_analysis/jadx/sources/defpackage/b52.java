package defpackage;

import androidx.fragment.app.strictmode.FragmentStrictMode;
import androidx.fragment.app.strictmode.Violation;
import com.google.firebase.crashlytics.internal.common.CrashlyticsCore;
import com.google.firebase.crashlytics.internal.settings.SettingsProvider;
import com.my.tracker.obfuscated.i0;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class b52 implements Runnable {
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ b52(int i, Object obj, Object obj2) {
        this.b = i;
        this.c = obj;
        this.d = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.b;
        Object obj = this.d;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                ((CrashlyticsCore) obj2).lambda$finishInitSynchronously$9((SettingsProvider) obj);
                break;
            case 1:
                FragmentStrictMode.handlePolicyViolation$lambda$1((String) obj2, (Violation) obj);
                break;
            default:
                ((i0) obj2).a((String) obj);
                break;
        }
    }
}
