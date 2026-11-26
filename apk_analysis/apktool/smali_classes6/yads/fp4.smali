.class public final Lyads/fp4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final b:I

.field public c:I

.field public d:Z

.field public final synthetic e:Lyads/gp4;


# direct methods
.method public constructor <init>(Lyads/gp4;)V
    .locals 1

    iput-object p1, p0, Lyads/fp4;->e:Lyads/gp4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lyads/gp4;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lyads/gp4;->c:I

    iget-object p1, p1, Lyads/gp4;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, p0, Lyads/fp4;->b:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-boolean v0, p0, Lyads/fp4;->d:Z

    if-nez v0, :cond_7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyads/fp4;->d:Z

    iget-object p0, p0, Lyads/fp4;->e:Lyads/gp4;

    iget v1, p0, Lyads/gp4;->c:I

    sub-int/2addr v1, v0

    iput v1, p0, Lyads/gp4;->c:I

    sget-boolean v2, Lyads/gp4;->f:Z

    if-nez v2, :cond_1

    if-ltz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lxp;->g()V

    return-void

    :cond_1
    :goto_0
    if-lez v1, :cond_2

    goto :goto_3

    :cond_2
    iget-boolean v3, p0, Lyads/gp4;->e:Z

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    iput-boolean v3, p0, Lyads/gp4;->e:Z

    if-nez v2, :cond_5

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {}, Lxp;->g()V

    return-void

    :cond_5
    :goto_1
    iget-object v1, p0, Lyads/gp4;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    :goto_2
    if-ltz v1, :cond_7

    iget-object v0, p0, Lyads/gp4;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lyads/gp4;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_7
    :goto_3
    return-void
.end method

.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lyads/fp4;->c:I

    :goto_0
    iget v1, p0, Lyads/fp4;->b:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lyads/fp4;->e:Lyads/gp4;

    iget-object v1, v1, Lyads/gp4;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v1, p0, Lyads/fp4;->b:I

    if-ge v0, v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-virtual {p0}, Lyads/fp4;->a()V

    const/4 p0, 0x0

    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    :goto_0
    iget v0, p0, Lyads/fp4;->c:I

    iget v1, p0, Lyads/fp4;->b:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lyads/fp4;->e:Lyads/gp4;

    iget-object v1, v1, Lyads/gp4;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget v0, p0, Lyads/fp4;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lyads/fp4;->c:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lyads/fp4;->c:I

    iget v1, p0, Lyads/fp4;->b:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lyads/fp4;->e:Lyads/gp4;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lyads/fp4;->c:I

    iget-object p0, v1, Lyads/gp4;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lyads/fp4;->a()V

    invoke-static {}, Lqz0;->e()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final remove()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
