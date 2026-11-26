package defpackage;

import android.app.Dialog;
import android.view.View;
import android.view.Window;
import androidx.core.view.ViewCompat;
import com.google.android.material.bottomsheet.BottomSheetDialog;
import com.warefly.checkscan.profile.presentation.main.dialogs.enter.view.ProfilePromocodeEnterBottomSheet;

/* JADX INFO: loaded from: classes5.dex */
public final class an2 {
    public static final void a(ProfilePromocodeEnterBottomSheet profilePromocodeEnterBottomSheet, ProfilePromocodeEnterBottomSheet.b bVar) {
        Window window;
        View decorView;
        Dialog dialog = profilePromocodeEnterBottomSheet.getDialog();
        BottomSheetDialog bottomSheetDialog = dialog instanceof BottomSheetDialog ? (BottomSheetDialog) dialog : null;
        if (bottomSheetDialog == null || (window = bottomSheetDialog.getWindow()) == null || (decorView = window.getDecorView()) == null) {
            return;
        }
        ViewCompat.setOnApplyWindowInsetsListener(decorView, new ym2(bVar));
        ViewCompat.requestApplyInsets(decorView);
    }
}
