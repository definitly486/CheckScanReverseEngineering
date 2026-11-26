.class public final Lcom/google/common/collect/j$a;
.super Lcom/google/common/collect/i$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/i$a<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/common/collect/i$a;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/common/collect/i$b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/i$a;->c(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final g()Lcom/google/common/collect/w;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/collect/i$a;->c:Z

    iget-object v0, p0, Lcom/google/common/collect/i$a;->a:[Ljava/lang/Object;

    iget p0, p0, Lcom/google/common/collect/i$a;->b:I

    invoke-static {p0, v0}, Lcom/google/common/collect/j;->k(I[Ljava/lang/Object;)Lcom/google/common/collect/w;

    move-result-object p0

    return-object p0
.end method
