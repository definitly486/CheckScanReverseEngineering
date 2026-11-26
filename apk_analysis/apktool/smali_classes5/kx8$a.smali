.class public final enum Lkx8$a;
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

    const-string v0, "TagName"

    const/16 v1, 0x9

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final f(Ljx8;Lea1;)V
    .locals 2

    new-instance v0, Lcc;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcc;-><init>(I)V

    invoke-virtual {p2, v0}, Lea1;->E(Lea1$a;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Ljx8;->j:Lgx8$h;

    invoke-virtual {v1, v0}, Lgx8$h;->i(Ljava/lang/String;)V

    invoke-virtual {p2}, Lea1;->p()C

    move-result p2

    if-eqz p2, :cond_4

    const/16 v0, 0x20

    if-eq p2, v0, :cond_3

    const/16 v0, 0x2f

    if-eq p2, v0, :cond_2

    const/16 v0, 0x3e

    if-eq p2, v0, :cond_1

    const v0, 0xffff

    if-eq p2, v0, :cond_0

    const/16 p0, 0x9

    if-eq p2, p0, :cond_3

    const/16 p0, 0xa

    if-eq p2, p0, :cond_3

    const/16 p0, 0xc

    if-eq p2, p0, :cond_3

    const/16 p0, 0xd

    if-eq p2, p0, :cond_3

    iget-object p0, p1, Ljx8;->j:Lgx8$h;

    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgx8$h;->i(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1, p0}, Ljx8;->l(Lkx8;)V

    sget-object p0, Lkx8;->Data:Lkx8;

    invoke-virtual {p1, p0}, Ljx8;->o(Lkx8;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Ljx8;->k()V

    sget-object p0, Lkx8;->Data:Lkx8;

    invoke-virtual {p1, p0}, Ljx8;->o(Lkx8;)V

    return-void

    :cond_2
    sget-object p0, Lkx8;->SelfClosingStartTag:Lkx8;

    invoke-virtual {p1, p0}, Ljx8;->o(Lkx8;)V

    return-void

    :cond_3
    sget-object p0, Lkx8;->BeforeAttributeName:Lkx8;

    invoke-virtual {p1, p0}, Ljx8;->o(Lkx8;)V

    return-void

    :cond_4
    iget-object p0, p1, Ljx8;->j:Lgx8$h;

    invoke-static {}, Lkx8;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgx8$h;->i(Ljava/lang/String;)V

    return-void
.end method
