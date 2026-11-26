.class public final enum Lkx8$j0;
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

    const-string v0, "SelfClosingStartTag"

    const/16 v1, 0x29

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final f(Ljx8;Lea1;)V
    .locals 2

    invoke-virtual {p2}, Lea1;->p()C

    move-result v0

    const/16 v1, 0x3e

    if-eq v0, v1, :cond_1

    const v1, 0xffff

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, Lea1;->C0()V

    invoke-virtual {p1, p0}, Ljx8;->m(Lkx8;)V

    sget-object p0, Lkx8;->BeforeAttributeName:Lkx8;

    invoke-virtual {p1, p0}, Ljx8;->o(Lkx8;)V

    return-void

    :cond_0
    invoke-virtual {p1, p0}, Ljx8;->l(Lkx8;)V

    sget-object p0, Lkx8;->Data:Lkx8;

    invoke-virtual {p1, p0}, Ljx8;->o(Lkx8;)V

    return-void

    :cond_1
    iget-object p0, p1, Ljx8;->j:Lgx8$h;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lgx8$h;->f:Z

    invoke-virtual {p1}, Ljx8;->k()V

    sget-object p0, Lkx8;->Data:Lkx8;

    invoke-virtual {p1, p0}, Ljx8;->o(Lkx8;)V

    return-void
.end method
