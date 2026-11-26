package defpackage;

import android.app.AlertDialog;
import android.content.DialogInterface;
import com.warefly.checkscan.R;
import com.warefly.checkscan.presentation.CiceroneActivity;

/* JADX INFO: loaded from: classes5.dex */
public final class qj1 extends gh4 implements nl3<Boolean, j59> {
    public final /* synthetic */ CiceroneActivity f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public qj1(CiceroneActivity ciceroneActivity) {
        super(1);
        this.f = ciceroneActivity;
    }

    @Override // defpackage.nl3
    public final j59 invoke(Boolean bool) {
        Boolean bool2 = bool;
        bool2.getClass();
        if (bool2.booleanValue()) {
            int i = CiceroneActivity.s;
            final CiceroneActivity ciceroneActivity = this.f;
            if (!ciceroneActivity.w()) {
                AlertDialog alertDialog = ciceroneActivity.p;
                if (alertDialog != null) {
                    alertDialog.show();
                } else {
                    AlertDialog alertDialogCreate = new AlertDialog.Builder(ciceroneActivity).setTitle(ciceroneActivity.getString(R.string.cold_start_first_open_title)).setMessage(ciceroneActivity.getString(R.string.cold_start_first_open_message)).setPositiveButton(ciceroneActivity.getString(R.string.cold_start_first_open_try_again), new DialogInterface.OnClickListener() { // from class: oj1
                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface, int i2) {
                            int i3 = CiceroneActivity.s;
                            CiceroneActivity ciceroneActivity2 = ciceroneActivity;
                            ciceroneActivity2.r = ciceroneActivity2.s();
                        }
                    }).setNeutralButton(ciceroneActivity.getString(R.string.cold_start_first_open_support), new DialogInterface.OnClickListener() { // from class: pj1
                        @Override // android.content.DialogInterface.OnClickListener
                        public final void onClick(DialogInterface dialogInterface, int i2) {
                            CiceroneActivity ciceroneActivity2 = ciceroneActivity;
                            i72.b(ciceroneActivity2, ciceroneActivity2.getString(R.string.support_url));
                        }
                    }).setCancelable(false).create();
                    ciceroneActivity.p = alertDialogCreate;
                    alertDialogCreate.show();
                }
            }
        }
        return j59.a;
    }
}
