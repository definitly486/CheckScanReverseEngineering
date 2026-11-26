package androidx.media3.common.audio;

import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.os.Handler;
import android.os.Looper;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.util.Util;
import defpackage.ah;
import defpackage.o8;
import java.util.Objects;

/* JADX INFO: loaded from: classes3.dex */
public final class AudioFocusRequestCompat {
    private final AudioAttributes audioAttributes;
    private final Handler focusChangeHandler;
    private final int focusGain;
    private final Object frameworkAudioFocusRequest;
    private final AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener;
    private final boolean pauseOnDuck;

    public static class OnAudioFocusChangeListenerHandlerCompat implements AudioManager.OnAudioFocusChangeListener {
        private final Handler handler;
        private final AudioManager.OnAudioFocusChangeListener listener;

        public OnAudioFocusChangeListenerHandlerCompat(AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener, Handler handler) {
            this.listener = onAudioFocusChangeListener;
            this.handler = Util.createHandler(handler.getLooper(), null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onAudioFocusChange$0(int i) {
            this.listener.onAudioFocusChange(i);
        }

        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        public void onAudioFocusChange(final int i) {
            Util.postOrRun(this.handler, new Runnable() { // from class: androidx.media3.common.audio.b
                @Override // java.lang.Runnable
                public final void run() {
                    this.b.lambda$onAudioFocusChange$0(i);
                }
            });
        }
    }

    public AudioFocusRequestCompat(int i, AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener, Handler handler, AudioAttributes audioAttributes, boolean z) {
        this.focusGain = i;
        this.focusChangeHandler = handler;
        this.audioAttributes = audioAttributes;
        this.pauseOnDuck = z;
        this.onAudioFocusChangeListener = onAudioFocusChangeListener;
        this.frameworkAudioFocusRequest = new AudioFocusRequest.Builder(i).setAudioAttributes(audioAttributes.getPlatformAudioAttributes()).setWillPauseWhenDucked(z).setOnAudioFocusChangeListener(onAudioFocusChangeListener, handler).build();
    }

    public Builder buildUpon() {
        return new Builder();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AudioFocusRequestCompat)) {
            return false;
        }
        AudioFocusRequestCompat audioFocusRequestCompat = (AudioFocusRequestCompat) obj;
        return this.focusGain == audioFocusRequestCompat.focusGain && this.pauseOnDuck == audioFocusRequestCompat.pauseOnDuck && Objects.equals(this.onAudioFocusChangeListener, audioFocusRequestCompat.onAudioFocusChangeListener) && Objects.equals(this.focusChangeHandler, audioFocusRequestCompat.focusChangeHandler) && Objects.equals(this.audioAttributes, audioFocusRequestCompat.audioAttributes);
    }

    public AudioAttributes getAudioAttributes() {
        return this.audioAttributes;
    }

    public AudioFocusRequest getAudioFocusRequest() {
        Object obj = this.frameworkAudioFocusRequest;
        obj.getClass();
        return (AudioFocusRequest) obj;
    }

    public Handler getFocusChangeHandler() {
        return this.focusChangeHandler;
    }

    public int getFocusGain() {
        return this.focusGain;
    }

    public AudioManager.OnAudioFocusChangeListener getOnAudioFocusChangeListener() {
        return this.onAudioFocusChangeListener;
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.focusGain), this.onAudioFocusChangeListener, this.focusChangeHandler, this.audioAttributes, Boolean.valueOf(this.pauseOnDuck));
    }

    public boolean willPauseWhenDucked() {
        return this.pauseOnDuck;
    }

    public static final class Builder {
        private AudioAttributes audioAttributes;
        private Handler focusChangeHandler;
        private int focusGain;
        private AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener;
        private boolean pauseOnDuck;

        private Builder(AudioFocusRequestCompat audioFocusRequestCompat) {
            this.focusGain = audioFocusRequestCompat.getFocusGain();
            this.onAudioFocusChangeListener = audioFocusRequestCompat.getOnAudioFocusChangeListener();
            this.focusChangeHandler = audioFocusRequestCompat.getFocusChangeHandler();
            this.audioAttributes = audioFocusRequestCompat.getAudioAttributes();
            this.pauseOnDuck = audioFocusRequestCompat.willPauseWhenDucked();
        }

        private static boolean isValidFocusGain(int i) {
            return i == 1 || i == 2 || i == 3 || i == 4;
        }

        public AudioFocusRequestCompat build() {
            AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener = this.onAudioFocusChangeListener;
            if (onAudioFocusChangeListener == null) {
                ah.f("Can't build an AudioFocusRequestCompat instance without a listener");
                return null;
            }
            int i = this.focusGain;
            Handler handler = this.focusChangeHandler;
            handler.getClass();
            return new AudioFocusRequestCompat(i, onAudioFocusChangeListener, handler, this.audioAttributes, this.pauseOnDuck);
        }

        public Builder setAudioAttributes(AudioAttributes audioAttributes) {
            audioAttributes.getClass();
            this.audioAttributes = audioAttributes;
            return this;
        }

        public Builder setFocusGain(int i) {
            o8.e(isValidFocusGain(i));
            this.focusGain = i;
            return this;
        }

        public Builder setOnAudioFocusChangeListener(AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener) {
            return setOnAudioFocusChangeListener(onAudioFocusChangeListener, new Handler(Looper.getMainLooper()));
        }

        public Builder setWillPauseWhenDucked(boolean z) {
            this.pauseOnDuck = z;
            return this;
        }

        public Builder setOnAudioFocusChangeListener(AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener, Handler handler) {
            onAudioFocusChangeListener.getClass();
            handler.getClass();
            this.onAudioFocusChangeListener = onAudioFocusChangeListener;
            this.focusChangeHandler = handler;
            return this;
        }

        public Builder(int i) {
            this.audioAttributes = AudioAttributes.DEFAULT;
            this.focusGain = i;
        }
    }
}
