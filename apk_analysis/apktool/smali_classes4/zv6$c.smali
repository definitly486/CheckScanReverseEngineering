.class public final Lzv6$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzv6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "[B>;"
    }
.end annotation


# instance fields
.field public b:I

.field public c:J

.field public d:I

.field public final synthetic e:Lzv6;


# direct methods
.method public constructor <init>(Lzv6;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzv6$c;->e:Lzv6;

    const/4 v0, 0x0

    iput v0, p0, Lzv6$c;->b:I

    iget-object v0, p1, Lzv6;->h:Lzv6$b;

    iget-wide v0, v0, Lzv6$b;->a:J

    iput-wide v0, p0, Lzv6$c;->c:J

    iget p1, p1, Lzv6;->k:I

    iput p1, p0, Lzv6$c;->d:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 4

    iget-object v0, p0, Lzv6$c;->e:Lzv6;

    iget-boolean v1, v0, Lzv6;->l:Z

    const/4 v2, 0x0

    if-nez v1, :cond_2

    iget v1, v0, Lzv6;->k:I

    iget v3, p0, Lzv6$c;->d:I

    if-ne v1, v3, :cond_1

    iget p0, p0, Lzv6$c;->b:I

    iget v0, v0, Lzv6;->g:I

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v2

    :cond_1
    invoke-static {}, Lln;->e()V

    return v2

    :cond_2
    const-string p0, "closed"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return v2
.end method

.method public final next()Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lzv6$c;->e:Lzv6;

    iget-boolean v1, v0, Lzv6;->l:Z

    const/4 v2, 0x0

    if-nez v1, :cond_3

    iget v1, v0, Lzv6;->k:I

    iget v3, p0, Lzv6$c;->d:I

    if-ne v1, v3, :cond_2

    iget v1, v0, Lzv6;->g:I

    if-eqz v1, :cond_1

    iget v3, p0, Lzv6$c;->b:I

    if-ge v3, v1, :cond_0

    iget-wide v1, p0, Lzv6$c;->c:J

    invoke-virtual {v0, v1, v2}, Lzv6;->b(J)Lzv6$b;

    move-result-object v1

    iget-wide v2, v1, Lzv6$b;->a:J

    iget v6, v1, Lzv6$b;->b:I

    move-wide v4, v2

    new-array v3, v6, [B

    const-wide/16 v7, 0x4

    add-long/2addr v7, v4

    move-object v4, v1

    invoke-virtual {v0, v7, v8}, Lzv6;->o(J)J

    move-result-wide v1

    iput-wide v1, p0, Lzv6$c;->c:J

    iget v4, v4, Lzv6$b;->b:I

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lzv6;->n(J[BIZ)V

    int-to-long v1, v6

    add-long/2addr v7, v1

    invoke-virtual {v0, v7, v8}, Lzv6;->o(J)J

    move-result-wide v0

    iput-wide v0, p0, Lzv6$c;->c:J

    iget v0, p0, Lzv6$c;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lzv6$c;->b:I

    return-object v3

    :cond_0
    invoke-static {}, Lqz0;->e()V

    return-object v2

    :cond_1
    invoke-static {}, Lqz0;->e()V

    return-object v2

    :cond_2
    invoke-static {}, Lln;->e()V

    return-object v2

    :cond_3
    const-string p0, "closed"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-object v2
.end method

.method public final remove()V
    .locals 3

    iget-object v0, p0, Lzv6$c;->e:Lzv6;

    iget v1, v0, Lzv6;->k:I

    iget v2, p0, Lzv6$c;->d:I

    if-ne v1, v2, :cond_2

    iget v1, v0, Lzv6;->g:I

    if-eqz v1, :cond_1

    iget v1, p0, Lzv6$c;->b:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lzv6;->m()V

    iget v0, v0, Lzv6;->k:I

    iput v0, p0, Lzv6$c;->d:I

    iget v0, p0, Lzv6$c;->b:I

    sub-int/2addr v0, v2

    iput v0, p0, Lzv6$c;->b:I

    return-void

    :cond_0
    const-string p0, "Removal is only permitted from the head."

    invoke-static {p0}, Ln1;->e(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Lqz0;->e()V

    return-void

    :cond_2
    invoke-static {}, Lln;->e()V

    return-void
.end method
