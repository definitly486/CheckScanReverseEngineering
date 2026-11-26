package defpackage;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.DialogInterface;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.IntentSenderRequest;
import com.google.android.gms.common.GoogleApiAvailability;

/* JADX INFO: loaded from: classes4.dex */
public final class nia implements DialogInterface.OnClickListener {
    public final /* synthetic */ Activity b;
    public final /* synthetic */ int c;
    public final /* synthetic */ ActivityResultLauncher d;
    public final /* synthetic */ GoogleApiAvailability e;

    public nia(GoogleApiAvailability googleApiAvailability, Activity activity, int i, ActivityResultLauncher activityResultLauncher) {
        this.b = activity;
        this.c = i;
        this.d = activityResultLauncher;
        this.e = googleApiAvailability;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
        PendingIntent errorResolutionPendingIntent = this.e.getErrorResolutionPendingIntent(this.b, this.c, 0);
        if (errorResolutionPendingIntent == null) {
            return;
        }
        this.d.launch(new IntentSenderRequest.Builder(errorResolutionPendingIntent.getIntentSender()).build());
    }
}
