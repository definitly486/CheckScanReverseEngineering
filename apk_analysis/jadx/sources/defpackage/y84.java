package defpackage;

import android.content.ComponentName;
import androidx.core.content.IntentSanitizer;
import androidx.core.util.Predicate;

/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class y84 implements Predicate {
    @Override // androidx.core.util.Predicate
    public final boolean test(Object obj) {
        return IntentSanitizer.Builder.lambda$new$5((ComponentName) obj);
    }
}
