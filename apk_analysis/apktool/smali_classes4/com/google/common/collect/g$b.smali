.class public final Lcom/google/common/collect/g$b;
.super Ljava/util/AbstractCollection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/common/collect/c;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/c;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/g$b;->b:Lcom/google/common/collect/c;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/g$b;->b:Lcom/google/common/collect/c;

    invoke-virtual {p0}, Lcom/google/common/collect/c;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/g$b;->b:Lcom/google/common/collect/c;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/g;->d(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/b;

    iget-object p0, p0, Lcom/google/common/collect/g$b;->b:Lcom/google/common/collect/c;

    invoke-direct {v0, p0}, Lcom/google/common/collect/c$c;-><init>(Lcom/google/common/collect/c;)V

    return-object v0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/g$b;->b:Lcom/google/common/collect/c;

    iget p0, p0, Lcom/google/common/collect/c;->g:I

    return p0
.end method
