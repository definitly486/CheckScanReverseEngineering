.class public final Lf79;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcl4;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcl4<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public b:Lll3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lll3<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public c:Ljava/lang/Object;


# direct methods
.method private final readObject(Ljava/io/ObjectInputStream;)V
    .locals 0

    new-instance p0, Ljava/io/InvalidObjectException;

    const-string p1, "Deserialization is supported via proxy only"

    invoke-direct {p0, p1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final writeReplace()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lh54;

    invoke-virtual {p0}, Lf79;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lh54;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lf79;->c:Ljava/lang/Object;

    sget-object v1, Lsm1;->d:Lsm1;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lf79;->b:Lll3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lf79;->c:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, p0, Lf79;->b:Lll3;

    :cond_0
    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    iget-object p0, p0, Lf79;->c:Ljava/lang/Object;

    sget-object v0, Lsm1;->d:Lsm1;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lf79;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lf79;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "Lazy value not initialized yet."

    return-object p0
.end method
