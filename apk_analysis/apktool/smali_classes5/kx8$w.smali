.class public final enum Lkx8$w;
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

    const-string v0, "ScriptDataDoubleEscapedDash"

    const/16 v1, 0x1d

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final f(Ljx8;Lea1;)V
    .locals 1

    invoke-virtual {p2}, Lea1;->p()C

    move-result p2

    if-eqz p2, :cond_3

    const/16 v0, 0x2d

    if-eq p2, v0, :cond_2

    const/16 v0, 0x3c

    if-eq p2, v0, :cond_1

    const v0, 0xffff

    if-eq p2, v0, :cond_0

    invoke-virtual {p1, p2}, Ljx8;->f(C)V

    sget-object p0, Lkx8;->ScriptDataDoubleEscaped:Lkx8;

    invoke-virtual {p1, p0}, Ljx8;->o(Lkx8;)V

    return-void

    :cond_0
    invoke-virtual {p1, p0}, Ljx8;->l(Lkx8;)V

    sget-object p0, Lkx8;->Data:Lkx8;

    invoke-virtual {p1, p0}, Ljx8;->o(Lkx8;)V

    return-void

    :cond_1
    invoke-virtual {p1, p2}, Ljx8;->f(C)V

    sget-object p0, Lkx8;->ScriptDataDoubleEscapedLessthanSign:Lkx8;

    invoke-virtual {p1, p0}, Ljx8;->o(Lkx8;)V

    return-void

    :cond_2
    invoke-virtual {p1, p2}, Ljx8;->f(C)V

    sget-object p0, Lkx8;->ScriptDataDoubleEscapedDashDash:Lkx8;

    invoke-virtual {p1, p0}, Ljx8;->o(Lkx8;)V

    return-void

    :cond_3
    invoke-virtual {p1, p0}, Ljx8;->m(Lkx8;)V

    const p0, 0xfffd

    invoke-virtual {p1, p0}, Ljx8;->f(C)V

    sget-object p0, Lkx8;->ScriptDataDoubleEscaped:Lkx8;

    invoke-virtual {p1, p0}, Ljx8;->o(Lkx8;)V

    return-void
.end method
