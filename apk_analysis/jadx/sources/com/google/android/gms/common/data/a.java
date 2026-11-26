package com.google.android.gms.common.data;

import android.content.ContentValues;
import java.util.HashMap;

/* JADX INFO: loaded from: classes4.dex */
public final class a extends DataHolder.Builder {
    @Override // com.google.android.gms.common.data.DataHolder.Builder
    public final DataHolder.Builder withRow(ContentValues contentValues) {
        throw new UnsupportedOperationException("Cannot add data to empty builder");
    }

    @Override // com.google.android.gms.common.data.DataHolder.Builder
    public final DataHolder.Builder zaa(HashMap map) {
        throw new UnsupportedOperationException("Cannot add data to empty builder");
    }
}
