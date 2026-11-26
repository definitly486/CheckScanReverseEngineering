.class public final Lfi1;
.super Lrb4;
.source "SourceFile"


# instance fields
.field public final f:Lc31;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc31<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc31;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc31<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lrb4;-><init>()V

    iput-object p1, p0, Lfi1;->f:Lc31;

    return-void
.end method


# virtual methods
.method public final k()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final l(Ljava/lang/Throwable;)V
    .locals 14

    invoke-virtual {p0}, Lrb4;->j()Lsb4;

    move-result-object p1

    iget-object p0, p0, Lfi1;->f:Lc31;

    invoke-virtual {p0, p1}, Lc31;->r(Lsb4;)Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {p0}, Lc31;->x()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lc31;->e:Le02;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v1, p1

    check-cast v1, Lfo2;

    sget-wide v12, Lfo2;->i:J

    :goto_0
    sget-object p1, Lpz0;->a:Lsun/misc/Unsafe;

    invoke-virtual {p1, v1, v12, v13}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v10

    sget-object v4, Lgo2;->c:Lbh8;

    invoke-static {v10, v4}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_1
    sget-object v0, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lfo2;->i:J

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v1, v12, v13}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, v4, :cond_1

    goto :goto_0

    :cond_3
    instance-of p1, v10, Ljava/lang/Throwable;

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    sget-object v6, Lpz0;->a:Lsun/misc/Unsafe;

    sget-wide v8, Lfo2;->i:J

    const/4 v11, 0x0

    move-object v7, v1

    invoke-virtual/range {v6 .. v11}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    :goto_1
    invoke-virtual {p0, v5}, Lc31;->d(Ljava/lang/Throwable;)Z

    invoke-virtual {p0}, Lc31;->x()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lc31;->o()V

    :cond_5
    :goto_2
    return-void

    :cond_6
    invoke-virtual {v6, v1, v12, v13}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, v10, :cond_4

    goto :goto_0
.end method
