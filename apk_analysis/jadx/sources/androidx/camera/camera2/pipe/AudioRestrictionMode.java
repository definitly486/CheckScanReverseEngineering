package androidx.camera.camera2.pipe;

import defpackage.jh2;
import defpackage.qz0;

/* JADX INFO: loaded from: classes.dex */
public final class AudioRestrictionMode {
    private final int value;
    public static final Companion Companion = new Companion(null);
    private static final int AUDIO_RESTRICTION_NONE = m140constructorimpl(0);
    private static final int AUDIO_RESTRICTION_VIBRATION = m140constructorimpl(1);
    private static final int AUDIO_RESTRICTION_VIBRATION_SOUND = m140constructorimpl(3);

    private /* synthetic */ AudioRestrictionMode(int i) {
        this.value = i;
    }

    /* JADX INFO: renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ AudioRestrictionMode m139boximpl(int i) {
        return new AudioRestrictionMode(i);
    }

    /* JADX INFO: renamed from: constructor-impl, reason: not valid java name */
    public static int m140constructorimpl(int i) {
        return i;
    }

    /* JADX INFO: renamed from: equals-impl, reason: not valid java name */
    public static boolean m141equalsimpl(int i, Object obj) {
        return (obj instanceof AudioRestrictionMode) && i == ((AudioRestrictionMode) obj).m145unboximpl();
    }

    /* JADX INFO: renamed from: equals-impl0, reason: not valid java name */
    public static final boolean m142equalsimpl0(int i, int i2) {
        return i == i2;
    }

    /* JADX INFO: renamed from: hashCode-impl, reason: not valid java name */
    public static int m143hashCodeimpl(int i) {
        return Integer.hashCode(i);
    }

    /* JADX INFO: renamed from: toString-impl, reason: not valid java name */
    public static String m144toStringimpl(int i) {
        return qz0.d("AudioRestrictionMode(value=", i, ')');
    }

    public boolean equals(Object obj) {
        return m141equalsimpl(this.value, obj);
    }

    public final int getValue() {
        return this.value;
    }

    public int hashCode() {
        return m143hashCodeimpl(this.value);
    }

    public String toString() {
        return m144toStringimpl(this.value);
    }

    /* JADX INFO: renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ int m145unboximpl() {
        return this.value;
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: renamed from: getAUDIO_RESTRICTION_NONE-_b5Q8KE, reason: not valid java name */
        public final int m146getAUDIO_RESTRICTION_NONE_b5Q8KE() {
            return AudioRestrictionMode.AUDIO_RESTRICTION_NONE;
        }

        /* JADX INFO: renamed from: getAUDIO_RESTRICTION_VIBRATION-_b5Q8KE, reason: not valid java name */
        public final int m147getAUDIO_RESTRICTION_VIBRATION_b5Q8KE() {
            return AudioRestrictionMode.AUDIO_RESTRICTION_VIBRATION;
        }

        /* JADX INFO: renamed from: getAUDIO_RESTRICTION_VIBRATION_SOUND-_b5Q8KE, reason: not valid java name */
        public final int m148getAUDIO_RESTRICTION_VIBRATION_SOUND_b5Q8KE() {
            return AudioRestrictionMode.AUDIO_RESTRICTION_VIBRATION_SOUND;
        }

        private Companion() {
        }
    }
}
