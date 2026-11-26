.class public abstract Lyads/k20;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;)I
    .locals 12

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_5

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x23

    const-string v3, "Unknown color "

    if-ne v0, v2, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x6

    const/16 v4, 0x8

    const/4 v5, 0x7

    const/4 v6, 0x5

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x4

    const/4 v10, 0x1

    if-eq v0, v9, :cond_3

    if-eq v0, v6, :cond_2

    if-eq v0, v5, :cond_1

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    invoke-virtual {p0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-virtual {p0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "ff"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result p0

    new-array v4, v4, [C

    aput-char v0, v4, v1

    aput-char v0, v4, v10

    aput-char v3, v4, v8

    aput-char v3, v4, v7

    aput-char v11, v4, v9

    aput-char v11, v4, v6

    aput-char p0, v4, v2

    aput-char p0, v4, v5

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v4}, Ljava/lang/String;-><init>([C)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result p0

    new-array v4, v4, [C

    const/16 v11, 0x66

    aput-char v11, v4, v1

    aput-char v11, v4, v10

    aput-char v0, v4, v8

    aput-char v0, v4, v7

    aput-char v3, v4, v9

    aput-char v3, v4, v6

    aput-char p0, v4, v2

    aput-char p0, v4, v5

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v4}, Ljava/lang/String;-><init>([C)V

    :goto_0
    const/16 v0, 0x10

    invoke-static {v0}, Lga1;->b(I)V

    invoke-static {p0, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    long-to-int p0, v0

    invoke-static {p0}, Lyads/l20;->b(I)I

    move-result p0

    return p0

    :cond_4
    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc9;->f(Ljava/lang/Object;)V

    return v1

    :cond_5
    const-string p0, "Expected color string, actual string is empty"

    invoke-static {p0}, Lfg;->c(Ljava/lang/String;)V

    return v1
.end method
