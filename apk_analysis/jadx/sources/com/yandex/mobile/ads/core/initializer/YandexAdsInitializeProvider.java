package com.yandex.mobile.ads.core.initializer;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import defpackage.av0;
import defpackage.jh2;
import yads.do6;
import yads.rh;
import yads.sh;

/* JADX INFO: loaded from: classes5.dex */
public final class YandexAdsInitializeProvider extends ContentProvider {
    private final sh a;

    public /* synthetic */ YandexAdsInitializeProvider(sh shVar, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? new sh() : shVar);
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
        Context context = getContext();
        if (context == null) {
            return true;
        }
        av0.c(this.a.a, null, null, new rh(context, new do6(context), null), 3);
        return true;
    }

    @Override // android.content.ContentProvider
    public final Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return null;
    }

    @Override // android.content.ContentProvider
    public final int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        return 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public YandexAdsInitializeProvider() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public YandexAdsInitializeProvider(sh shVar) {
        this.a = shVar;
    }
}
