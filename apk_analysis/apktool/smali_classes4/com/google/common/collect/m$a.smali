.class public final Lcom/google/common/collect/m$a;
.super Ly69;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/m;->j()Ly69;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ly69<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public b:I

.field public c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field public final synthetic d:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Ly69;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/m$a;->d:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget v0, p0, Lcom/google/common/collect/m$a;->b:I

    if-gtz v0, :cond_1

    iget-object p0, p0, Lcom/google/common/collect/m$a;->d:Ljava/util/Iterator;

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
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget v0, p0, Lcom/google/common/collect/m$a;->b:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/m$a;->d:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/t$a;

    invoke-interface {v0}, Lcom/google/common/collect/t$a;->a()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/collect/m$a;->c:Ljava/lang/Object;

    invoke-interface {v0}, Lcom/google/common/collect/t$a;->getCount()I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/m$a;->b:I

    :cond_0
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/m$a;->b:I

    iget-object p0, p0, Lcom/google/common/collect/m$a;->c:Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
