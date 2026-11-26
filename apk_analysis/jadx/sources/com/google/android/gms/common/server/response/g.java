package com.google.android.gms.common.server.response;

import java.io.BufferedReader;
import java.math.BigInteger;

/* JADX INFO: loaded from: classes4.dex */
public final class g implements i {
    @Override // com.google.android.gms.common.server.response.i
    public final Object a(FastParser fastParser, BufferedReader bufferedReader) {
        char[] cArr = fastParser.c;
        int iL = fastParser.l(bufferedReader, cArr);
        if (iL == 0) {
            return null;
        }
        return new BigInteger(new String(cArr, 0, iL));
    }
}
