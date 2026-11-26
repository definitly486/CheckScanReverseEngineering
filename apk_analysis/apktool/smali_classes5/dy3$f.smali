.class public final Ldy3$f;
.super Ldy3$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldy3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "f"
.end annotation


# instance fields
.field public e:Z


# virtual methods
.method public final close()V
    .locals 1

    iget-boolean v0, p0, Ldy3$a;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Ldy3$f;->e:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ldy3$a;->m()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Ldy3$a;->c:Z

    return-void
.end method

.method public final t0(Lbu0;J)J
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_3

    iget-boolean v2, p0, Ldy3$a;->c:Z

    if-nez v2, :cond_2

    iget-boolean v0, p0, Ldy3$f;->e:Z

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Ldy3$a;->t0(Lbu0;J)J

    move-result-wide p1

    cmp-long p3, p1, v1

    if-nez p3, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Ldy3$f;->e:Z

    invoke-virtual {p0}, Ldy3$a;->m()V

    return-wide v1

    :cond_1
    return-wide p1

    :cond_2
    const-string p0, "closed"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-wide v0

    :cond_3
    const-string p0, "byteCount < 0: "

    invoke-static {p2, p3, p0}, Lr01;->c(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc9;->f(Ljava/lang/Object;)V

    return-wide v0
.end method
