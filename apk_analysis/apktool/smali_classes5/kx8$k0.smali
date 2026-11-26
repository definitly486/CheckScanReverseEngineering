.class public final enum Lkx8$k0;
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

    const-string v0, "BogusComment"

    const/16 v1, 0x2a

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final f(Ljx8;Lea1;)V
    .locals 2

    iget-object p0, p1, Ljx8;->m:Lgx8$c;

    const/16 v0, 0x3e

    invoke-virtual {p2, v0}, Lea1;->P(C)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lgx8$c;->d:Lm54;

    invoke-virtual {p0, v1}, Lm54;->b(Ljava/lang/String;)V

    invoke-virtual {p2}, Lea1;->X()C

    move-result p0

    if-eq p0, v0, :cond_1

    const v0, 0xffff

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    invoke-virtual {p2}, Lea1;->p()C

    invoke-virtual {p1}, Ljx8;->i()V

    sget-object p0, Lkx8;->Data:Lkx8;

    invoke-virtual {p1, p0}, Ljx8;->o(Lkx8;)V

    return-void
.end method
