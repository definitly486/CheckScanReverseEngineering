.class public abstract Lyads/nr5;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lyads/ir5;Ljava/lang/String;Ljava/lang/String;)Lyads/kr5;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v4, 0x3

    if-eq v0, v4, :cond_2

    const/4 v4, 0x4

    if-eq v0, v4, :cond_1

    const/4 v4, 0x5

    if-ne v0, v4, :cond_0

    new-instance p0, Lyads/jr5;

    :try_start_0
    invoke-static {p2}, Lyads/p46;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0, p1, p2}, Lyads/jr5;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lyads/lr5;

    invoke-direct {p1, v1, p0, v2}, Lyads/lr5;-><init>(Ljava/lang/String;Ljava/lang/IllegalArgumentException;I)V

    throw p1

    :cond_0
    new-instance p1, Lyads/lr5;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Cannot create stored value of type = \'"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\'."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0, v1, v3}, Lyads/lr5;-><init>(Ljava/lang/String;Ljava/lang/IllegalArgumentException;I)V

    throw p1

    :cond_1
    new-instance p0, Lyads/cr5;

    invoke-static {p2}, Lyads/nr5;->b(Ljava/lang/String;)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lyads/cr5;-><init>(Ljava/lang/String;I)V

    return-object p0

    :cond_2
    new-instance p0, Lyads/er5;

    :try_start_1
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-direct {p0, p1, v0, v1}, Lyads/er5;-><init>(Ljava/lang/String;D)V

    return-object p0

    :catch_1
    move-exception p0

    new-instance p1, Lyads/lr5;

    invoke-direct {p1, v1, p0, v2}, Lyads/lr5;-><init>(Ljava/lang/String;Ljava/lang/IllegalArgumentException;I)V

    throw p1

    :cond_3
    new-instance p0, Lyads/br5;

    invoke-static {p2}, Lyads/nr5;->a(Ljava/lang/String;)Z

    move-result p2

    invoke-direct {p0, p1, p2}, Lyads/br5;-><init>(Ljava/lang/String;Z)V

    return-object p0

    :cond_4
    new-instance p0, Lyads/fr5;

    :try_start_2
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    invoke-direct {p0, p1, v0, v1}, Lyads/fr5;-><init>(Ljava/lang/String;J)V

    return-object p0

    :catch_2
    move-exception p0

    new-instance p1, Lyads/lr5;

    invoke-direct {p1, v1, p0, v2}, Lyads/lr5;-><init>(Ljava/lang/String;Ljava/lang/IllegalArgumentException;I)V

    throw p1

    :cond_5
    new-instance p0, Lyads/gr5;

    invoke-direct {p0, p1, p2}, Lyads/gr5;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 4

    .line 124
    invoke-static {p0}, Lta8;->e0(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 125
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    invoke-static {v1}, Lyads/d70;->a(I)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v0, v1

    .line 127
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 128
    :cond_1
    new-instance v1, Lyads/lr5;

    const-string v2, "Unable to convert "

    const-string v3, " to boolean"

    .line 129
    invoke-static {v2, p0, v3}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x2

    .line 130
    invoke-direct {v1, p0, v0, v2}, Lyads/lr5;-><init>(Ljava/lang/String;Ljava/lang/IllegalArgumentException;I)V

    throw v1

    :catch_0
    move-exception p0

    .line 131
    new-instance v1, Lyads/lr5;

    const/4 v2, 0x1

    invoke-direct {v1, v0, p0, v2}, Lyads/lr5;-><init>(Ljava/lang/String;Ljava/lang/IllegalArgumentException;I)V

    throw v1
.end method

.method public static b(Ljava/lang/String;)I
    .locals 3

    sget-object v0, Lyads/bt4;->a:Lnl3;

    invoke-interface {v0, p0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lyads/l20;->b(I)I

    move-result p0

    return p0

    :cond_0
    new-instance v0, Lyads/lr5;

    const-string v1, "Wrong value format for color stored value: \'"

    const-string v2, "\'"

    invoke-static {v1, p0, v2}, Lme0;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2}, Lyads/lr5;-><init>(Ljava/lang/String;Ljava/lang/IllegalArgumentException;I)V

    throw v0
.end method
