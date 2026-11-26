.class public final Ly24;
.super Ly69;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ly69<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Ly69;

.field public c:Ly69;


# direct methods
.method public constructor <init>(Lz24;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p1, Lz24;->f:Lcom/google/common/collect/l;

    invoke-virtual {p1}, Lcom/google/common/collect/l;->m()Lcom/google/common/collect/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/i;->j()Ly69;

    move-result-object p1

    iput-object p1, p0, Ly24;->b:Ly69;

    sget-object p1, Lya4$a;->e:Lya4$a;

    iput-object p1, p0, Ly24;->c:Ly69;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget-object v0, p0, Ly24;->c:Ly69;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Ly24;->b:Ly69;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Ly24;->c:Ly69;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ly24;->b:Ly69;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/i;

    invoke-virtual {v0}, Lcom/google/common/collect/i;->j()Ly69;

    move-result-object v0

    iput-object v0, p0, Ly24;->c:Ly69;

    :cond_0
    iget-object p0, p0, Ly24;->c:Ly69;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
