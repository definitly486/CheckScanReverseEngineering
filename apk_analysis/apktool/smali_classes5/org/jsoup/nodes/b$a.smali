.class public final Lorg/jsoup/nodes/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jsoup/nodes/b;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/jsoup/nodes/a;",
        ">;"
    }
.end annotation


# instance fields
.field public b:I

.field public c:I

.field public final synthetic d:Lorg/jsoup/nodes/b;


# direct methods
.method public constructor <init>(Lorg/jsoup/nodes/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jsoup/nodes/b$a;->d:Lorg/jsoup/nodes/b;

    iget p1, p1, Lorg/jsoup/nodes/b;->b:I

    iput p1, p0, Lorg/jsoup/nodes/b$a;->b:I

    const/4 p1, 0x0

    iput p1, p0, Lorg/jsoup/nodes/b$a;->c:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 4

    iget-object v0, p0, Lorg/jsoup/nodes/b$a;->d:Lorg/jsoup/nodes/b;

    iget v1, v0, Lorg/jsoup/nodes/b;->b:I

    iget v2, p0, Lorg/jsoup/nodes/b$a;->b:I

    if-ne v1, v2, :cond_2

    :goto_0
    iget v1, p0, Lorg/jsoup/nodes/b$a;->c:I

    iget v2, v0, Lorg/jsoup/nodes/b;->b:I

    const/4 v3, 0x1

    if-ge v1, v2, :cond_0

    iget-object v2, v0, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-static {v1}, Lorg/jsoup/nodes/b;->q(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/jsoup/nodes/b$a;->c:I

    add-int/2addr v1, v3

    iput v1, p0, Lorg/jsoup/nodes/b$a;->c:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lorg/jsoup/nodes/b$a;->c:I

    iget v0, v0, Lorg/jsoup/nodes/b;->b:I

    if-ge p0, v0, :cond_1

    return v3

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    new-instance p0, Ljava/util/ConcurrentModificationException;

    const-string v0, "Use Iterator#remove() instead to remove attributes while iterating."

    invoke-direct {p0, v0}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lorg/jsoup/nodes/b$a;->d:Lorg/jsoup/nodes/b;

    iget v1, v0, Lorg/jsoup/nodes/b;->b:I

    iget v2, p0, Lorg/jsoup/nodes/b$a;->b:I

    if-ne v1, v2, :cond_1

    iget v2, p0, Lorg/jsoup/nodes/b$a;->c:I

    if-ge v2, v1, :cond_0

    iget-object v1, v0, Lorg/jsoup/nodes/b;->c:[Ljava/lang/String;

    aget-object v1, v1, v2

    new-instance v2, Lorg/jsoup/nodes/a;

    iget-object v3, v0, Lorg/jsoup/nodes/b;->d:[Ljava/lang/Object;

    iget v4, p0, Lorg/jsoup/nodes/b$a;->c:I

    aget-object v3, v3, v4

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-static {v1}, Lyb9;->e(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lyb9;->c(Ljava/lang/String;)V

    iput-object v1, v2, Lorg/jsoup/nodes/a;->b:Ljava/lang/String;

    iput-object v3, v2, Lorg/jsoup/nodes/a;->c:Ljava/lang/String;

    iput-object v0, v2, Lorg/jsoup/nodes/a;->d:Lorg/jsoup/nodes/b;

    iget v0, p0, Lorg/jsoup/nodes/b$a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jsoup/nodes/b$a;->c:I

    return-object v2

    :cond_0
    invoke-static {}, Lqz0;->e()V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    new-instance p0, Ljava/util/ConcurrentModificationException;

    const-string v0, "Use Iterator#remove() instead to remove attributes while iterating."

    invoke-direct {p0, v0}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final remove()V
    .locals 2

    iget v0, p0, Lorg/jsoup/nodes/b$a;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jsoup/nodes/b$a;->c:I

    iget-object v1, p0, Lorg/jsoup/nodes/b$a;->d:Lorg/jsoup/nodes/b;

    invoke-virtual {v1, v0}, Lorg/jsoup/nodes/b;->s(I)V

    iget v0, p0, Lorg/jsoup/nodes/b$a;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jsoup/nodes/b$a;->b:I

    return-void
.end method
