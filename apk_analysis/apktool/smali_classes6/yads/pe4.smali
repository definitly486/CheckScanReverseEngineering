.class public final Lyads/pe4;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lyads/fv5;Lyads/n83;)Ljava/util/List;
    .locals 3

    .line 38
    instance-of v0, p0, Lyads/ev5;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Lyads/ev5;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-eqz p1, :cond_1

    .line 39
    iget-object v0, p1, Lyads/n83;->b:Lyads/fv5;

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 40
    :goto_1
    instance-of v2, v0, Lyads/ev5;

    if-eqz v2, :cond_2

    check-cast v0, Lyads/ev5;

    goto :goto_2

    :cond_2
    move-object v0, v1

    :goto_2
    if-eqz p1, :cond_3

    .line 41
    iget-object v1, p1, Lyads/n83;->a:Lyads/by4;

    .line 42
    :cond_3
    filled-new-array {p0, v0, v1}, [Ljava/lang/Object;

    move-result-object p0

    .line 43
    invoke-static {p0}, Lyr;->G([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lyads/by4;Lyads/fv5;)Lyads/zz;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-nez p1, :cond_1

    if-nez p0, :cond_1

    move v0, v1

    :cond_1
    if-nez v2, :cond_5

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    iget-object p0, p1, Lyads/fv5;->b:Lyads/zz;

    return-object p0

    :cond_3
    if-eqz p0, :cond_4

    new-instance p1, Lyads/uz;

    invoke-direct {p1, p0}, Lyads/uz;-><init>(Lyads/by4;)V

    return-object p1

    :cond_4
    sget-object p0, Lyads/wz;->a:Lyads/wz;

    return-object p0

    :cond_5
    :goto_1
    sget-object p0, Lyads/wz;->a:Lyads/wz;

    return-object p0
.end method
