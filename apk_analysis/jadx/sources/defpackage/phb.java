package defpackage;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.location.ActivityTransition;
import java.util.Comparator;

/* JADX INFO: loaded from: classes4.dex */
public final class phb implements Comparator {
    public static final /* synthetic */ phb c = new phb(1);
    public final /* synthetic */ int b;

    public /* synthetic */ phb(int i) {
        this.b = i;
    }

    @Override // java.util.Comparator
    public final /* synthetic */ int compare(Object obj, Object obj2) {
        switch (this.b) {
            case 0:
                ActivityTransition activityTransition = (ActivityTransition) obj;
                ActivityTransition activityTransition2 = (ActivityTransition) obj2;
                Preconditions.checkNotNull(activityTransition);
                Preconditions.checkNotNull(activityTransition2);
                int activityType = activityTransition.getActivityType();
                int activityType2 = activityTransition2.getActivityType();
                if (activityType == activityType2) {
                    int transitionType = activityTransition.getTransitionType();
                    int transitionType2 = activityTransition2.getTransitionType();
                    if (transitionType == transitionType2) {
                        return 0;
                    }
                    if (transitionType < transitionType2) {
                        return -1;
                    }
                } else if (activityType < activityType2) {
                    return -1;
                }
                return 1;
            default:
                return Long.compare(((Long) obj).longValue(), ((Long) obj2).longValue());
        }
    }
}
