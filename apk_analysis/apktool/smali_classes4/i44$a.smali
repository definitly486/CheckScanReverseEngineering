.class public final Li44$a;
.super Lcom/google/common/collect/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li44;->p()Lcom/google/common/collect/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/j<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final synthetic d:Li44;


# direct methods
.method public constructor <init>(Li44;)V
    .locals 0

    iput-object p1, p0, Li44$a;->d:Li44;

    invoke-direct {p0}, Lcom/google/common/collect/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object p0, p0, Li44$a;->d:Li44;

    invoke-virtual {p0, p1}, Li44;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final i()Z
    .locals 0

    iget-object p0, p0, Li44$a;->d:Li44;

    invoke-virtual {p0}, Lcom/google/common/collect/i;->i()Z

    move-result p0

    return p0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Li44$a;->d:Li44;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result p0

    return p0
.end method

.method public writeReplace()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, Lcom/google/common/collect/j;->writeReplace()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
