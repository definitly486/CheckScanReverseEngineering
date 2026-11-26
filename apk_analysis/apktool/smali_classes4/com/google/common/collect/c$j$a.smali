.class public Lcom/google/common/collect/c$j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/c$j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final b:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field

.field public final synthetic d:Lcom/google/common/collect/c$j;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/c$j;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/c$j$a;->d:Lcom/google/common/collect/c$j;

    iget-object p1, p1, Lcom/google/common/collect/c$j;->c:Ljava/util/Collection;

    iput-object p1, p0, Lcom/google/common/collect/c$j$a;->c:Ljava/util/Collection;

    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/common/collect/c$j$a;->b:Ljava/util/Iterator;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/c$j;Ljava/util/ListIterator;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/c$j$a;->d:Lcom/google/common/collect/c$j;

    .line 28
    iget-object p1, p1, Lcom/google/common/collect/c$j;->c:Ljava/util/Collection;

    iput-object p1, p0, Lcom/google/common/collect/c$j$a;->c:Ljava/util/Collection;

    .line 29
    iput-object p2, p0, Lcom/google/common/collect/c$j$a;->b:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/c$j$a;->d:Lcom/google/common/collect/c$j;

    invoke-virtual {v0}, Lcom/google/common/collect/c$j;->b()V

    iget-object v0, v0, Lcom/google/common/collect/c$j;->c:Ljava/util/Collection;

    iget-object p0, p0, Lcom/google/common/collect/c$j$a;->c:Ljava/util/Collection;

    if-ne v0, p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lln;->e()V

    return-void
.end method

.method public final hasNext()Z
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/c$j$a;->a()V

    iget-object p0, p0, Lcom/google/common/collect/c$j$a;->b:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/c$j$a;->a()V

    iget-object p0, p0, Lcom/google/common/collect/c$j$a;->b:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final remove()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/c$j$a;->b:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget-object p0, p0, Lcom/google/common/collect/c$j$a;->d:Lcom/google/common/collect/c$j;

    iget-object v0, p0, Lcom/google/common/collect/c$j;->f:Lcom/google/common/collect/c;

    iget v1, v0, Lcom/google/common/collect/c;->g:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/google/common/collect/c;->g:I

    invoke-virtual {p0}, Lcom/google/common/collect/c$j;->c()V

    return-void
.end method
