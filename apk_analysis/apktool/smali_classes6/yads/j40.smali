.class public abstract Lyads/j40;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public final synthetic e:Lyads/n40;


# direct methods
.method public constructor <init>(Lyads/n40;)V
    .locals 1

    iput-object p1, p0, Lyads/j40;->e:Lyads/n40;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lyads/n40;->f:I

    iput v0, p0, Lyads/j40;->b:I

    invoke-virtual {p1}, Lyads/n40;->isEmpty()Z

    move-result p1

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lyads/j40;->c:I

    iput v0, p0, Lyads/j40;->d:I

    return-void
.end method


# virtual methods
.method public abstract a(I)Ljava/lang/Object;
.end method

.method public final hasNext()Z
    .locals 0

    iget p0, p0, Lyads/j40;->c:I

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lyads/j40;->e:Lyads/n40;

    iget v0, v0, Lyads/n40;->f:I

    iget v1, p0, Lyads/j40;->b:I

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lyads/j40;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lyads/j40;->c:I

    iput v0, p0, Lyads/j40;->d:I

    invoke-virtual {p0, v0}, Lyads/j40;->a(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lyads/j40;->e:Lyads/n40;

    iget v2, p0, Lyads/j40;->c:I

    add-int/lit8 v2, v2, 0x1

    iget v1, v1, Lyads/n40;->g:I

    if-ge v2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    iput v2, p0, Lyads/j40;->c:I

    return-object v0

    :cond_1
    invoke-static {}, Lqz0;->e()V

    :goto_1
    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {}, Lln;->e()V

    goto :goto_1
.end method

.method public final remove()V
    .locals 5

    iget-object v0, p0, Lyads/j40;->e:Lyads/n40;

    iget v1, v0, Lyads/n40;->f:I

    iget v2, p0, Lyads/j40;->b:I

    if-ne v1, v2, :cond_2

    iget v1, p0, Lyads/j40;->d:I

    const/4 v3, 0x1

    if-ltz v1, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_1

    add-int/lit8 v2, v2, 0x20

    iput v2, p0, Lyads/j40;->b:I

    invoke-virtual {v0, v1}, Lyads/n40;->a(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lyads/n40;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lyads/j40;->e:Lyads/n40;

    iget v1, p0, Lyads/j40;->c:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sub-int/2addr v1, v3

    iput v1, p0, Lyads/j40;->c:I

    const/4 v0, -0x1

    iput v0, p0, Lyads/j40;->d:I

    return-void

    :cond_1
    const-string p0, "no calls to next() since the last call to remove()"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-static {}, Lln;->e()V

    return-void
.end method
