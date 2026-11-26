package androidx.media3.common.audio;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Looper;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.HandlerWrapper;
import defpackage.rt;

/* JADX INFO: loaded from: classes3.dex */
public final class AudioBecomingNoisyManager {
    private final HandlerWrapper backgroundHandler;
    private final Context context;
    private boolean isEnabled;
    private final AudioBecomingNoisyReceiver receiver;

    public final class AudioBecomingNoisyReceiver extends BroadcastReceiver {
        private final HandlerWrapper eventHandler;
        private final Listener listener;

        private AudioBecomingNoisyReceiver(HandlerWrapper handlerWrapper, Listener listener) {
            this.eventHandler = handlerWrapper;
            this.listener = listener;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void callListenerIfEnabled() {
            if (AudioBecomingNoisyManager.this.isEnabled) {
                this.listener.onAudioBecomingNoisy();
            }
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("android.media.AUDIO_BECOMING_NOISY".equals(intent.getAction())) {
                this.eventHandler.post(new Runnable() { // from class: androidx.media3.common.audio.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.b.callListenerIfEnabled();
                    }
                });
            }
        }
    }

    public interface Listener {
        void onAudioBecomingNoisy();
    }

    public AudioBecomingNoisyManager(Context context, Looper looper, Looper looper2, Listener listener, Clock clock) {
        this.context = context.getApplicationContext();
        this.backgroundHandler = clock.createHandler(looper, null);
        this.receiver = new AudioBecomingNoisyReceiver(clock.createHandler(looper2, null), listener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setEnabled$0() {
        this.context.registerReceiver(this.receiver, new IntentFilter("android.media.AUDIO_BECOMING_NOISY"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$setEnabled$1() {
        this.context.unregisterReceiver(this.receiver);
    }

    public void setEnabled(boolean z) {
        if (z == this.isEnabled) {
            return;
        }
        HandlerWrapper handlerWrapper = this.backgroundHandler;
        if (z) {
            handlerWrapper.post(new Runnable() { // from class: qt
                @Override // java.lang.Runnable
                public final void run() {
                    this.b.lambda$setEnabled$0();
                }
            });
            this.isEnabled = true;
        } else {
            handlerWrapper.post(new rt(this, 0));
            this.isEnabled = false;
        }
    }
}
