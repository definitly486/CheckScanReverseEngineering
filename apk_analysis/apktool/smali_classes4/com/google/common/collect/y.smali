.class public final Lcom/google/common/collect/y;
.super Lcom/google/common/collect/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/y$a;,
        Lcom/google/common/collect/y$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/m<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final i:Lcom/google/common/collect/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/y<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final transient f:Lcom/google/common/collect/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/v<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final transient g:I

.field public transient h:Lcom/google/common/collect/y$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/common/collect/y;

    new-instance v1, Lcom/google/common/collect/v;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/google/common/collect/v;->e(I)V

    invoke-direct {v0, v1}, Lcom/google/common/collect/y;-><init>(Lcom/google/common/collect/v;)V

    sput-object v0, Lcom/google/common/collect/y;->i:Lcom/google/common/collect/y;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/collect/v;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/v<",
            "TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/collect/i;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/y;->f:Lcom/google/common/collect/v;

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v3, p1, Lcom/google/common/collect/v;->c:I

    if-ge v2, v3, :cond_0

    invoke-virtual {p1, v2}, Lcom/google/common/collect/v;->c(I)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Lfa4;->Y(J)I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/y;->g:I

    return-void
.end method


# virtual methods
.method public final count(Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/y;->f:Lcom/google/common/collect/v;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/v;->b(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final bridge synthetic elementSet()Ljava/util/Set;
    .locals 0

    invoke-virtual {p0}, Lcom/google/common/collect/y;->k()Lcom/google/common/collect/n;

    move-result-object p0

    return-object p0
.end method

.method public final i()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final k()Lcom/google/common/collect/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/n<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/y;->h:Lcom/google/common/collect/y$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/common/collect/y$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/y$a;-><init>(Lcom/google/common/collect/y;)V

    iput-object v0, p0, Lcom/google/common/collect/y;->h:Lcom/google/common/collect/y$a;

    :cond_0
    return-object v0
.end method

.method public final n(I)Lcom/google/common/collect/v$a;
    .locals 1

    iget-object p0, p0, Lcom/google/common/collect/y;->f:Lcom/google/common/collect/v;

    iget v0, p0, Lcom/google/common/collect/v;->c:I

    invoke-static {p1, v0}, Lo8;->j(II)V

    new-instance v0, Lcom/google/common/collect/v$a;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/v$a;-><init>(Lcom/google/common/collect/v;I)V

    return-object v0
.end method

.method public final size()I
    .locals 0

    iget p0, p0, Lcom/google/common/collect/y;->g:I

    return p0
.end method

.method public writeReplace()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/google/common/collect/y$b;

    invoke-direct {v0, p0}, Lcom/google/common/collect/y$b;-><init>(Lcom/google/common/collect/y;)V

    return-object v0
.end method
