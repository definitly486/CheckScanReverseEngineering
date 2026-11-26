.class public final Ls57;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lhd3;)Lde3;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lo57;

    invoke-direct {v0, p0}, Lo57;-><init>(Lhd3;)V

    new-instance p0, Lp57;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lpg8;-><init>(ILe02;)V

    new-instance v1, Lce3;

    invoke-direct {v1, v0, p0}, Lce3;-><init>(Lhd3;Lbm3;)V

    new-instance p0, Lq57;

    const/4 v0, 0x3

    invoke-direct {p0, v0, v2}, Lpg8;-><init>(ILe02;)V

    new-instance v0, Lde3;

    invoke-direct {v0, v1, p0}, Lde3;-><init>(Lhd3;Ldm3;)V

    return-object v0
.end method
