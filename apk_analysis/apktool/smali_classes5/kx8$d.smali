.class public final enum Lkx8$d;
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

    const-string v0, "RCDATAEndTagName"

    const/16 v1, 0xc

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static i(Ljx8;Lea1;)V
    .locals 1

    const-string v0, "</"

    invoke-virtual {p0, v0}, Ljx8;->h(Ljava/lang/String;)V

    iget-object v0, p0, Ljx8;->f:Lm54;

    invoke-virtual {v0}, Lm54;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljx8;->h(Ljava/lang/String;)V

    invoke-virtual {p1}, Lea1;->C0()V

    sget-object p1, Lkx8;->Rcdata:Lkx8;

    invoke-virtual {p0, p1}, Ljx8;->o(Lkx8;)V

    return-void
.end method


# virtual methods
.method public final f(Ljx8;Lea1;)V
    .locals 1

    invoke-virtual {p2}, Lea1;->u0()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcc;

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcc;-><init>(I)V

    invoke-virtual {p2, p0}, Lea1;->E(Lea1$a;)Ljava/lang/String;

    move-result-object p0

    iget-object p2, p1, Ljx8;->j:Lgx8$h;

    invoke-virtual {p2, p0}, Lgx8$h;->i(Ljava/lang/String;)V

    iget-object p1, p1, Ljx8;->f:Lm54;

    invoke-virtual {p1, p0}, Lm54;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Lea1;->p()C

    move-result p0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_5

    const/16 v0, 0xa

    if-eq p0, v0, :cond_5

    const/16 v0, 0xc

    if-eq p0, v0, :cond_5

    const/16 v0, 0xd

    if-eq p0, v0, :cond_5

    const/16 v0, 0x20

    if-eq p0, v0, :cond_5

    const/16 v0, 0x2f

    if-eq p0, v0, :cond_3

    const/16 v0, 0x3e

    if-eq p0, v0, :cond_1

    invoke-static {p1, p2}, Lkx8$d;->i(Ljx8;Lea1;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Ljx8;->n()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Ljx8;->k()V

    sget-object p0, Lkx8;->Data:Lkx8;

    invoke-virtual {p1, p0}, Ljx8;->o(Lkx8;)V

    return-void

    :cond_2
    invoke-static {p1, p2}, Lkx8$d;->i(Ljx8;Lea1;)V

    return-void

    :cond_3
    invoke-virtual {p1}, Ljx8;->n()Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lkx8;->SelfClosingStartTag:Lkx8;

    invoke-virtual {p1, p0}, Ljx8;->o(Lkx8;)V

    return-void

    :cond_4
    invoke-static {p1, p2}, Lkx8$d;->i(Ljx8;Lea1;)V

    return-void

    :cond_5
    invoke-virtual {p1}, Ljx8;->n()Z

    move-result p0

    if-eqz p0, :cond_6

    sget-object p0, Lkx8;->BeforeAttributeName:Lkx8;

    invoke-virtual {p1, p0}, Ljx8;->o(Lkx8;)V

    return-void

    :cond_6
    invoke-static {p1, p2}, Lkx8$d;->i(Ljx8;Lea1;)V

    return-void
.end method
