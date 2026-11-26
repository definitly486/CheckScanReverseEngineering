package defpackage;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.view.View;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.warefly.checkscan.presentation.onboardingOneSlide.oneSlide.dialogs.BankClientVerificationDialog;
import java.util.LinkedHashMap;
import java.util.List;
import ru.rustore.sdk.core.exception.RuStoreNotInstalledException;
import ru.rustore.sdk.core.exception.RuStoreOutdatedException;

/* JADX INFO: loaded from: classes.dex */
public final class l90 extends gh4 implements nl3 {
    public final /* synthetic */ int f;
    public final /* synthetic */ Object g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ l90(Object obj, int i) {
        super(1);
        this.f = i;
        this.g = obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v4, types: [T, android.content.ServiceConnection, nh8] */
    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        ComponentName componentName;
        Object aVar;
        int i = this.f;
        Object obj2 = this.g;
        switch (i) {
            case 0:
                ((View) obj).getClass();
                ((BankClientVerificationDialog) obj2).dismiss();
                break;
            default:
                a08 a08Var = (a08) obj;
                a08Var.getClass();
                ru6 ru6Var = (ru6) obj2;
                Context context = ru6Var.a;
                Context context2 = ru6Var.a;
                try {
                    try {
                        context.getPackageManager().getPackageInfo("ru.vk.store.qa", 0);
                    } catch (PackageManager.NameNotFoundException unused) {
                        a08Var.b(new RuStoreNotInstalledException());
                    }
                } catch (PackageManager.NameNotFoundException unused2) {
                    context.getPackageManager().getPackageInfo("ru.vk.store", 0);
                }
                ow9 ow9Var = ru6Var.d;
                ow9Var.getClass();
                uz4 uz4Var = new uz4();
                uz4Var.put(RemoteConfigConstants.RequestFieldKey.SDK_VERSION, "10.0.0");
                uz4Var.put(RemoteConfigConstants.RequestFieldKey.APP_VERSION, String.valueOf(ow9Var.a()));
                ow9Var.b(uz4Var);
                j59 j59Var = j59.a;
                ow9Var.c("SDKInstallReferrerRefidRequest", uz4Var.b());
                Intent intent = new Intent("ru.vk.store.sdk.install.referrer.InstallReferrerProvider");
                List<ResolveInfo> listQueryIntentServices = context2.getPackageManager().queryIntentServices(intent, 0);
                listQueryIntentServices.getClass();
                List<ResolveInfo> list = listQueryIntentServices;
                int iB = m05.b(kn1.q(list, 10));
                if (iB < 16) {
                    iB = 16;
                }
                LinkedHashMap linkedHashMap = new LinkedHashMap(iB);
                for (ResolveInfo resolveInfo : list) {
                    linkedHashMap.put(resolveInfo.serviceInfo.packageName, resolveInfo);
                }
                ResolveInfo resolveInfo2 = (ResolveInfo) linkedHashMap.get("ru.vk.store.qa");
                if (resolveInfo2 == null) {
                    resolveInfo2 = (ResolveInfo) linkedHashMap.get("ru.vk.store");
                }
                if (resolveInfo2 != null) {
                    ServiceInfo serviceInfo = resolveInfo2.serviceInfo;
                    componentName = new ComponentName(serviceInfo.packageName, serviceInfo.name);
                } else {
                    componentName = null;
                }
                if (componentName == null) {
                    a08Var.b(new RuStoreOutdatedException());
                } else {
                    intent.setComponent(componentName);
                    r07 r07Var = new r07();
                    String packageName = context2.getPackageName();
                    packageName.getClass();
                    ?? nh8Var = new nh8(packageName, ru6Var.c, new i(r07Var, ru6Var, a08Var), new uz(r07Var, ru6Var, a08Var));
                    r07Var.b = nh8Var;
                    try {
                        aVar = Boolean.valueOf(context2.bindService(intent, (ServiceConnection) nh8Var, 1));
                    } catch (Throwable th) {
                        aVar = new k57.a(th);
                    }
                    Throwable thA = k57.a(aVar);
                    if (thA != null) {
                        ny1.a(context2, (ServiceConnection) r07Var.b);
                        a08Var.b(thA);
                    }
                }
                break;
        }
        return j59.a;
    }
}
