.class public final Lhx1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfo5;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lfo5<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhx1;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lvi3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lvi3<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lkx1;

    iget-object p0, p0, Lhx1;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-object v0
.end method

.method public final b()La46;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La46<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lhx1;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sget-object v1, Lkx2;->b:Lkx2;

    if-nez v0, :cond_0

    move-object p0, v1

    goto/16 :goto_9

    :cond_0
    invoke-static {}, Lu96;->e()Lar4;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lex0;->c(C)Z

    move-result v3

    const-string v4, ""

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    move v5, v2

    :goto_0
    if-ge v5, v3, :cond_2

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lex0;->c(C)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {p0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    move-object v3, p0

    :goto_1
    new-instance v5, Lix1;

    invoke-direct {v5, v3}, Lix1;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    new-instance v5, Lhq5;

    invoke-direct {v5, v3}, Lhq5;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v5}, Lar4;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    move v5, v2

    :goto_2
    if-ge v5, v3, :cond_4

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lex0;->c(C)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    move-object p0, v4

    :cond_5
    :goto_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lex0;->c(C)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_4
    const/4 v5, -0x1

    if-ge v5, v3, :cond_7

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lex0;->c(C)Z

    move-result v6

    if-nez v6, :cond_6

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_6
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    :cond_7
    :goto_5
    new-instance v2, Lw86;

    invoke-direct {v2, v4}, Lw86;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lar4;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_6
    if-ge v5, v2, :cond_9

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lex0;->c(C)Z

    move-result v3

    if-nez v3, :cond_8

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_7

    :cond_8
    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    :cond_9
    :goto_7
    new-instance v2, Lix1;

    invoke-direct {v2, p0}, Lix1;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lu96;->h(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    new-instance v2, Lhq5;

    invoke-direct {v2, p0}, Lhq5;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v2}, Lar4;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_a
    new-instance v2, Lw86;

    invoke-direct {v2, p0}, Lw86;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lar4;->add(Ljava/lang/Object;)Z

    :cond_b
    :goto_8
    invoke-static {v0}, Lu96;->d(Lar4;)Lar4;

    move-result-object p0

    :goto_9
    new-instance v0, La46;

    invoke-direct {v0, p0, v1}, La46;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lhx1;

    if-eqz v0, :cond_0

    check-cast p1, Lhx1;

    iget-object p1, p1, Lhx1;->a:Ljava/lang/String;

    iget-object p0, p0, Lhx1;->a:Ljava/lang/String;

    invoke-static {p0, p1}, Laa4;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lhx1;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ConstantFormatStructure("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lhx1;->a:Ljava/lang/String;

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Lxp;->e(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
