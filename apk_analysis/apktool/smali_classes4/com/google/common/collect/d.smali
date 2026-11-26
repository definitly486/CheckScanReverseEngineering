.class public final Lcom/google/common/collect/d;
.super Lcom/google/common/collect/f$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/f<",
        "Ljava/lang/Object;",
        ">.a<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/google/common/collect/f;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/f;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/d;->f:Lcom/google/common/collect/f;

    invoke-direct {p0, p1}, Lcom/google/common/collect/f$a;-><init>(Lcom/google/common/collect/f;)V

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/collect/d;->f:Lcom/google/common/collect/f;

    iget-object p0, p0, Lcom/google/common/collect/f;->d:Lcom/google/common/collect/v;

    iget v0, p0, Lcom/google/common/collect/v;->c:I

    invoke-static {p1, v0}, Lo8;->j(II)V

    iget-object p0, p0, Lcom/google/common/collect/v;->a:[Ljava/lang/Object;

    aget-object p0, p0, p1

    return-object p0
.end method
