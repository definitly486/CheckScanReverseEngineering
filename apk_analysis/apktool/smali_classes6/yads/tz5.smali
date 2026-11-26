.class public final Lyads/tz5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[C

.field public b:I

.field public final c:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>([C)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/tz5;->a:[C

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lyads/tz5;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public static a(Lyads/tz5;)V
    .locals 1

    .line 15
    iget v0, p0, Lyads/tz5;->b:I

    add-int/lit8 v0, v0, 0x1

    .line 16
    iput v0, p0, Lyads/tz5;->b:I

    return-void
.end method

.method public static b(Lyads/tz5;)C
    .locals 2

    iget v0, p0, Lyads/tz5;->b:I

    add-int/lit8 v0, v0, 0x1

    iget-object p0, p0, Lyads/tz5;->a:[C

    array-length v1, p0

    if-lt v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    aget-char p0, p0, v0

    return p0
.end method

.method public static c(Lyads/tz5;)C
    .locals 1

    iget v0, p0, Lyads/tz5;->b:I

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    iget-object p0, p0, Lyads/tz5;->a:[C

    aget-char p0, p0, v0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a()C
    .locals 2

    iget v0, p0, Lyads/tz5;->b:I

    iget-object p0, p0, Lyads/tz5;->a:[C

    array-length v1, p0

    if-lt v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    aget-char p0, p0, v0

    return p0
.end method

.method public final a(I)C
    .locals 1

    if-ltz p1, :cond_0

    .line 12
    iget-object p0, p0, Lyads/tz5;->a:[C

    array-length v0, p0

    if-ge p1, v0, :cond_0

    .line 13
    aget-char p0, p0, p1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final a(II)Ljava/lang/String;
    .locals 0

    .line 14
    iget-object p0, p0, Lyads/tz5;->a:[C

    invoke-static {p0, p1, p2}, Lra8;->r([CII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final b()V
    .locals 1

    .line 14
    iget v0, p0, Lyads/tz5;->b:I

    add-int/lit8 v0, v0, 0x2

    .line 15
    iput v0, p0, Lyads/tz5;->b:I

    return-void
.end method

.method public final c()I
    .locals 0

    .line 13
    iget p0, p0, Lyads/tz5;->b:I

    return p0
.end method

.method public final d()Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lyads/tz5;->c:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-class v1, Lyads/tz5;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lyads/tz5;

    iget-object p0, p0, Lyads/tz5;->a:[C

    iget-object p1, p1, Lyads/tz5;->a:[C

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([C[C)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lyads/tz5;->a:[C

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([C)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lyads/tz5;->a:[C

    invoke-static {p0}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object p0

    const-string v0, "TokenizationState(source="

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
