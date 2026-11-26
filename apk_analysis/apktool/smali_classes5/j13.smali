.class public final Lj13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvk3;


# static fields
.field public static final e:Ljava/util/logging/Logger;


# instance fields
.field public final b:Llv5;

.field public final c:Lzs$d;

.field public final d:Lmv5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Llv5;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lj13;->e:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Llv5;Lzs$d;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmv5;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-direct {v0}, Lmv5;-><init>()V

    iput-object v0, p0, Lj13;->d:Lmv5;

    iput-object p1, p0, Lj13;->b:Llv5;

    iput-object p2, p0, Lj13;->c:Lzs$d;

    return-void
.end method


# virtual methods
.method public final T(IJ)V
    .locals 2

    iget-object v0, p0, Lj13;->d:Lmv5;

    sget-object v1, Lmv5$a;->OUTBOUND:Lmv5$a;

    invoke-virtual {v0, v1, p1, p2, p3}, Lmv5;->g(Lmv5$a;IJ)V

    :try_start_0
    iget-object v0, p0, Lj13;->c:Lzs$d;

    invoke-virtual {v0, p1, p2, p3}, Lgj3;->T(IJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p0, p0, Lj13;->b:Llv5;

    invoke-virtual {p0, p1}, Llv5;->m(Ljava/lang/Exception;)V

    return-void
.end method

.method public final b0()I
    .locals 0

    iget-object p0, p0, Lj13;->c:Lzs$d;

    iget-object p0, p0, Lgj3;->b:Lvk3;

    invoke-interface {p0}, Lvk3;->b0()I

    move-result p0

    return p0
.end method

.method public final close()V
    .locals 3

    :try_start_0
    iget-object p0, p0, Lj13;->c:Lzs$d;

    invoke-virtual {p0}, Lgj3;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/io/IOException;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    :goto_0
    const-string v1, "Failed closing connection"

    sget-object v2, Lj13;->e:Ljava/util/logging/Logger;

    invoke-virtual {v2, v0, v1, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final flush()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lj13;->c:Lzs$d;

    invoke-virtual {v0}, Lgj3;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object p0, p0, Lj13;->b:Llv5;

    invoke-virtual {p0, v0}, Llv5;->m(Ljava/lang/Exception;)V

    return-void
.end method

.method public final g0(Lq03;[B)V
    .locals 5

    iget-object v0, p0, Lj13;->c:Lzs$d;

    sget-object v1, Lmv5$a;->OUTBOUND:Lmv5$a;

    invoke-static {p2}, Lgx0;->q([B)Lgx0;

    move-result-object v2

    iget-object v3, p0, Lj13;->d:Lmv5;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, p1, v2}, Lmv5;->c(Lmv5$a;ILq03;Lgx0;)V

    :try_start_0
    invoke-virtual {v0, p1, p2}, Lgj3;->g0(Lq03;[B)V

    invoke-virtual {v0}, Lgj3;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p0, p0, Lj13;->b:Llv5;

    invoke-virtual {p0, p1}, Llv5;->m(Ljava/lang/Exception;)V

    return-void
.end method

.method public final h0(ILq03;)V
    .locals 2

    iget-object v0, p0, Lj13;->d:Lmv5;

    sget-object v1, Lmv5$a;->OUTBOUND:Lmv5$a;

    invoke-virtual {v0, v1, p1, p2}, Lmv5;->e(Lmv5$a;ILq03;)V

    :try_start_0
    iget-object v0, p0, Lj13;->c:Lzs$d;

    invoke-virtual {v0, p1, p2}, Lzs$d;->h0(ILq03;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p0, p0, Lj13;->b:Llv5;

    invoke-virtual {p0, p1}, Llv5;->m(Ljava/lang/Exception;)V

    return-void
.end method

.method public final m0(IIZ)V
    .locals 9

    const-wide v0, 0xffffffffL

    const/16 v2, 0x20

    iget-object v3, p0, Lj13;->d:Lmv5;

    if-eqz p3, :cond_0

    sget-object v4, Lmv5$a;->OUTBOUND:Lmv5$a;

    int-to-long v5, p1

    shl-long/2addr v5, v2

    int-to-long v7, p2

    and-long/2addr v0, v7

    or-long/2addr v0, v5

    invoke-virtual {v3}, Lmv5;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v3, Lmv5;->a:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " PING: ack=true bytes="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v4, Lmv5$a;->OUTBOUND:Lmv5$a;

    int-to-long v5, p1

    shl-long/2addr v5, v2

    int-to-long v7, p2

    and-long/2addr v0, v7

    or-long/2addr v0, v5

    invoke-virtual {v3, v4, v0, v1}, Lmv5;->d(Lmv5$a;J)V

    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Lj13;->c:Lzs$d;

    invoke-virtual {v0, p1, p2, p3}, Lzs$d;->m0(IIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p0, p0, Lj13;->b:Llv5;

    invoke-virtual {p0, p1}, Llv5;->m(Ljava/lang/Exception;)V

    return-void
.end method

.method public final p0(Lpr7;)V
    .locals 4

    sget-object v0, Lmv5$a;->OUTBOUND:Lmv5$a;

    iget-object v1, p0, Lj13;->d:Lmv5;

    invoke-virtual {v1}, Lmv5;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, v1, Lmv5;->a:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " SETTINGS: ack=true"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lj13;->c:Lzs$d;

    invoke-virtual {v0, p1}, Lzs$d;->p0(Lpr7;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p0, p0, Lj13;->b:Llv5;

    invoke-virtual {p0, p1}, Llv5;->m(Ljava/lang/Exception;)V

    return-void
.end method

.method public final u()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lj13;->c:Lzs$d;

    invoke-virtual {v0}, Lgj3;->u()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object p0, p0, Lj13;->b:Llv5;

    invoke-virtual {p0, v0}, Llv5;->m(Ljava/lang/Exception;)V

    return-void
.end method

.method public final w(ZILbu0;I)V
    .locals 6

    sget-object v1, Lmv5$a;->OUTBOUND:Lmv5$a;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lj13;->d:Lmv5;

    move v5, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lmv5;->b(Lmv5$a;ILbu0;IZ)V

    :try_start_0
    iget-object p1, p0, Lj13;->c:Lzs$d;

    invoke-virtual {p1, v5, v2, v3, v4}, Lgj3;->w(ZILbu0;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    iget-object p0, p0, Lj13;->b:Llv5;

    invoke-virtual {p0, p1}, Llv5;->m(Ljava/lang/Exception;)V

    return-void
.end method

.method public final x(ILjava/util/List;Z)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lj13;->c:Lzs$d;

    invoke-virtual {v0, p1, p2, p3}, Lgj3;->x(ILjava/util/List;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p0, p0, Lj13;->b:Llv5;

    invoke-virtual {p0, p1}, Llv5;->m(Ljava/lang/Exception;)V

    return-void
.end method

.method public final z(Lpr7;)V
    .locals 2

    iget-object v0, p0, Lj13;->d:Lmv5;

    sget-object v1, Lmv5$a;->OUTBOUND:Lmv5$a;

    invoke-virtual {v0, v1, p1}, Lmv5;->f(Lmv5$a;Lpr7;)V

    :try_start_0
    iget-object v0, p0, Lj13;->c:Lzs$d;

    invoke-virtual {v0, p1}, Lgj3;->z(Lpr7;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p0, p0, Lj13;->b:Llv5;

    invoke-virtual {p0, p1}, Llv5;->m(Ljava/lang/Exception;)V

    return-void
.end method
