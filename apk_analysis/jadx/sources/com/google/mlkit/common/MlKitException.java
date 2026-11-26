package com.google.mlkit.common;

import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes4.dex */
public class MlKitException extends Exception {
    public final int b;

    public MlKitException(String str, Exception exc) {
        super(Preconditions.checkNotEmpty(str, "Provided message must not be empty."), exc);
        this.b = 13;
    }

    public MlKitException(String str, int i) {
        super(Preconditions.checkNotEmpty(str, "Provided message must not be empty."));
        this.b = i;
    }
}
