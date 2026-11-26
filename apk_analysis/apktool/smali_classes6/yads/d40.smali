.class public final Lyads/d40;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lyads/pg4;Lyads/m2;Lyads/h80;Lyads/p10;Lyads/q84;)Lyads/v40;
    .locals 3

    invoke-interface {p0}, Lyads/pg4;->getAdAssets()Lyads/f80;

    move-result-object v0

    new-instance v1, Lyads/v40;

    new-instance v2, Lyads/h13;

    invoke-direct {v2, p0, p1, p2, p4}, Lyads/h13;-><init>(Lyads/pg4;Lyads/m2;Lyads/h80;Lyads/q84;)V

    new-instance p0, Lyads/ce;

    invoke-direct {p0, v0}, Lyads/ce;-><init>(Lyads/f80;)V

    new-instance p1, Lyads/qz3;

    invoke-direct {p1, v0}, Lyads/qz3;-><init>(Lyads/f80;)V

    new-instance p2, Lyads/c45;

    invoke-direct {p2, v0}, Lyads/c45;-><init>(Lyads/f80;)V

    const/4 p4, 0x5

    new-array p4, p4, [Lyads/on0;

    const/4 v0, 0x0

    aput-object v2, p4, v0

    const/4 v0, 0x1

    aput-object p0, p4, v0

    const/4 p0, 0x2

    aput-object p1, p4, p0

    const/4 p0, 0x3

    aput-object p2, p4, p0

    const/4 p0, 0x4

    aput-object p3, p4, p0

    invoke-direct {v1, p4}, Lyads/v40;-><init>([Lyads/on0;)V

    return-object v1
.end method
