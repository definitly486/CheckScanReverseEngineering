package defpackage;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import androidx.appcompat.app.AlertDialog;
import com.warefly.checkscan.R;

/* JADX INFO: loaded from: classes5.dex */
public final class qx6 {
    public static void a(final Context context) {
        AlertDialog.Builder builder = new AlertDialog.Builder(context);
        builder.setTitle(context.getString(R.string.help_header));
        String string = context.getString(R.string.via_feedback_vk);
        string.getClass();
        String string2 = context.getString(R.string.via_feedback_tg);
        string2.getClass();
        String string3 = context.getString(R.string.via_feedback_mail);
        string3.getClass();
        CharSequence[] charSequenceArr = {string, string2, string3};
        final String str = "";
        builder.setItems(charSequenceArr, new DialogInterface.OnClickListener() { // from class: px6
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                Intent intent;
                Context context2 = context;
                if (i == 0) {
                    Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse(context2.getString(R.string.help_vk_link)));
                    if (intent2.resolveActivity(context2.getPackageManager()) != null) {
                        context2.startActivity(intent2);
                        return;
                    } else {
                        i72.b(context2, context2.getString(R.string.help_vk_link));
                        return;
                    }
                }
                if (i != 1) {
                    if (i != 2) {
                        return;
                    }
                    String strValueOf = String.valueOf(-1L);
                    String str2 = str;
                    Intent intent3 = new Intent("android.intent.action.VIEW", Uri.parse(context2.getString(R.string.yandex_cobrand_form_feedback_url, strValueOf, str2)));
                    if (intent3.resolveActivity(context2.getPackageManager()) != null) {
                        context2.startActivity(intent3);
                        return;
                    } else {
                        i72.b(context2, context2.getString(R.string.yandex_cobrand_form_feedback_url, String.valueOf(-1L), str2));
                        return;
                    }
                }
                try {
                    try {
                        context2.getPackageManager().getPackageInfo(context2.getString(R.string.telegram_package), 0);
                    } catch (Exception unused) {
                        context2.getPackageManager().getPackageInfo(context2.getString(R.string.telegram_x_package), 0);
                    }
                    intent = new Intent("android.intent.action.VIEW", Uri.parse(context2.getString(R.string.help_telegram_cobrand_bot_link, String.valueOf(-1L))));
                } catch (Exception unused2) {
                    String string4 = context2.getString(R.string.help_telegram_cobrand_bot_link, String.valueOf(-1L));
                    string4.getClass();
                    intent = new Intent("android.intent.action.VIEW", Uri.parse(string4));
                }
                if (intent.resolveActivity(context2.getPackageManager()) != null) {
                    context2.startActivity(intent);
                } else {
                    i72.b(context2, context2.getString(R.string.help_telegram_cobrand_bot_link, String.valueOf(-1L)));
                }
            }
        });
        builder.show();
    }
}
