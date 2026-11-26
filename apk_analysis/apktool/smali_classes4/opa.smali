.class public final Lopa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public b:I

.field public final synthetic c:Lppa;


# direct methods
.method public constructor <init>(Lppa;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lopa;->c:Lppa;

    const/4 p1, 0x0

    iput p1, p0, Lopa;->b:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lopa;->b:I

    iget-object p0, p0, Lopa;->c:Lppa;

    invoke-virtual {p0}, Lppa;->b()I

    move-result v1

    invoke-virtual {p0}, Lppa;->a()I

    move-result p0

    sub-int/2addr v1, p0

    if-ge v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lopa;->b:I

    iget-object v1, p0, Lopa;->c:Lppa;

    invoke-virtual {v1}, Lppa;->b()I

    move-result v2

    invoke-virtual {v1}, Lppa;->a()I

    move-result v3

    sub-int/2addr v2, v3

    if-ge v0, v2, :cond_0

    iget-object v2, v1, Lppa;->c:Lqpa;

    invoke-virtual {v1}, Lppa;->a()I

    move-result v1

    add-int/2addr v1, v0

    add-int/lit8 v0, v0, 0x1

    iget-object v2, v2, Lqpa;->b:[Ljava/lang/Object;

    aget-object v1, v2, v1

    iput v0, p0, Lopa;->b:I

    return-object v1

    :cond_0
    invoke-static {}, Lqz0;->e()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final remove()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
