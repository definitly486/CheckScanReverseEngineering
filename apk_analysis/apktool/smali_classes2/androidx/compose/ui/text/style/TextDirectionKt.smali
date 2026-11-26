.class public final Landroidx/compose/ui/text/style/TextDirectionKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final isSpecified-Hejc4pk(I)Z
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final takeOrElse-HklW4sA(ILll3;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lll3<",
            "Landroidx/compose/ui/text/style/TextDirection;",
            ">;)I"
        }
    .end annotation

    if-eqz p0, :cond_0

    return p0

    :cond_0
    invoke-interface {p1}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/text/style/TextDirection;

    invoke-virtual {p0}, Landroidx/compose/ui/text/style/TextDirection;->unbox-impl()I

    move-result p0

    return p0
.end method
