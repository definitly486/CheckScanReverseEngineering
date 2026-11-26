.class public final Landroidx/compose/ui/text/style/TextAlignKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final isSpecified-aXe7zB0(I)Z
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final takeOrElse-BvjSTJw(ILll3;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lll3<",
            "Landroidx/compose/ui/text/style/TextAlign;",
            ">;)I"
        }
    .end annotation

    if-eqz p0, :cond_0

    return p0

    :cond_0
    invoke-interface {p1}, Lll3;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/text/style/TextAlign;

    invoke-virtual {p0}, Landroidx/compose/ui/text/style/TextAlign;->unbox-impl()I

    move-result p0

    return p0
.end method
