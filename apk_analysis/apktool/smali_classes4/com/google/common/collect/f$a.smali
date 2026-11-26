.class public abstract Lcom/google/common/collect/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public final synthetic e:Lcom/google/common/collect/f;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/f;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/f$a;->e:Lcom/google/common/collect/f;

    iget-object p1, p1, Lcom/google/common/collect/f;->d:Lcom/google/common/collect/v;

    iget v0, p1, Lcom/google/common/collect/v;->c:I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/google/common/collect/f$a;->b:I

    iput v1, p0, Lcom/google/common/collect/f$a;->c:I

    iget p1, p1, Lcom/google/common/collect/v;->d:I

    iput p1, p0, Lcom/google/common/collect/f$a;->d:I

    return-void
.end method


# virtual methods
.method public abstract a(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method public final hasNext()Z
    .locals 3

    iget-object v0, p0, Lcom/google/common/collect/f$a;->e:Lcom/google/common/collect/f;

    iget-object v0, v0, Lcom/google/common/collect/f;->d:Lcom/google/common/collect/v;

    iget v0, v0, Lcom/google/common/collect/v;->d:I

    iget v1, p0, Lcom/google/common/collect/f$a;->d:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget p0, p0, Lcom/google/common/collect/f$a;->b:I

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v2

    :cond_1
    invoke-static {}, Lln;->e()V

    return v2
.end method

.method public final next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/f$a;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/common/collect/f$a;->b:I

    invoke-virtual {p0, v0}, Lcom/google/common/collect/f$a;->a(I)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/f$a;->b:I

    iput v1, p0, Lcom/google/common/collect/f$a;->c:I

    iget-object v2, p0, Lcom/google/common/collect/f$a;->e:Lcom/google/common/collect/f;

    iget-object v2, v2, Lcom/google/common/collect/f;->d:Lcom/google/common/collect/v;

    add-int/lit8 v1, v1, 0x1

    iget v2, v2, Lcom/google/common/collect/v;->c:I

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    iput v1, p0, Lcom/google/common/collect/f$a;->b:I

    return-object v0

    :cond_1
    invoke-static {}, Lqz0;->e()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final remove()V
    .locals 8

    iget-object v0, p0, Lcom/google/common/collect/f$a;->e:Lcom/google/common/collect/f;

    iget-object v1, v0, Lcom/google/common/collect/f;->d:Lcom/google/common/collect/v;

    iget v1, v1, Lcom/google/common/collect/v;->d:I

    iget v2, p0, Lcom/google/common/collect/f$a;->d:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/google/common/collect/f$a;->c:I

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcn1;->c(Z)V

    iget-wide v4, v0, Lcom/google/common/collect/f;->e:J

    iget-object v1, v0, Lcom/google/common/collect/f;->d:Lcom/google/common/collect/v;

    iget v6, p0, Lcom/google/common/collect/f$a;->c:I

    invoke-virtual {v1, v6}, Lcom/google/common/collect/v;->g(I)I

    move-result v1

    int-to-long v6, v1

    sub-long/2addr v4, v6

    iput-wide v4, v0, Lcom/google/common/collect/f;->e:J

    iget-object v1, v0, Lcom/google/common/collect/f;->d:Lcom/google/common/collect/v;

    iget v4, p0, Lcom/google/common/collect/f$a;->b:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sub-int/2addr v4, v2

    iput v4, p0, Lcom/google/common/collect/f$a;->b:I

    iput v3, p0, Lcom/google/common/collect/f$a;->c:I

    iget-object v0, v0, Lcom/google/common/collect/f;->d:Lcom/google/common/collect/v;

    iget v0, v0, Lcom/google/common/collect/v;->d:I

    iput v0, p0, Lcom/google/common/collect/f$a;->d:I

    return-void

    :cond_1
    invoke-static {}, Lln;->e()V

    return-void
.end method
