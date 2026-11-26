.class public final enum Lkx8$p0;
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

    const-string v0, "Comment"

    const/16 v1, 0x2f

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final f(Ljx8;Lea1;)V
    .locals 2

    invoke-virtual {p2}, Lea1;->X()C

    move-result v0

    if-eqz v0, :cond_2

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_1

    const v1, 0xffff

    if-eq v0, v1, :cond_0

    iget-object p0, p1, Ljx8;->m:Lgx8$c;

    const/4 p1, 0x2

    new-array p1, p1, [C

    fill-array-data p1, :array_0

    invoke-virtual {p2, p1}, Lea1;->Q([C)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lgx8$c;->d:Lm54;

    invoke-virtual {p0, p1}, Lm54;->b(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1, p0}, Ljx8;->l(Lkx8;)V

    invoke-virtual {p1}, Ljx8;->i()V

    sget-object p0, Lkx8;->Data:Lkx8;

    invoke-virtual {p1, p0}, Ljx8;->o(Lkx8;)V

    return-void

    :cond_1
    sget-object p0, Lkx8;->CommentEndDash:Lkx8;

    invoke-virtual {p1, p0}, Ljx8;->a(Lkx8;)V

    return-void

    :cond_2
    invoke-virtual {p1, p0}, Ljx8;->m(Lkx8;)V

    invoke-virtual {p2}, Lea1;->m()V

    iget-object p0, p1, Ljx8;->m:Lgx8$c;

    const p1, 0xfffd

    invoke-virtual {p0, p1}, Lgx8$c;->g(C)V

    return-void

    :array_0
    .array-data 2
        0x2ds
        0x0s
    .end array-data
.end method
