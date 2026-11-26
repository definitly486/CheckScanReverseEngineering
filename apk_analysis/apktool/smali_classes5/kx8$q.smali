.class public final enum Lkx8$q;
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

    const-string v0, "ScriptDataEscapedLessthanSign"

    const/16 v1, 0x18

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final f(Ljx8;Lea1;)V
    .locals 2

    invoke-virtual {p2}, Lea1;->u0()Z

    move-result p0

    const/16 v0, 0x3c

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljx8;->e()V

    iget-object p0, p1, Ljx8;->f:Lm54;

    invoke-virtual {p2}, Lea1;->X()C

    move-result v1

    invoke-virtual {p0, v1}, Lm54;->a(C)V

    invoke-virtual {p1, v0}, Ljx8;->f(C)V

    invoke-virtual {p2}, Lea1;->X()C

    move-result p0

    invoke-virtual {p1, p0}, Ljx8;->f(C)V

    sget-object p0, Lkx8;->ScriptDataDoubleEscapeStart:Lkx8;

    invoke-virtual {p1, p0}, Ljx8;->a(Lkx8;)V

    return-void

    :cond_0
    const/16 p0, 0x2f

    invoke-virtual {p2, p0}, Lea1;->q0(C)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Ljx8;->e()V

    sget-object p0, Lkx8;->ScriptDataEscapedEndTagOpen:Lkx8;

    invoke-virtual {p1, p0}, Ljx8;->a(Lkx8;)V

    return-void

    :cond_1
    invoke-virtual {p1, v0}, Ljx8;->f(C)V

    sget-object p0, Lkx8;->ScriptDataEscaped:Lkx8;

    invoke-virtual {p1, p0}, Ljx8;->o(Lkx8;)V

    return-void
.end method
