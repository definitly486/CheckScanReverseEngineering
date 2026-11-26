package com.google.android.datatransport.cct;

import defpackage.d00;
import defpackage.k62;
import defpackage.r29;
import defpackage.r81;

/* JADX INFO: loaded from: classes.dex */
public class CctBackendFactory implements d00 {
    @Override // defpackage.d00
    public r29 create(k62 k62Var) {
        return new r81(k62Var.a(), k62Var.d(), k62Var.c());
    }
}
