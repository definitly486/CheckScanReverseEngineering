package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreapi.internal.system.PermissionExtractor;
import io.appmetrica.analytics.coreutils.internal.AndroidUtils;
import io.appmetrica.analytics.coreutils.internal.cache.CachedDataProvider;
import io.appmetrica.analytics.coreutils.internal.system.SystemServiceUtils;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class Gl implements Dn {
    public static final long d = 20000;
    public final Context a;
    public final PermissionExtractor b;
    public final CachedDataProvider.CachedData c;

    public Gl(Context context) {
        long j = d;
        this.c = new CachedDataProvider.CachedData(j, j, "sim-info");
        this.a = context;
        this.b = Fa.k().j();
    }

    public final Bl b() {
        return new Bl((Integer) SystemServiceUtils.accessSystemServiceByNameSafely(this.a, "phone", "getting SimMcc", "TelephonyManager", new Cl()), (Integer) SystemServiceUtils.accessSystemServiceByNameSafely(this.a, "phone", "getting SimMnc", "TelephonyManager", new Dl()), ((Boolean) SystemServiceUtils.accessSystemServiceByNameSafelyOrDefault(this.a, "phone", "getting NetworkRoaming", "TelephonyManager", Boolean.FALSE, new Fl(this))).booleanValue(), (String) SystemServiceUtils.accessSystemServiceByNameSafely(this.a, "phone", "getting SimOperatorName", "TelephonyManager", new El()));
    }

    /* JADX WARN: Code duplicated, block: B:14:0x002f A[Catch: all -> 0x001a, TryCatch #0 {all -> 0x001a, blocks: (B:3:0x0001, B:5:0x000b, B:7:0x0011, B:12:0x001c, B:14:0x002f, B:16:0x0037, B:18:0x0043, B:19:0x004c, B:21:0x0052, B:22:0x005a, B:23:0x0061), top: B:28:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:16:0x0037 A[Catch: all -> 0x001a, TryCatch #0 {all -> 0x001a, blocks: (B:3:0x0001, B:5:0x000b, B:7:0x0011, B:12:0x001c, B:14:0x002f, B:16:0x0037, B:18:0x0043, B:19:0x004c, B:21:0x0052, B:22:0x005a, B:23:0x0061), top: B:28:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:18:0x0043 A[Catch: all -> 0x001a, TryCatch #0 {all -> 0x001a, blocks: (B:3:0x0001, B:5:0x000b, B:7:0x0011, B:12:0x001c, B:14:0x002f, B:16:0x0037, B:18:0x0043, B:19:0x004c, B:21:0x0052, B:22:0x005a, B:23:0x0061), top: B:28:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:21:0x0052 A[Catch: all -> 0x001a, TryCatch #0 {all -> 0x001a, blocks: (B:3:0x0001, B:5:0x000b, B:7:0x0011, B:12:0x001c, B:14:0x002f, B:16:0x0037, B:18:0x0043, B:19:0x004c, B:21:0x0052, B:22:0x005a, B:23:0x0061), top: B:28:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:22:0x005a A[Catch: all -> 0x001a, TryCatch #0 {all -> 0x001a, blocks: (B:3:0x0001, B:5:0x000b, B:7:0x0011, B:12:0x001c, B:14:0x002f, B:16:0x0037, B:18:0x0043, B:19:0x004c, B:21:0x0052, B:22:0x005a, B:23:0x0061), top: B:28:0x0001 }] */
    @Override // io.appmetrica.analytics.impl.Dn
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public final synchronized List<Bl> a() {
        ArrayList arrayList;
        List<Bl> list;
        try {
            List<Bl> list2 = (List) this.c.getData();
            if (list2 != null) {
                boolean zIsEmpty = list2.isEmpty();
                list = list2;
                if (zIsEmpty) {
                    list = list2;
                    if (this.c.shouldUpdateData()) {
                        arrayList = new ArrayList();
                        if (Fa.I.u.a().n.d) {
                            if (AndroidUtils.isApiAchieved(23)) {
                                if (this.b.hasPermission(this.a, "android.permission.READ_PHONE_STATE")) {
                                    arrayList.addAll(Hl.a(this.a));
                                }
                                if (arrayList.size() == 0) {
                                    arrayList.add(b());
                                }
                            } else {
                                arrayList.add(b());
                            }
                        }
                        this.c.setData(arrayList);
                        list = arrayList;
                    }
                }
            } else {
                arrayList = new ArrayList();
                if (Fa.I.u.a().n.d) {
                    if (AndroidUtils.isApiAchieved(23)) {
                        if (this.b.hasPermission(this.a, "android.permission.READ_PHONE_STATE")) {
                            arrayList.addAll(Hl.a(this.a));
                        }
                        if (arrayList.size() == 0) {
                            arrayList.add(b());
                        }
                    } else {
                        arrayList.add(b());
                    }
                }
                this.c.setData(arrayList);
                list = arrayList;
            }
        } catch (Throwable th) {
            throw th;
        }
        return list;
    }
}
