package com.my.target.common;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.net.Uri;
import defpackage.oh5;
import defpackage.w4a;
import defpackage.y14;

/* JADX INFO: loaded from: classes4.dex */
public final class MyTargetContentProvider extends ContentProvider {
    public static final /* synthetic */ int c = 0;
    public boolean b = true;

    @Override // android.content.ContentProvider
    public final void attachInfo(Context context, ProviderInfo providerInfo) {
        if (providerInfo == null) {
            return;
        }
        if ("com.my.target.mytargetcontentprovider".equals(providerInfo.authority)) {
            y14.t("Incorrect provider authority in manifest. Most likely due to a missing applicationId variable in application's build.gradle.");
            this.b = false;
        }
        super.attachInfo(context, providerInfo);
    }

    @Override // android.content.ContentProvider
    public final int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public final String getType(Uri uri) {
        return null;
    }

    @Override // android.content.ContentProvider
    public final Uri insert(Uri uri, ContentValues contentValues) {
        return null;
    }

    @Override // android.content.ContentProvider
    public final boolean onCreate() {
        if (!this.b) {
            return false;
        }
        w4a.b.execute(new oh5(this, 0));
        return false;
    }

    @Override // android.content.ContentProvider
    public final Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return null;
    }

    @Override // android.content.ContentProvider
    public final int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }
}
