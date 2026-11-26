package com.google.android.gms.common.server.response;

import java.io.BufferedReader;
import java.math.BigDecimal;

/* JADX INFO: loaded from: classes4.dex */
public final class h implements i {
    @Override // com.google.android.gms.common.server.response.i
    public final Object a(FastParser fastParser, BufferedReader bufferedReader) {
        char[] cArr = fastParser.c;
        int iL = fastParser.l(bufferedReader, cArr);
        if (iL == 0) {
            return null;
        }
        return new BigDecimal(new String(cArr, 0, iL));
    }
}
