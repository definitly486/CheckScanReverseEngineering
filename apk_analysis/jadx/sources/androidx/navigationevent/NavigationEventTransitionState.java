package androidx.navigationevent;

import defpackage.aa4;
import defpackage.jh2;
import defpackage.rg;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* JADX INFO: loaded from: classes3.dex */
public abstract class NavigationEventTransitionState {
    public static final Companion Companion = new Companion(null);
    public static final int TRANSITIONING_BACK = -1;
    public static final int TRANSITIONING_FORWARD = 1;
    public static final int TRANSITIONING_UNKNOWN = 0;

    @Target({ElementType.METHOD, ElementType.PARAMETER})
    @Retention(RetentionPolicy.SOURCE)
    public @interface Direction {
    }

    public static final class Idle extends NavigationEventTransitionState {
        public static final Idle INSTANCE = new Idle();

        private Idle() {
            super(null);
        }

        public String toString() {
            return "Idle()";
        }
    }

    public static final class InProgress extends NavigationEventTransitionState {
        private final int direction;
        private final NavigationEvent latestEvent;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public InProgress(NavigationEvent navigationEvent, int i) {
            super(null);
            navigationEvent.getClass();
            this.latestEvent = navigationEvent;
            this.direction = i;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || InProgress.class != obj.getClass()) {
                return false;
            }
            InProgress inProgress = (InProgress) obj;
            return this.direction == inProgress.direction && aa4.e(this.latestEvent, inProgress.latestEvent);
        }

        public final int getDirection() {
            return this.direction;
        }

        public final NavigationEvent getLatestEvent() {
            return this.latestEvent;
        }

        public int hashCode() {
            return this.latestEvent.hashCode() + (this.direction * 31);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("InProgress(latestEvent=");
            sb.append(this.latestEvent);
            sb.append(", direction=");
            return rg.h(sb, this.direction, ')');
        }
    }

    public /* synthetic */ NavigationEventTransitionState(jh2 jh2Var) {
        this();
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        private Companion() {
        }
    }

    private NavigationEventTransitionState() {
    }
}
