.class public final Lcom/google/common/collect/m$b;
.super Lcom/google/common/collect/i$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/i$b<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public a:Lcom/google/common/collect/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/v<",
            "TE;>;"
        }
    .end annotation
.end field

.field public b:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lcom/google/common/collect/i$b;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/collect/m$b;->b:Z

    new-instance v0, Lcom/google/common/collect/v;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/common/collect/v;->e(I)V

    iput-object v0, p0, Lcom/google/common/collect/m$b;->a:Lcom/google/common/collect/v;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/common/collect/i$b;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/google/common/collect/m$b;->c(ILjava/lang/Object;)V

    return-object p0
.end method

.method public final c(ILjava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lcom/google/common/collect/m$b;->a:Lcom/google/common/collect/v;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/google/common/collect/m$b;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/google/common/collect/v;

    iget-object v2, p0, Lcom/google/common/collect/m$b;->a:Lcom/google/common/collect/v;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget v3, v2, Lcom/google/common/collect/v;->c:I

    invoke-virtual {v0, v3}, Lcom/google/common/collect/v;->e(I)V

    iget v3, v2, Lcom/google/common/collect/v;->c:I

    const/4 v4, -0x1

    if-nez v3, :cond_2

    :cond_1
    move v3, v4

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_0
    if-eq v3, v4, :cond_3

    iget v5, v2, Lcom/google/common/collect/v;->c:I

    invoke-static {v3, v5}, Lo8;->j(II)V

    iget-object v5, v2, Lcom/google/common/collect/v;->a:[Ljava/lang/Object;

    aget-object v5, v5, v3

    invoke-virtual {v2, v3}, Lcom/google/common/collect/v;->c(I)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Lcom/google/common/collect/v;->f(Ljava/lang/Object;I)V

    add-int/lit8 v3, v3, 0x1

    iget v5, v2, Lcom/google/common/collect/v;->c:I

    if-ge v3, v5, :cond_1

    goto :goto_0

    :cond_3
    iput-object v0, p0, Lcom/google/common/collect/m$b;->a:Lcom/google/common/collect/v;

    :cond_4
    iput-boolean v1, p0, Lcom/google/common/collect/m$b;->b:Z

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/google/common/collect/m$b;->a:Lcom/google/common/collect/v;

    invoke-virtual {p0, p2}, Lcom/google/common/collect/v;->b(Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, p2, v0}, Lcom/google/common/collect/v;->f(Ljava/lang/Object;I)V

    return-void
.end method

.method public final d()Lcom/google/common/collect/y;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/m$b;->a:Lcom/google/common/collect/v;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/collect/m$b;->a:Lcom/google/common/collect/v;

    iget v0, v0, Lcom/google/common/collect/v;->c:I

    if-nez v0, :cond_0

    sget p0, Lcom/google/common/collect/m;->e:I

    sget-object p0, Lcom/google/common/collect/y;->i:Lcom/google/common/collect/y;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/collect/m$b;->b:Z

    new-instance v0, Lcom/google/common/collect/y;

    iget-object p0, p0, Lcom/google/common/collect/m$b;->a:Lcom/google/common/collect/v;

    invoke-direct {v0, p0}, Lcom/google/common/collect/y;-><init>(Lcom/google/common/collect/v;)V

    return-object v0
.end method
