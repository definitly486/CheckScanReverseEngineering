.class public final Lppa;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# instance fields
.field public final b:I

.field public final synthetic c:Lqpa;


# direct methods
.method public constructor <init>(Lqpa;I)V
    .locals 0

    iput-object p1, p0, Lppa;->c:Lqpa;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    iput p2, p0, Lppa;->b:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    const/4 v0, -0x1

    iget v1, p0, Lppa;->b:I

    if-ne v1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lppa;->c:Lqpa;

    iget-object p0, p0, Lqpa;->c:[I

    aget p0, p0, v1

    return p0
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lppa;->c:Lqpa;

    iget-object v0, v0, Lqpa;->c:[I

    iget p0, p0, Lppa;->b:I

    add-int/lit8 p0, p0, 0x1

    aget p0, v0, p0

    return p0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 4

    invoke-virtual {p0}, Lppa;->a()I

    move-result v0

    invoke-virtual {p0}, Lppa;->b()I

    move-result v1

    const/4 v2, -0x1

    iget v3, p0, Lppa;->b:I

    if-ne v3, v2, :cond_0

    sget-object v2, Lqpa;->g:Lhpa;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/google/android/gms/internal/measurement/zzabe;->b:Lfpa;

    :goto_0
    iget-object p0, p0, Lppa;->c:Lqpa;

    iget-object p0, p0, Lqpa;->b:[Ljava/lang/Object;

    invoke-static {p0, v0, v1, p1, v2}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result p0

    if-ltz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lopa;

    invoke-direct {v0, p0}, Lopa;-><init>(Lppa;)V

    return-object v0
.end method

.method public final size()I
    .locals 1

    invoke-virtual {p0}, Lppa;->b()I

    move-result v0

    invoke-virtual {p0}, Lppa;->a()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method
