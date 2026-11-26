package org.conscrypt.metrics;

/* JADX INFO: loaded from: classes5.dex */
public enum Source {
    SOURCE_UNKNOWN(0),
    SOURCE_MAINLINE(1),
    SOURCE_GMS(2),
    SOURCE_UNBUNDLED(3);

    final int id;

    Source(int i) {
        this.id = i;
    }

    public int getId() {
        return this.id;
    }
}
