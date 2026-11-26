package com.google.android.gms.common.server.response;

import java.io.BufferedReader;

/* JADX INFO: loaded from: classes4.dex */
public final class c implements i {
    @Override // com.google.android.gms.common.server.response.i
    public final Object a(FastParser fastParser, BufferedReader bufferedReader) {
        char[] cArr = fastParser.c;
        int iL = fastParser.l(bufferedReader, cArr);
        return Float.valueOf(iL == 0 ? 0.0f : Float.parseFloat(new String(cArr, 0, iL)));
    }
}
