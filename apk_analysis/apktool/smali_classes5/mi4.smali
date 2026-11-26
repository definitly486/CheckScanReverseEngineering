.class public final Lmi4;
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
    instance-of p0, p1, Lmi4;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    return v0
.end method

.method public final bridge synthetic f()Ljava/lang/Object;
    .locals 0

    const-string p0, "nullnullnull"

    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    const/4 p0, 0x0

    throw p0
.end method

.method public final bridge synthetic id()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "LandingCountChequeViewModel(id=0, title=null, from=null, to=null, progress=0, progressText=null, progressColor=0)"

    return-object p0
.end method
