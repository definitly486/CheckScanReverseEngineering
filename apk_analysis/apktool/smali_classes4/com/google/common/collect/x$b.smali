.class public final Lcom/google/common/collect/x$b;
.super Lcom/google/common/collect/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/n<",
        "TK;>;"
    }
.end annotation


# instance fields
.field public final transient e:Lcom/google/common/collect/x;

.field public final transient f:Lcom/google/common/collect/x$c;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/x;Lcom/google/common/collect/x$c;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/n;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/x$b;->e:Lcom/google/common/collect/x;

    iput-object p2, p0, Lcom/google/common/collect/x$b;->f:Lcom/google/common/collect/x$c;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/common/collect/j;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/j<",
            "TK;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/collect/x$b;->f:Lcom/google/common/collect/x$c;

    return-object p0
.end method

.method public final b(I[Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/x$b;->f:Lcom/google/common/collect/x$c;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/j;->b(I[Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/x$b;->e:Lcom/google/common/collect/x;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/x;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final i()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/x$b;->j()Ly69;

    move-result-object p0

    return-object p0
.end method

.method public final j()Ly69;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ly69<",
            "TK;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/common/collect/x$b;->f:Lcom/google/common/collect/x$c;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/j;->q(I)Lcom/google/common/collect/j$b;

    move-result-object p0

    return-object p0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/x$b;->e:Lcom/google/common/collect/x;

    iget p0, p0, Lcom/google/common/collect/x;->g:I

    return p0
.end method

.method public writeReplace()Ljava/lang/Object;
    .locals 0

    invoke-super {p0}, Lcom/google/common/collect/n;->writeReplace()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
