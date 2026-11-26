package defpackage;

import android.app.Activity;
import android.os.VibrationEffect;
import android.os.Vibrator;
import androidx.core.content.ContextCompat;

/* JADX INFO: loaded from: classes5.dex */
public final class r7 {
    public static final void a(Activity activity, long j) {
        Vibrator vibrator = (Vibrator) ContextCompat.getSystemService(activity, Vibrator.class);
        if (vibrator != null) {
            vibrator.vibrate(VibrationEffect.createOneShot(j, -1));
        }
    }
}
