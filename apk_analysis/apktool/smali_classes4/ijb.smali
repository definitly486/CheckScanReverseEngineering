.class public final Lijb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public b:I

.field public c:Z

.field public d:Ljava/util/Iterator;

.field public final synthetic e:Lyjb;


# direct methods
.method public synthetic constructor <init>(Lyjb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lijb;->e:Lyjb;

    const/4 p1, -0x1

    iput p1, p0, Lijb;->b:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lijb;->d:Ljava/util/Iterator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lijb;->e:Lyjb;

    iget-object v0, v0, Lyjb;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lijb;->d:Ljava/util/Iterator;

    :cond_0
    return-object v0
.end method

.method public final hasNext()Z
    .locals 4

    iget v0, p0, Lijb;->b:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lijb;->e:Lyjb;

    iget v3, v2, Lyjb;->c:I

    if-lt v0, v3, :cond_1

    iget-object v0, v2, Lyjb;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lijb;->a()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lijb;->c:Z

    iget v1, p0, Lijb;->b:I

    add-int/2addr v1, v0

    iput v1, p0, Lijb;->b:I

    iget-object v0, p0, Lijb;->e:Lyjb;

    iget v2, v0, Lyjb;->c:I

    if-ge v1, v2, :cond_0

    iget-object p0, v0, Lyjb;->b:[Ljava/lang/Object;

    aget-object p0, p0, v1

    check-cast p0, Lajb;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lijb;->a()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    return-object p0
.end method

.method public final remove()V
    .locals 3

    iget-boolean v0, p0, Lijb;->c:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lijb;->c:Z

    sget v0, Lyjb;->h:I

    iget-object v0, p0, Lijb;->e:Lyjb;

    invoke-virtual {v0}, Lyjb;->j()V

    iget v1, p0, Lijb;->b:I

    iget v2, v0, Lyjb;->c:I

    if-ge v1, v2, :cond_0

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lijb;->b:I

    invoke-virtual {v0, v1}, Lyjb;->g(I)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-virtual {p0}, Lijb;->a()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    return-void

    :cond_1
    const-string p0, "remove() was called before next()"

    invoke-static {p0}, Lah;->f(Ljava/lang/String;)V

    return-void
.end method
