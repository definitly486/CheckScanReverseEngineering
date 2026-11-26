.class public abstract Lyads/wp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/mm;


# instance fields
.field public b:Lyads/km;

.field public c:Lyads/km;

.field public d:Lyads/km;

.field public e:Lyads/km;

.field public f:Ljava/nio/ByteBuffer;

.field public g:Ljava/nio/ByteBuffer;

.field public h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lyads/mm;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lyads/wp;->f:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lyads/wp;->g:Ljava/nio/ByteBuffer;

    sget-object v0, Lyads/km;->e:Lyads/km;

    iput-object v0, p0, Lyads/wp;->d:Lyads/km;

    iput-object v0, p0, Lyads/wp;->e:Lyads/km;

    iput-object v0, p0, Lyads/wp;->b:Lyads/km;

    iput-object v0, p0, Lyads/wp;->c:Lyads/km;

    return-void
.end method


# virtual methods
.method public a()Ljava/nio/ByteBuffer;
    .locals 2

    .line 33
    iget-object v0, p0, Lyads/wp;->g:Ljava/nio/ByteBuffer;

    .line 34
    sget-object v1, Lyads/mm;->a:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lyads/wp;->g:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final a(I)Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lyads/wp;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    if-ge v0, p1, :cond_0

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lyads/wp;->f:Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lyads/wp;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :goto_0
    iget-object p1, p0, Lyads/wp;->f:Ljava/nio/ByteBuffer;

    iput-object p1, p0, Lyads/wp;->g:Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method public final a(Lyads/km;)Lyads/km;
    .locals 0

    .line 35
    iput-object p1, p0, Lyads/wp;->d:Lyads/km;

    .line 36
    invoke-virtual {p0, p1}, Lyads/wp;->b(Lyads/km;)Lyads/km;

    move-result-object p1

    iput-object p1, p0, Lyads/wp;->e:Lyads/km;

    .line 37
    invoke-virtual {p0}, Lyads/wp;->isActive()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lyads/wp;->e:Lyads/km;

    return-object p0

    :cond_0
    sget-object p0, Lyads/km;->e:Lyads/km;

    return-object p0
.end method

.method public abstract b(Lyads/km;)Lyads/km;
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyads/wp;->h:Z

    invoke-virtual {p0}, Lyads/wp;->f()V

    return-void
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lyads/wp;->h:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lyads/wp;->g:Ljava/nio/ByteBuffer;

    sget-object v0, Lyads/mm;->a:Ljava/nio/ByteBuffer;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final d()V
    .locals 1

    invoke-virtual {p0}, Lyads/wp;->flush()V

    sget-object v0, Lyads/mm;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lyads/wp;->f:Ljava/nio/ByteBuffer;

    sget-object v0, Lyads/km;->e:Lyads/km;

    iput-object v0, p0, Lyads/wp;->d:Lyads/km;

    iput-object v0, p0, Lyads/wp;->e:Lyads/km;

    iput-object v0, p0, Lyads/wp;->b:Lyads/km;

    iput-object v0, p0, Lyads/wp;->c:Lyads/km;

    invoke-virtual {p0}, Lyads/wp;->g()V

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public final flush()V
    .locals 1

    sget-object v0, Lyads/mm;->a:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lyads/wp;->g:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lyads/wp;->h:Z

    iget-object v0, p0, Lyads/wp;->d:Lyads/km;

    iput-object v0, p0, Lyads/wp;->b:Lyads/km;

    iget-object v0, p0, Lyads/wp;->e:Lyads/km;

    iput-object v0, p0, Lyads/wp;->c:Lyads/km;

    invoke-virtual {p0}, Lyads/wp;->e()V

    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public isActive()Z
    .locals 1

    iget-object p0, p0, Lyads/wp;->e:Lyads/km;

    sget-object v0, Lyads/km;->e:Lyads/km;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
