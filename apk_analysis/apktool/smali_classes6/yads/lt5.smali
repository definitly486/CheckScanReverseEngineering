.class public final Lyads/lt5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/mt5;


# instance fields
.field public final b:[Lyads/sb0;

.field public final c:[J


# direct methods
.method public constructor <init>([Lyads/sb0;[J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/lt5;->b:[Lyads/sb0;

    iput-object p2, p0, Lyads/lt5;->c:[J

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    .line 20
    iget-object p0, p0, Lyads/lt5;->c:[J

    array-length p0, p0

    return p0
.end method

.method public final a(J)I
    .locals 2

    .line 21
    iget-object v0, p0, Lyads/lt5;->c:[J

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lyads/u56;->a([JJZ)I

    move-result p1

    .line 22
    iget-object p0, p0, Lyads/lt5;->c:[J

    array-length p0, p0

    if-ge p1, p0, :cond_0

    return p1

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public final a(I)J
    .locals 3

    const-wide/16 v0, 0x0

    if-ltz p1, :cond_1

    iget-object p0, p0, Lyads/lt5;->c:[J

    array-length v2, p0

    if-ge p1, v2, :cond_0

    aget-wide v0, p0, p1

    return-wide v0

    :cond_0
    invoke-static {}, Lmi2;->b()V

    return-wide v0

    :cond_1
    invoke-static {}, Lmi2;->b()V

    return-wide v0
.end method

.method public final b(J)Ljava/util/List;
    .locals 2

    iget-object v0, p0, Lyads/lt5;->c:[J

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lyads/u56;->b([JJZ)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    iget-object p0, p0, Lyads/lt5;->b:[Lyads/sb0;

    aget-object p0, p0, p1

    sget-object p1, Lyads/sb0;->s:Lyads/sb0;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method
