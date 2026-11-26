.class public Luz4$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luz4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final b:Luz4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Luz4<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(Luz4;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Luz4<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luz4$c;->b:Luz4;

    const/4 v0, -0x1

    iput v0, p0, Luz4$c;->d:I

    iget p1, p1, Luz4;->i:I

    iput p1, p0, Luz4$c;->e:I

    invoke-virtual {p0}, Luz4$c;->b()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Luz4$c;->b:Luz4;

    iget v0, v0, Luz4;->i:I

    iget p0, p0, Luz4$c;->e:I

    if-ne v0, p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lln;->e()V

    return-void
.end method

.method public final b()V
    .locals 3

    :goto_0
    iget v0, p0, Luz4$c;->c:I

    iget-object v1, p0, Luz4$c;->b:Luz4;

    iget v2, v1, Luz4;->g:I

    if-ge v0, v2, :cond_0

    iget-object v1, v1, Luz4;->d:[I

    aget v1, v1, v0

    if-gez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Luz4$c;->c:I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final hasNext()Z
    .locals 1

    iget v0, p0, Luz4$c;->c:I

    iget-object p0, p0, Luz4$c;->b:Luz4;

    iget p0, p0, Luz4;->g:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final remove()V
    .locals 3

    invoke-virtual {p0}, Luz4$c;->a()V

    iget v0, p0, Luz4$c;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Luz4$c;->b:Luz4;

    invoke-virtual {v0}, Luz4;->d()V

    iget v2, p0, Luz4$c;->d:I

    invoke-virtual {v0, v2}, Luz4;->p(I)V

    iput v1, p0, Luz4$c;->d:I

    iget v0, v0, Luz4;->i:I

    iput v0, p0, Luz4$c;->e:I

    return-void

    :cond_0
    const-string p0, "Call next() before removing element from the iterator."

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void
.end method
