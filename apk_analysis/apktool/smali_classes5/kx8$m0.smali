.class public final enum Lkx8$m0;
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

    const-string v0, "MarkupProcessingOpen"

    const/16 v1, 0x2c

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final f(Ljx8;Lea1;)V
    .locals 0

    invoke-virtual {p2}, Lea1;->u0()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p1, Ljx8;->n:Lgx8$j;

    invoke-virtual {p0}, Lgx8$j;->o()V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lgx8$j;->k:Z

    iput-object p0, p1, Ljx8;->j:Lgx8$h;

    sget-object p0, Lkx8;->TagName:Lkx8;

    invoke-virtual {p1, p0}, Ljx8;->o(Lkx8;)V

    return-void

    :cond_0
    invoke-virtual {p1, p0}, Ljx8;->m(Lkx8;)V

    iget-object p0, p1, Ljx8;->m:Lgx8$c;

    invoke-virtual {p0}, Lgx8$c;->f()V

    const/16 p2, 0x3f

    invoke-virtual {p0, p2}, Lgx8$c;->g(C)V

    sget-object p0, Lkx8;->BogusComment:Lkx8;

    invoke-virtual {p1, p0}, Ljx8;->o(Lkx8;)V

    return-void
.end method
