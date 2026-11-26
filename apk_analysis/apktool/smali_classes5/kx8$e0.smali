.class public final enum Lkx8$e0;
.super Lkx8;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkx8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "AttributeValue_doubleQuoted"

    const/16 v1, 0x25

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final f(Ljx8;Lea1;)V
    .locals 7

    invoke-virtual {p2}, Lea1;->z0()I

    invoke-virtual {p2}, Lea1;->n()V

    iget v0, p2, Lea1;->e:I

    iget v1, p2, Lea1;->f:I

    iget-object v2, p2, Lea1;->d:[C

    move v3, v0

    :goto_0
    const/16 v4, 0x26

    const/16 v5, 0x22

    if-ge v3, v1, :cond_0

    aget-char v6, v2, v3

    if-eqz v6, :cond_0

    if-eq v6, v4, :cond_0

    if-eq v6, v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput v3, p2, Lea1;->e:I

    if-le v3, v0, :cond_1

    iget-object v1, p2, Lea1;->d:[C

    iget-object v2, p2, Lea1;->b:[Ljava/lang/String;

    sub-int/2addr v3, v0

    invoke-static {v1, v2, v0, v3}, Lea1;->o([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, ""

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_2

    iget-object v1, p1, Ljx8;->j:Lgx8$h;

    iget-object v1, v1, Lgx8$h;->i:Lm54;

    invoke-virtual {v1, v0}, Lm54;->b(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    iget-object v0, p1, Ljx8;->j:Lgx8$h;

    iput-boolean v2, v0, Lgx8$h;->j:Z

    :goto_2
    invoke-virtual {p2}, Lea1;->z0()I

    move-result v0

    invoke-virtual {p2}, Lea1;->p()C

    move-result v1

    if-eqz v1, :cond_7

    if-eq v1, v5, :cond_6

    if-eq v1, v4, :cond_4

    const v2, 0xffff

    if-eq v1, v2, :cond_3

    iget-object p0, p1, Ljx8;->j:Lgx8$h;

    invoke-virtual {p2}, Lea1;->z0()I

    move-result p1

    invoke-virtual {p0, v0, p1, v1}, Lgx8$h;->g(IIC)V

    return-void

    :cond_3
    invoke-virtual {p1, p0}, Ljx8;->l(Lkx8;)V

    sget-object p0, Lkx8;->Data:Lkx8;

    invoke-virtual {p1, p0}, Ljx8;->o(Lkx8;)V

    return-void

    :cond_4
    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    invoke-virtual {p1, p0, v2}, Ljx8;->c(Ljava/lang/Character;Z)[I

    move-result-object p0

    iget-object p1, p1, Ljx8;->j:Lgx8$h;

    if-eqz p0, :cond_5

    invoke-virtual {p2}, Lea1;->z0()I

    move-result p2

    invoke-virtual {p1, p0, v0, p2}, Lgx8$h;->h([III)V

    return-void

    :cond_5
    invoke-virtual {p2}, Lea1;->z0()I

    move-result p0

    invoke-virtual {p1, v0, p0, v4}, Lgx8$h;->g(IIC)V

    return-void

    :cond_6
    sget-object p0, Lkx8;->AfterAttributeValue_quoted:Lkx8;

    invoke-virtual {p1, p0}, Ljx8;->o(Lkx8;)V

    return-void

    :cond_7
    invoke-virtual {p1, p0}, Ljx8;->m(Lkx8;)V

    iget-object p0, p1, Ljx8;->j:Lgx8$h;

    const p1, 0xfffd

    invoke-virtual {p2}, Lea1;->z0()I

    move-result p2

    invoke-virtual {p0, v0, p2, p1}, Lgx8$h;->g(IIC)V

    return-void
.end method
