package defpackage;

import com.google.firebase.inappmessaging.internal.InAppMessageStreamManager;
import java.util.Comparator;

/* JADX INFO: loaded from: classes4.dex */
public final /* synthetic */ class t34 implements Comparator {
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return InAppMessageStreamManager.compareByPriority((m21) obj, (m21) obj2);
    }
}
