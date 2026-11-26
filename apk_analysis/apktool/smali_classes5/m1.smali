.class public abstract Lm1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldy6;


# virtual methods
.method public I()V
    .locals 0

    return-void
.end method

.method public final a(I)V
    .locals 0

    invoke-interface {p0}, Ldy6;->q()I

    move-result p0

    if-lt p0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lv93;->b()V

    return-void
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public markSupported()Z
    .locals 0

    instance-of p0, p0, Ley6$b;

    return p0
.end method

.method public reset()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
