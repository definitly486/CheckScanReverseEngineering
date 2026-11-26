.class public final Lyads/yt3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "\'"

    const-string v1, "@{"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lyads/yt3;->a:[Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    sget-object v0, Lyads/yt3;->a:[Ljava/lang/String;

    const/16 v1, 0x5c

    invoke-static {p0, v1}, Lta8;->E(Ljava/lang/CharSequence;C)Z

    move-result v2

    if-nez v2, :cond_0

    return-object p0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x0

    move v4, v3

    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_5

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v1, :cond_2

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v4, v5

    goto :goto_0

    :cond_2
    move v5, v4

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_3

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v1, :cond_3

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    sub-int/2addr v5, v4

    add-int/2addr v4, v5

    div-int/lit8 v6, v5, 0x2

    move v7, v3

    :goto_2
    if-ge v7, v6, :cond_4

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    rem-int/lit8 v5, v5, 0x2

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    invoke-static {p0, v4, v0}, Lyads/yt3;->a(Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_0

    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;I[Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 97
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq p1, v0, :cond_4

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_4

    .line 98
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p2, v2

    .line 99
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_2

    add-int v6, p1, v5

    .line 100
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v3

    .line 101
    :cond_3
    const-string p0, "Incorrect string escape"

    invoke-static {p0}, Lqg;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 102
    :cond_4
    new-instance p2, Lyads/vo2;

    const-string v0, "Error tokenizing \'"

    const-string v1, "\'."

    .line 103
    invoke-static {v0, p0, v1}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 104
    new-instance v0, Lyads/vz5;

    add-int/lit8 p1, p1, -0x1

    const-string v1, "Alone backslash at "

    .line 105
    invoke-static {p1, v1}, Ljh;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 106
    invoke-direct {v0, p1}, Lyads/vz5;-><init>(Ljava/lang/String;)V

    invoke-direct {p2, v0, p0}, Lyads/vo2;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    throw p2
.end method
