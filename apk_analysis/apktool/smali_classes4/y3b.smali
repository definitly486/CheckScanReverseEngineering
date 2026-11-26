.class public abstract Ly3b;
.super Ljava/util/AbstractMap;
.source "SourceFile"


# instance fields
.field public transient b:Lbxa;

.field public transient c:Lt3b;


# virtual methods
.method public final entrySet()Ljava/util/Set;
    .locals 2

    iget-object v0, p0, Ly3b;->b:Lbxa;

    if-nez v0, :cond_0

    move-object v0, p0

    check-cast v0, Lfxa;

    new-instance v1, Lbxa;

    invoke-direct {v1, v0}, Lbxa;-><init>(Lfxa;)V

    iput-object v1, p0, Ly3b;->b:Lbxa;

    return-object v1

    :cond_0
    return-object v0
.end method

.method public final values()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Ly3b;->c:Lt3b;

    if-nez v0, :cond_0

    new-instance v0, Lt3b;

    invoke-direct {v0, p0}, Lt3b;-><init>(Ly3b;)V

    iput-object v0, p0, Ly3b;->c:Lt3b;

    :cond_0
    return-object v0
.end method
