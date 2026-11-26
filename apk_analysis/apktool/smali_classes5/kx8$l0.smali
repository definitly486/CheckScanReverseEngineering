.class public final enum Lkx8$l0;
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

    const-string v0, "MarkupDeclarationOpen"

    const/16 v1, 0x2b

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final f(Ljx8;Lea1;)V
    .locals 2

    const-string v0, "--"

    invoke-virtual {p2, v0}, Lea1;->k0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p1, Ljx8;->m:Lgx8$c;

    invoke-virtual {p0}, Lgx8$c;->f()V

    sget-object p0, Lkx8;->CommentStart:Lkx8;

    invoke-virtual {p1, p0}, Ljx8;->o(Lkx8;)V

    return-void

    :cond_0
    const-string v0, "DOCTYPE"

    invoke-virtual {p2, v0}, Lea1;->n0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lkx8;->Doctype:Lkx8;

    invoke-virtual {p1, p0}, Ljx8;->o(Lkx8;)V

    return-void

    :cond_1
    const-string v0, "[CDATA["

    invoke-virtual {p2, v0}, Lea1;->k0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljx8;->e()V

    sget-object p0, Lkx8;->CdataSection:Lkx8;

    invoke-virtual {p1, p0}, Ljx8;->o(Lkx8;)V

    return-void

    :cond_2
    iget-object v0, p1, Ljx8;->g:Lorg/jsoup/nodes/f$a$a;

    sget-object v1, Lorg/jsoup/nodes/f$a$a;->xml:Lorg/jsoup/nodes/f$a$a;

    if-ne v0, v1, :cond_3

    invoke-virtual {p2}, Lea1;->u0()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p0, p1, Ljx8;->n:Lgx8$j;

    invoke-virtual {p0}, Lgx8$j;->o()V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lgx8$j;->k:Z

    iput-object p0, p1, Ljx8;->j:Lgx8$h;

    sget-object p0, Lkx8;->TagName:Lkx8;

    invoke-virtual {p1, p0}, Ljx8;->o(Lkx8;)V

    return-void

    :cond_3
    invoke-virtual {p1, p0}, Ljx8;->m(Lkx8;)V

    iget-object p0, p1, Ljx8;->m:Lgx8$c;

    invoke-virtual {p0}, Lgx8$c;->f()V

    sget-object p0, Lkx8;->BogusComment:Lkx8;

    invoke-virtual {p1, p0}, Ljx8;->o(Lkx8;)V

    return-void
.end method
