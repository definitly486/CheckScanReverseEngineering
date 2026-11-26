package defpackage;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import com.google.android.material.dialog.MaterialAlertDialogBuilder;
import com.warefly.checkscan.CheckScanApplication;
import com.warefly.checkscan.R;

/* JADX INFO: loaded from: classes5.dex */
public final class w79 implements t79, jg4 {
    public final cl4 b;
    public final cl4 c;

    public static final class a implements ll3<PackageManager> {
        public a() {
        }

        /* JADX WARN: Type inference failed for: r3v5, types: [android.content.pm.PackageManager, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r3v8, types: [android.content.pm.PackageManager, java.lang.Object] */
        @Override // defpackage.ll3
        public final PackageManager invoke() {
            jg4 jg4Var = w79.this;
            return jg4Var instanceof og4 ? m2.c(PackageManager.class, ((og4) jg4Var).getScope(), null, null) : jg4Var.b().c.d.e(x07.a(PackageManager.class), null, null);
        }
    }

    public static final class b implements ll3<s47> {
        public b() {
        }

        /* JADX WARN: Type inference failed for: r3v5, types: [java.lang.Object, s47] */
        /* JADX WARN: Type inference failed for: r3v8, types: [java.lang.Object, s47] */
        @Override // defpackage.ll3
        public final s47 invoke() {
            jg4 jg4Var = w79.this;
            return jg4Var instanceof og4 ? m2.c(s47.class, ((og4) jg4Var).getScope(), null, null) : jg4Var.b().c.d.e(x07.a(s47.class), null, null);
        }
    }

    public w79() {
        po4 po4Var = po4.SYNCHRONIZED;
        this.b = nm4.a(po4Var, new a());
        this.c = nm4.a(po4Var, new b());
    }

    public static void c(Context context, String str, String str2, String str3) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse(str));
            intent.setPackage(str3);
            context.startActivity(intent);
        } catch (Exception unused) {
            Intent intent2 = new Intent("android.intent.action.VIEW");
            intent2.setData(Uri.parse(str2));
            context.startActivity(intent2);
        }
    }

    @Override // defpackage.t79
    public final void a(final Context context) {
        Object aVar;
        try {
            int i = Build.VERSION.SDK_INT;
            cl4 cl4Var = this.b;
            if (i >= 30) {
                PackageManager packageManager = (PackageManager) cl4Var.getValue();
                Context context2 = CheckScanApplication.c;
                aVar = packageManager.getInstallSourceInfo(CheckScanApplication.a.a().getPackageName()).getInstallingPackageName();
            } else {
                PackageManager packageManager2 = (PackageManager) cl4Var.getValue();
                Context context3 = CheckScanApplication.c;
                aVar = packageManager2.getInstallerPackageName(CheckScanApplication.a.a().getPackageName());
            }
        } catch (Throwable th) {
            aVar = new k57.a(th);
        }
        if (aVar instanceof k57.a) {
            aVar = null;
        }
        String str = (String) aVar;
        if (aa4.e(str, "com.xiaomi.mipicks") || ta8.D("ruStore", "xiaomi", false)) {
            c(context, "market://details?id=com.warefly.checkscan", "https://global.app.mi.com/details?lo=RU&la=ru_RU&id=com.warefly.checkscan", "com.xiaomi.mipicks");
            return;
        }
        if (aa4.e(str, "com.android.vending")) {
            c(context, "market://details?id=com.warefly.checkscan", "https://play.google.com/store/apps/details?id=com.warefly.checkscan", "com.android.vending");
            return;
        }
        if (aa4.e(str, "ru.vk.store") || ta8.D("ruStore", "ruStore", false)) {
            c(context, "rustore://apps.rustore.ru/app/com.warefly.checkscan", "https://www.rustore.ru/catalog/app/com.warefly.checkscan", "ru.vk.store");
            return;
        }
        MaterialAlertDialogBuilder materialAlertDialogBuilder = new MaterialAlertDialogBuilder(context, R.style.UpdateAppAlertDialogStyle);
        cl4 cl4Var2 = this.c;
        materialAlertDialogBuilder.setTitle((CharSequence) ((s47) cl4Var2.getValue()).getString(R.string.update_error_title)).setMessage((CharSequence) ((s47) cl4Var2.getValue()).getString(R.string.update_error_description)).setPositiveButton((CharSequence) ((s47) cl4Var2.getValue()).getString(R.string.update_error_positive_button), new DialogInterface.OnClickListener() { // from class: u79
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                w79 w79Var = this.b;
                Context context4 = context;
                try {
                    Intent intent = new Intent("android.intent.action.VIEW");
                    intent.setData(Uri.parse(((s47) w79Var.c.getValue()).getString(R.string.update_error_website)));
                    context4.startActivity(intent);
                    j59 j59Var = j59.a;
                } catch (Throwable unused) {
                }
            }
        }).setNegativeButton((CharSequence) ((s47) cl4Var2.getValue()).getString(R.string.update_error_neutral_button), (DialogInterface.OnClickListener) new v79()).show();
    }
}
