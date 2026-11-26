.class public abstract Lr0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lre4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;",
        "Lre4;"
    }
.end annotation


# instance fields
.field private nextValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private state:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final tryToComputeNext()Z
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lr0;->state:I

    invoke-virtual {p0}, Lr0;->computeNext()V

    iget p0, p0, Lr0;->state:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public abstract computeNext()V
.end method

.method public final done()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lr0;->state:I

    return-void
.end method

.method public hasNext()Z
    .locals 1

    iget v0, p0, Lr0;->state:I

    if-eqz v0, :cond_2

    const/4 p0, 0x1

    if-eq v0, p0, :cond_1

    const/4 p0, 0x2

    if-ne v0, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string p0, "hasNext called when the iterator is in the FAILED state."

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_1
    return p0

    :cond_2
    invoke-direct {p0}, Lr0;->tryToComputeNext()Z

    move-result p0

    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget v0, p0, Lr0;->state:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iput v2, p0, Lr0;->state:I

    iget-object p0, p0, Lr0;->nextValue:Ljava/lang/Object;

    return-object p0

    :cond_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    invoke-direct {p0}, Lr0;->tryToComputeNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iput v2, p0, Lr0;->state:I

    iget-object p0, p0, Lr0;->nextValue:Ljava/lang/Object;

    return-object p0

    :cond_1
    invoke-static {}, Lqz0;->e()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public remove()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lr0;->nextValue:Ljava/lang/Object;

    const/4 p1, 0x1

    iput p1, p0, Lr0;->state:I

    return-void
.end method
