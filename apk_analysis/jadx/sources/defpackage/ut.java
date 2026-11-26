package defpackage;

import android.media.AudioManager;
import androidx.media3.common.audio.AudioFocusManager;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class ut implements AudioManager.OnAudioFocusChangeListener {
    public final /* synthetic */ AudioFocusManager b;

    public /* synthetic */ ut(AudioFocusManager audioFocusManager) {
        this.b = audioFocusManager;
    }

    @Override // android.media.AudioManager.OnAudioFocusChangeListener
    public final void onAudioFocusChange(int i) {
        this.b.handlePlatformAudioFocusChange(i);
    }
}
