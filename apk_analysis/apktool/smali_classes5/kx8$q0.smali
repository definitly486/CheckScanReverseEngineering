.class public final enum Lkx8$q0;
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

    const-string v0, "CommentEndDash"

    const/16 v1, 0x30

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final f(Ljx8;Lea1;)V
    .locals 2

    invoke-virtual {p2}, Lea1;->p()C

    move-result p2

    const/16 v0, 0x2d

    if-eqz p2, :cond_2

    if-eq p2, v0, :cond_1

    const v1, 0xffff

    if-eq p2, v1, :cond_0

    iget-object p0, p1, Ljx8;->m:Lgx8$c;

    iget-object v1, p0, Lgx8$c;->d:Lm54;

    invoke-virtual {v1, v0}, Lm54;->a(C)V

    invoke-virtual {p0, p2}, Lgx8$c;->g(C)V

    sget-object p0, Lkx8;->Comment:Lkx8;

    invoke-virtual {p1, p0}, Ljx8;->o(Lkx8;)V

    return-void

    :cond_0
    invoke-virtual {p1, p0}, Ljx8;->l(Lkx8;)V

    invoke-virtual {p1}, Ljx8;->i()V

    sget-object p0, Lkx8;->Data:Lkx8;

    invoke-virtual {p1, p0}, Ljx8;->o(Lkx8;)V

    return-void

    :cond_1
    sget-object p0, Lkx8;->CommentEnd:Lkx8;

    invoke-virtual {p1, p0}, Ljx8;->o(Lkx8;)V

    return-void

    :cond_2
    invoke-virtual {p1, p0}, Ljx8;->m(Lkx8;)V

    iget-object p0, p1, Ljx8;->m:Lgx8$c;

    iget-object p2, p0, Lgx8$c;->d:Lm54;

    invoke-virtual {p2, v0}, Lm54;->a(C)V

    const p2, 0xfffd

    invoke-virtual {p0, p2}, Lgx8$c;->g(C)V

    sget-object p0, Lkx8;->Comment:Lkx8;

    invoke-virtual {p1, p0}, Ljx8;->o(Lkx8;)V

    return-void
.end method
