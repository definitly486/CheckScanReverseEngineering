package com.posthog.internal.replay;

import defpackage.jh2;

/* JADX INFO: loaded from: classes4.dex */
public final class RRMousePosition {
    private final int id;
    private final Long timeOffset;
    private final int x;
    private final int y;

    public RRMousePosition(int i, int i2, int i3, Long l) {
        this.x = i;
        this.y = i2;
        this.id = i3;
        this.timeOffset = l;
    }

    public final int getId() {
        return this.id;
    }

    public final Long getTimeOffset() {
        return this.timeOffset;
    }

    public final int getX() {
        return this.x;
    }

    public final int getY() {
        return this.y;
    }

    public /* synthetic */ RRMousePosition(int i, int i2, int i3, Long l, int i4, jh2 jh2Var) {
        this(i, i2, i3, (i4 & 8) != 0 ? null : l);
    }
}
