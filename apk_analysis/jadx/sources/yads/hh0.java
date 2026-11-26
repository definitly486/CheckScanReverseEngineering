package yads;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.widget.Toast;
import androidx.webkit.internal.AssetHelper;
import com.yandex.mobile.ads.R$string;
import com.yandex.mobile.ads.features.debugpanel.ui.IntegrationInspectorActivity;
import defpackage.ex9;
import defpackage.fx9;
import defpackage.j59;
import defpackage.ll3;
import yads.hh0;

/* JADX INFO: loaded from: classes6.dex */
public final class hh0 {
    public final IntegrationInspectorActivity a;

    public hh0(IntegrationInspectorActivity integrationInspectorActivity) {
        this.a = integrationInspectorActivity;
    }

    public static final void b(DialogInterface dialogInterface, int i) {
    }

    public final void a(gh0 gh0Var) {
        if (gh0Var instanceof dh0) {
            Toast.makeText(this.a, ((dh0) gh0Var).a, 0).show();
            return;
        }
        if (gh0Var instanceof fh0) {
            a(((fh0) gh0Var).a);
            return;
        }
        if (gh0Var instanceof eh0) {
            Uri uri = ((eh0) gh0Var).a;
            Intent intent = new Intent();
            intent.setAction("android.intent.action.SEND");
            intent.putExtra("android.intent.extra.STREAM", uri);
            intent.setType(AssetHelper.DEFAULT_MIME_TYPE);
            this.a.startActivity(intent);
            return;
        }
        if (gh0Var instanceof ch0) {
            a(this.a.getString(R$string.debug_panel_logging_is_disabled), this.a.getString(R$string.debug_panel_do_you_want_to_enable_logging), new defpackage.fz0(this, 4));
        } else if (gh0Var instanceof bh0) {
            this.a.finishAfterTransition();
        }
    }

    public static final void a(DialogInterface dialogInterface, int i) {
    }

    public static final j59 a(hh0 hh0Var) {
        synchronized (u94.a) {
            u94.b = true;
        }
        Toast.makeText(hh0Var.a, hh0Var.a.getString(R$string.debug_panel_logging_is_enabled), 0).show();
        return j59.a;
    }

    public final void a(String str) {
        new AlertDialog.Builder(this.a).setMessage(str).setPositiveButton(this.a.getString(R$string.debug_panel_ok), new fx9()).show();
    }

    public final void a(String str, String str2, final ll3 ll3Var) {
        new AlertDialog.Builder(this.a).setTitle(str).setMessage(str2).setPositiveButton(this.a.getString(R$string.debug_panel_yes), new DialogInterface.OnClickListener() { // from class: dx9
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                hh0.a(ll3Var, dialogInterface, i);
            }
        }).setNegativeButton(this.a.getString(R$string.debug_panel_no), new ex9()).show();
    }

    public static final void a(ll3 ll3Var, DialogInterface dialogInterface, int i) {
        if (ll3Var != null) {
            ll3Var.invoke();
        }
    }
}
