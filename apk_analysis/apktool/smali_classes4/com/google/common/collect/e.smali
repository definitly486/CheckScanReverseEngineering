.class public final Lcom/google/common/collect/e;
.super Lcom/google/common/collect/f$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/f<",
        "Ljava/lang/Object;",
        ">.a<",
        "Lcom/google/common/collect/t$a<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/google/common/collect/f;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/f;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/e;->f:Lcom/google/common/collect/f;

    invoke-direct {p0, p1}, Lcom/google/common/collect/f$a;-><init>(Lcom/google/common/collect/f;)V

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/google/common/collect/e;->f:Lcom/google/common/collect/f;

    iget-object p0, p0, Lcom/google/common/collect/f;->d:Lcom/google/common/collect/v;

    iget v0, p0, Lcom/google/common/collect/v;->c:I

    invoke-static {p1, v0}, Lo8;->j(II)V

    new-instance v0, Lcom/google/common/collect/v$a;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/v$a;-><init>(Lcom/google/common/collect/v;I)V

    return-object v0
.end method
