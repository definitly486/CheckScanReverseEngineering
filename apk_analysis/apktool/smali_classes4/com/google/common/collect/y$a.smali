.class public final Lcom/google/common/collect/y$a;
.super Li44;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li44<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/google/common/collect/y;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/y;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/collect/y$a;->e:Lcom/google/common/collect/y;

    invoke-direct {p0}, Lcom/google/common/collect/n;-><init>()V

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/y$a;->e:Lcom/google/common/collect/y;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/m;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/collect/y$a;->e:Lcom/google/common/collect/y;

    iget-object p0, p0, Lcom/google/common/collect/y;->f:Lcom/google/common/collect/v;

    iget v0, p0, Lcom/google/common/collect/v;->c:I

    invoke-static {p1, v0}, Lo8;->j(II)V

    iget-object p0, p0, Lcom/google/common/collect/v;->a:[Ljava/lang/Object;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final i()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/y$a;->e:Lcom/google/common/collect/y;

    iget-object p0, p0, Lcom/google/common/collect/y;->f:Lcom/google/common/collect/v;

    iget p0, p0, Lcom/google/common/collect/v;->c:I

    return p0
.end method

.method public writeReplace()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, Li44;->writeReplace()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
