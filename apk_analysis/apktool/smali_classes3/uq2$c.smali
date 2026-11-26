.class public final Luq2$c;
.super Luq2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luq2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# virtual methods
.method public final a(IIII)Luq2$g;
    .locals 1

    invoke-virtual {p0, p1, p2, p3, p4}, Luq2$c;->b(IIII)F

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p0, p0, v0

    if-nez p0, :cond_0

    sget-object p0, Luq2$g;->QUALITY:Luq2$g;

    return-object p0

    :cond_0
    sget-object p0, Luq2;->a:Luq2$e;

    invoke-virtual {p0, p1, p2, p3, p4}, Luq2$e;->a(IIII)Luq2$g;

    move-result-object p0

    return-object p0
.end method

.method public final b(IIII)F
    .locals 0

    sget-object p0, Luq2;->a:Luq2$e;

    invoke-virtual {p0, p1, p2, p3, p4}, Luq2$e;->b(IIII)F

    move-result p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method
