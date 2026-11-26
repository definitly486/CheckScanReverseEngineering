.class public final Lcom/google/common/collect/h$b;
.super Lcom/google/common/collect/u$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/u$c<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/common/collect/h;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/h;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/h$b;->b:Lcom/google/common/collect/h;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/t$a<",
            "TE;>;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/collect/h$b;->b:Lcom/google/common/collect/h;

    check-cast p0, Lcom/google/common/collect/f;

    new-instance v0, Lcom/google/common/collect/e;

    invoke-direct {v0, p0}, Lcom/google/common/collect/e;-><init>(Lcom/google/common/collect/f;)V

    return-object v0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/h$b;->b:Lcom/google/common/collect/h;

    check-cast p0, Lcom/google/common/collect/f;

    iget-object p0, p0, Lcom/google/common/collect/f;->d:Lcom/google/common/collect/v;

    iget p0, p0, Lcom/google/common/collect/v;->c:I

    return p0
.end method
