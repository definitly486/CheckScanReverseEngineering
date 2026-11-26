package androidx.compose.foundation.text.contextmenu.internal;

import android.app.ActivityOptions;
import android.app.PendingIntent;
import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
final class TextClassificationHelper34 {
    public static final TextClassificationHelper34 INSTANCE = new TextClassificationHelper34();

    private TextClassificationHelper34() {
    }

    public final void sendIntentAllowBackgroundActivityStart(PendingIntent pendingIntent) {
        try {
            pendingIntent.send(ActivityOptions.makeBasic().setPendingIntentBackgroundActivityStartMode(1).toBundle());
        } catch (PendingIntent.CanceledException e) {
            Log.e(TextContextMenuTextClassificationHelper_androidKt.TAG, "error sending pendingIntent: " + pendingIntent + " error: " + e);
        }
    }
}
