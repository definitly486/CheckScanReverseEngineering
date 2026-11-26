.class public final Lki4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwk4;


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of p0, p1, Lki4;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    return v0
.end method

.method public final bridge synthetic f()Ljava/lang/Object;
    .locals 0

    const-string p0, "nullnull0"

    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final bridge synthetic id()Ljava/lang/Object;
    .locals 0

    const-string p0, "nullnull"

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "LandingChequeCounterViewModel(title=null, progress=0, color=0, nextLevelHint=null, nextLevel=null, steps=null)"

    return-object p0
.end method
