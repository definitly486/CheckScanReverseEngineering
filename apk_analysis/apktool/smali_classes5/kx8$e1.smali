.class public final enum Lkx8$e1;
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

    const-string v0, "BetweenDoctypePublicAndSystemIdentifiers"

    const/16 v1, 0x3c

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final f(Ljx8;Lea1;)V
    .locals 3

    invoke-virtual {p2}, Lea1;->p()C

    move-result p2

    const/16 v0, 0x9

    if-eq p2, v0, :cond_6

    const/16 v0, 0xa

    if-eq p2, v0, :cond_6

    const/16 v0, 0xc

    if-eq p2, v0, :cond_6

    const/16 v0, 0xd

    if-eq p2, v0, :cond_6

    const/16 v0, 0x20

    if-eq p2, v0, :cond_6

    const/16 v0, 0x22

    if-eq p2, v0, :cond_5

    const/16 v0, 0x27

    if-eq p2, v0, :cond_4

    const/16 v0, 0x3e

    if-eq p2, v0, :cond_3

    const/16 v0, 0x5b

    const/4 v1, 0x1

    if-eq p2, v0, :cond_1

    const v0, 0xffff

    if-eq p2, v0, :cond_0

    invoke-virtual {p1, p0}, Ljx8;->m(Lkx8;)V

    iget-object p0, p1, Ljx8;->l:Lgx8$d;

    iput-boolean v1, p0, Lgx8$d;->i:Z

    sget-object p0, Lkx8;->BogusDoctype:Lkx8;

    invoke-virtual {p1, p0}, Ljx8;->o(Lkx8;)V

    return-void

    :cond_0
    invoke-virtual {p1, p0}, Ljx8;->l(Lkx8;)V

    iget-object p0, p1, Ljx8;->l:Lgx8$d;

    iput-boolean v1, p0, Lgx8$d;->i:Z

    invoke-virtual {p1}, Ljx8;->j()V

    sget-object p0, Lkx8;->Data:Lkx8;

    invoke-virtual {p1, p0}, Ljx8;->o(Lkx8;)V

    return-void

    :cond_1
    iget-object p2, p1, Ljx8;->g:Lorg/jsoup/nodes/f$a$a;

    iget-object v0, p1, Ljx8;->l:Lgx8$d;

    sget-object v2, Lorg/jsoup/nodes/f$a$a;->xml:Lorg/jsoup/nodes/f$a$a;

    if-ne p2, v2, :cond_2

    sget-object p0, Lkx8;->DoctypeInternalSubset:Lkx8;

    invoke-virtual {p1, p0}, Ljx8;->o(Lkx8;)V

    return-void

    :cond_2
    invoke-virtual {p1, p0}, Ljx8;->m(Lkx8;)V

    iput-boolean v1, v0, Lgx8$d;->i:Z

    sget-object p0, Lkx8;->BogusDoctype:Lkx8;

    invoke-virtual {p1, p0}, Ljx8;->o(Lkx8;)V

    return-void

    :cond_3
    invoke-virtual {p1}, Ljx8;->j()V

    sget-object p0, Lkx8;->Data:Lkx8;

    invoke-virtual {p1, p0}, Ljx8;->o(Lkx8;)V

    return-void

    :cond_4
    invoke-virtual {p1, p0}, Ljx8;->m(Lkx8;)V

    sget-object p0, Lkx8;->DoctypeSystemIdentifier_singleQuoted:Lkx8;

    invoke-virtual {p1, p0}, Ljx8;->o(Lkx8;)V

    return-void

    :cond_5
    invoke-virtual {p1, p0}, Ljx8;->m(Lkx8;)V

    sget-object p0, Lkx8;->DoctypeSystemIdentifier_doubleQuoted:Lkx8;

    invoke-virtual {p1, p0}, Ljx8;->o(Lkx8;)V

    :cond_6
    return-void
.end method
