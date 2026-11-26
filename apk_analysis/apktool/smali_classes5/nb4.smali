.class public Lnb4;
.super Lsb4;
.source "SourceFile"

# interfaces
.implements Lhq1;


# instance fields
.field public final e:Z


# direct methods
.method public constructor <init>(Lmb4;)V
    .locals 6

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lsb4;-><init>(Z)V

    invoke-virtual {p0, p1}, Lsb4;->O(Lmb4;)V

    sget-object p1, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v1, Lsb4;->b:J

    invoke-virtual {p1, p0, v1, v2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgi1;

    instance-of v3, p1, Lhi1;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    check-cast p1, Lhi1;

    goto :goto_0

    :cond_0
    move-object p1, v4

    :goto_0
    const/4 v3, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lrb4;->j()Lsb4;

    move-result-object p1

    :goto_1
    invoke-virtual {p1}, Lsb4;->I()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_3

    :cond_1
    sget-object v5, Lpz0;->a:Lsun/misc/Unsafe;

    invoke-virtual {v5, p1, v1, v2}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgi1;

    instance-of v5, p1, Lhi1;

    if-eqz v5, :cond_2

    check-cast p1, Lhi1;

    goto :goto_2

    :cond_2
    move-object p1, v4

    :goto_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lrb4;->j()Lsb4;

    move-result-object p1

    goto :goto_1

    :cond_3
    move v0, v3

    :goto_3
    iput-boolean v0, p0, Lnb4;->e:Z

    return-void
.end method


# virtual methods
.method public final I()Z
    .locals 0

    iget-boolean p0, p0, Lnb4;->e:Z

    return p0
.end method

.method public final J()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final complete()Z
    .locals 1

    sget-object v0, Lj59;->a:Lj59;

    invoke-virtual {p0, v0}, Lsb4;->T(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
