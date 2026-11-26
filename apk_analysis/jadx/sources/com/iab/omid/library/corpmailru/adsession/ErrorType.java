package com.iab.omid.library.corpmailru.adsession;

import androidx.media3.common.MimeTypes;

/* JADX INFO: loaded from: classes4.dex */
public enum ErrorType {
    GENERIC("generic"),
    VIDEO(MimeTypes.BASE_TYPE_VIDEO);

    private final String errorType;

    ErrorType(String str) {
        this.errorType = str;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.errorType;
    }
}
