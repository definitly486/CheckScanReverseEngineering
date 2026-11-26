.class public final Lyads/d66;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(ILjava/lang/String;Ljava/lang/String;)Lyads/f66;
    .locals 2

    and-int/lit8 v0, p0, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p1, v1

    :cond_0
    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

    move-object p2, v1

    :cond_1
    new-instance p0, Lyads/f66;

    sget-object v0, Lyads/e66;->i:Lyads/e66;

    invoke-direct {p0, v0, p1, p2}, Lyads/f66;-><init>(Lyads/e66;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
