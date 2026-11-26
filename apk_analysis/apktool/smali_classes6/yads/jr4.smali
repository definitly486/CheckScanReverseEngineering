.class public abstract Lyads/jr4;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;IIIILandroid/util/DisplayMetrics;)Lyads/lr4;
    .locals 6

    if-nez p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "clamp"

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    new-instance p0, Lyads/ir4;

    invoke-direct/range {p0 .. p5}, Lyads/ir4;-><init>(IIIILandroid/util/DisplayMetrics;)V

    return-object p0

    :cond_1
    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    const-string p1, "ring"

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance v0, Lyads/kr4;

    invoke-direct/range {v0 .. v5}, Lyads/kr4;-><init>(IIIILandroid/util/DisplayMetrics;)V

    return-object v0

    :cond_2
    new-instance v0, Lyads/ir4;

    invoke-direct/range {v0 .. v5}, Lyads/ir4;-><init>(IIIILandroid/util/DisplayMetrics;)V

    return-object v0
.end method
