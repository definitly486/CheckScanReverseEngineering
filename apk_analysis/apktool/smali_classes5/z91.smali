.class public final Lz91;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lre4;


# instance fields
.field public final b:I

.field public final c:I

.field public d:Z

.field public e:I


# direct methods
.method public constructor <init>(CC)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lz91;->b:I

    iput p2, p0, Lz91;->c:I

    invoke-static {p1, p2}, Laa4;->f(II)I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lz91;->d:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move p1, p2

    :goto_1
    iput p1, p0, Lz91;->e:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 0

    iget-boolean p0, p0, Lz91;->d:Z

    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lz91;->e:I

    iget v1, p0, Lz91;->c:I

    if-ne v0, v1, :cond_1

    iget-boolean v1, p0, Lz91;->d:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iput-boolean v2, p0, Lz91;->d:Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lqz0;->e()V

    goto :goto_1

    :cond_1
    iget v1, p0, Lz91;->b:I

    add-int/2addr v1, v0

    iput v1, p0, Lz91;->e:I

    :goto_0
    int-to-char v2, v0

    :goto_1
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    return-object p0
.end method

.method public final remove()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
