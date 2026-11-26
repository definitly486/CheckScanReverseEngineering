.class public abstract Ly91$e;
.super Ly91;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly91;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "e"
.end annotation


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-virtual {p0, p1}, Ly91;->c(C)Z

    move-result p0

    return p0
.end method

.method public d()Ly91;
    .locals 1

    new-instance v0, Ly91$l;

    invoke-direct {v0, p0}, Ly91$k;-><init>(Ly91;)V

    return-object v0
.end method
