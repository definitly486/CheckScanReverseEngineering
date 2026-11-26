.class public final Lpp7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lre4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/String;",
        ">;",
        "Lre4;"
    }
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lf03;


# direct methods
.method public constructor <init>(Lf03;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpp7;->c:Lf03;

    iget p1, p1, Ls96;->c:I

    iput p1, p0, Lpp7;->b:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 0

    iget p0, p0, Lpp7;->b:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lpp7;->c:Lf03;

    iget v1, v0, Ls96;->c:I

    iget v2, p0, Lpp7;->b:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lpp7;->b:I

    sub-int/2addr v1, v2

    iget-object p0, v0, Ls96;->e:[Ljava/lang/String;

    aget-object p0, p0, v1

    return-object p0
.end method

.method public final remove()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
