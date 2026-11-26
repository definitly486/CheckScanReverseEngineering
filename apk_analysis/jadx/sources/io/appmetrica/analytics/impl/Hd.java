package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreapi.internal.identifiers.IdentifierStatus;
import io.appmetrica.analytics.coreutils.internal.io.FileUtils;
import io.appmetrica.analytics.internal.IdentifiersResult;

/* JADX INFO: loaded from: classes5.dex */
public final class Hd {
    public final Context a;
    public final Ya b;
    public final J9 c;
    public final Ke d;
    public final Bo e;
    public volatile IdentifiersResult f;

    public Hd(Context context, Ya ya, J9 j9, Ke ke, Bo bo) {
        this.a = context;
        this.b = ya;
        this.c = j9;
        this.d = ke;
        this.e = bo;
        try {
            j9.a();
            ke.a();
            j9.b();
        } catch (Throwable unused) {
            this.c.b();
        }
    }

    /* JADX WARN: Code duplicated, block: B:17:0x003d A[Catch: all -> 0x0079, TryCatch #1 {all -> 0x0079, blocks: (B:10:0x0019, B:12:0x0029, B:14:0x002f, B:17:0x003d, B:19:0x0056, B:20:0x0064, B:22:0x006f), top: B:34:0x0019 }] */
    /* JADX WARN: Code duplicated, block: B:19:0x0056 A[Catch: all -> 0x0079, TryCatch #1 {all -> 0x0079, blocks: (B:10:0x0019, B:12:0x0029, B:14:0x002f, B:17:0x003d, B:19:0x0056, B:20:0x0064, B:22:0x006f), top: B:34:0x0019 }] */
    /* JADX WARN: Code duplicated, block: B:22:0x006f A[Catch: all -> 0x0079, TRY_LEAVE, TryCatch #1 {all -> 0x0079, blocks: (B:10:0x0019, B:12:0x0029, B:14:0x002f, B:17:0x003d, B:19:0x0056, B:20:0x0064, B:22:0x006f), top: B:34:0x0019 }] */
    public final IdentifiersResult a() {
        String strA;
        IdentifiersResult identifiersResult = this.f;
        if (identifiersResult != null && identifiersResult.status == IdentifierStatus.OK) {
            Bo bo = this.e;
            String str = identifiersResult.id;
            bo.getClass();
            if (Bo.a(str)) {
                return identifiersResult;
            }
        }
        try {
            J9 j9 = this.c;
            j9.a.lock();
            j9.b.a();
            identifiersResult = this.f;
            if (identifiersResult == null || identifiersResult.status != IdentifierStatus.OK) {
                strA = Xa.a(FileUtils.getFileFromSdkStorage(this.d.a, "uuid.dat"));
                this.e.getClass();
                if (!Bo.a(strA)) {
                    strA = this.d.a(this.b.a(this.a));
                }
                this.e.getClass();
                if (Bo.a(strA)) {
                    IdentifiersResult identifiersResult2 = new IdentifiersResult(strA, IdentifierStatus.OK, null);
                    try {
                        this.f = identifiersResult2;
                    } catch (Throwable unused) {
                    }
                    identifiersResult = identifiersResult2;
                }
            } else {
                Bo bo2 = this.e;
                String str2 = identifiersResult.id;
                bo2.getClass();
                if (!Bo.a(str2)) {
                    strA = Xa.a(FileUtils.getFileFromSdkStorage(this.d.a, "uuid.dat"));
                    this.e.getClass();
                    if (!Bo.a(strA)) {
                        strA = this.d.a(this.b.a(this.a));
                    }
                    this.e.getClass();
                    if (Bo.a(strA)) {
                        IdentifiersResult identifiersResult3 = new IdentifiersResult(strA, IdentifierStatus.OK, null);
                        this.f = identifiersResult3;
                        identifiersResult = identifiersResult3;
                    }
                }
            }
        } catch (Throwable unused2) {
        }
        J9 j10 = this.c;
        j10.b.b();
        j10.a.unlock();
        return identifiersResult != null ? identifiersResult : new IdentifiersResult(null, IdentifierStatus.UNKNOWN, "Uuid must be obtained via async API AppMetrica#requestStartupParams(Context, StartupParamsCallback, List<String>)");
    }

    public Hd(Context context, Ya ya) {
        this(context, ya, Id.a(context), new Ke(context), new Bo());
    }
}
