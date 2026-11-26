.class public final enum Lkx8$x0;
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

    const-string v0, "AfterDoctypeName"

    const/16 v1, 0x36

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final f(Ljx8;Lea1;)V
    .locals 4

    invoke-virtual {p2}, Lea1;->Z()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Ljx8;->l(Lkx8;)V

    iget-object p0, p1, Ljx8;->l:Lgx8$d;

    iput-boolean v1, p0, Lgx8$d;->i:Z

    invoke-virtual {p1}, Ljx8;->j()V

    sget-object p0, Lkx8;->Data:Lkx8;

    invoke-virtual {p1, p0}, Ljx8;->o(Lkx8;)V

    return-void

    :cond_0
    const/4 v0, 0x5

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    invoke-virtual {p2, v0}, Lea1;->r0([C)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lea1;->m()V

    return-void

    :cond_1
    const/16 v0, 0x3e

    invoke-virtual {p2, v0}, Lea1;->q0(C)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljx8;->j()V

    sget-object p0, Lkx8;->Data:Lkx8;

    invoke-virtual {p1, p0}, Ljx8;->a(Lkx8;)V

    return-void

    :cond_2
    iget-object v0, p1, Ljx8;->g:Lorg/jsoup/nodes/f$a$a;

    iget-object v2, p1, Ljx8;->l:Lgx8$d;

    sget-object v3, Lorg/jsoup/nodes/f$a$a;->xml:Lorg/jsoup/nodes/f$a$a;

    if-ne v0, v3, :cond_3

    const/16 v0, 0x5b

    invoke-virtual {p2, v0}, Lea1;->q0(C)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lkx8;->DoctypeInternalSubset:Lkx8;

    invoke-virtual {p1, p0}, Ljx8;->a(Lkx8;)V

    return-void

    :cond_3
    const-string v0, "PUBLIC"

    invoke-virtual {p2, v0}, Lea1;->n0(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    iput-object v0, v2, Lgx8$d;->e:Ljava/lang/String;

    sget-object p0, Lkx8;->AfterDoctypePublicKeyword:Lkx8;

    invoke-virtual {p1, p0}, Ljx8;->o(Lkx8;)V

    return-void

    :cond_4
    const-string v0, "SYSTEM"

    invoke-virtual {p2, v0}, Lea1;->n0(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    iput-object v0, v2, Lgx8$d;->e:Ljava/lang/String;

    sget-object p0, Lkx8;->AfterDoctypeSystemKeyword:Lkx8;

    invoke-virtual {p1, p0}, Ljx8;->o(Lkx8;)V

    return-void

    :cond_5
    invoke-virtual {p1, p0}, Ljx8;->m(Lkx8;)V

    iput-boolean v1, v2, Lgx8$d;->i:Z

    sget-object p0, Lkx8;->BogusDoctype:Lkx8;

    invoke-virtual {p1, p0}, Ljx8;->a(Lkx8;)V

    return-void

    nop

    :array_0
    .array-data 2
        0x9s
        0xas
        0xds
        0xcs
        0x20s
    .end array-data
.end method
