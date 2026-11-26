.class public final enum Lkx8$b;
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

    const-string v0, "RcdataLessthanSign"

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final f(Ljx8;Lea1;)V
    .locals 5

    const/16 p0, 0x2f

    invoke-virtual {p2, p0}, Lea1;->q0(C)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljx8;->e()V

    sget-object p0, Lkx8;->RCDATAEndTagOpen:Lkx8;

    invoke-virtual {p1, p0}, Ljx8;->a(Lkx8;)V

    return-void

    :cond_0
    iget-boolean p0, p2, Lea1;->j:Z

    if-eqz p0, :cond_7

    invoke-virtual {p2}, Lea1;->u0()Z

    move-result p0

    if-eqz p0, :cond_7

    iget-object p0, p1, Ljx8;->o:Ljava/lang/String;

    if-eqz p0, :cond_7

    iget-object p0, p1, Ljx8;->p:Ljava/lang/String;

    if-nez p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "</"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p1, Ljx8;->o:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Ljx8;->p:Ljava/lang/String;

    :cond_1
    iget-object v0, p2, Lea1;->m:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eqz v0, :cond_3

    iget v0, p2, Lea1;->n:I

    if-ne v0, v3, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    iget v4, p2, Lea1;->e:I

    if-lt v0, v4, :cond_3

    goto :goto_1

    :cond_3
    iput-object p0, p2, Lea1;->m:Ljava/lang/String;

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lea1;->y0(Ljava/lang/String;)I

    move-result v4

    if-le v4, v3, :cond_4

    iget p0, p2, Lea1;->e:I

    add-int/2addr p0, v4

    iput p0, p2, Lea1;->n:I

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lea1;->y0(Ljava/lang/String;)I

    move-result p0

    if-le p0, v3, :cond_5

    goto :goto_0

    :cond_5
    move v2, v1

    :goto_0
    if-eqz v2, :cond_6

    iget v0, p2, Lea1;->e:I

    add-int v3, v0, p0

    :cond_6
    iput v3, p2, Lea1;->n:I

    :goto_1
    if-nez v2, :cond_7

    invoke-virtual {p1, v1}, Ljx8;->d(Z)Lgx8$h;

    move-result-object p0

    iget-object p2, p1, Ljx8;->o:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lgx8$h;->j(Ljava/lang/String;)V

    iput-object p0, p1, Ljx8;->j:Lgx8$h;

    invoke-virtual {p1}, Ljx8;->k()V

    sget-object p0, Lkx8;->TagOpen:Lkx8;

    invoke-virtual {p1, p0}, Ljx8;->o(Lkx8;)V

    return-void

    :cond_7
    const/16 p0, 0x3c

    invoke-virtual {p1, p0}, Ljx8;->f(C)V

    sget-object p0, Lkx8;->Rcdata:Lkx8;

    invoke-virtual {p1, p0}, Ljx8;->o(Lkx8;)V

    return-void
.end method
