.class public final enum Lkx8$m1;
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

    const-string v0, "CdataSection"

    const/16 v1, 0x44

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final f(Ljx8;Lea1;)V
    .locals 5

    const-string p0, "]]>"

    invoke-virtual {p2, p0}, Lea1;->y0(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p2, Lea1;->d:[C

    iget-object v2, p2, Lea1;->b:[Ljava/lang/String;

    iget v3, p2, Lea1;->e:I

    invoke-static {v1, v2, v3, v0}, Lea1;->o([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iget v2, p2, Lea1;->e:I

    add-int/2addr v2, v0

    iput v2, p2, Lea1;->e:I

    goto :goto_0

    :cond_0
    iget v0, p2, Lea1;->f:I

    iget v1, p2, Lea1;->e:I

    sub-int v2, v0, v1

    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    invoke-virtual {p2}, Lea1;->V()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x2

    iget-object v2, p2, Lea1;->d:[C

    iget-object v3, p2, Lea1;->b:[Ljava/lang/String;

    sub-int v4, v0, v1

    invoke-static {v2, v3, v1, v4}, Lea1;->o([C[Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    iput v0, p2, Lea1;->e:I

    :goto_0
    iget-object v0, p1, Ljx8;->f:Lm54;

    invoke-virtual {v0, v1}, Lm54;->b(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lea1;->k0(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {p2}, Lea1;->Z()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    :goto_1
    new-instance p0, Lgx8$a;

    iget-object p2, p1, Ljx8;->f:Lm54;

    invoke-virtual {p2}, Lm54;->e()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0}, Lgx8$b;-><init>()V

    iget-object v0, p0, Lgx8$b;->d:Lm54;

    invoke-virtual {v0}, Lm54;->d()V

    iput-object p2, v0, Lm54;->b:Ljava/lang/Object;

    invoke-virtual {p1, p0}, Ljx8;->g(Lgx8;)V

    sget-object p0, Lkx8;->Data:Lkx8;

    invoke-virtual {p1, p0}, Ljx8;->o(Lkx8;)V

    return-void
.end method
