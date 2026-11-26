.class public final enum Lkx8$k;
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

    const-string v0, "Data"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final f(Ljx8;Lea1;)V
    .locals 1

    invoke-virtual {p2}, Lea1;->X()C

    move-result v0

    if-eqz v0, :cond_3

    const/16 p0, 0x26

    if-eq v0, p0, :cond_2

    const/16 p0, 0x3c

    if-eq v0, p0, :cond_1

    const p0, 0xffff

    if-eq v0, p0, :cond_0

    invoke-virtual {p2}, Lea1;->v()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljx8;->h(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p0, Lgx8$e;

    invoke-direct {p0}, Lgx8$e;-><init>()V

    invoke-virtual {p1, p0}, Ljx8;->g(Lgx8;)V

    return-void

    :cond_1
    sget-object p0, Lkx8;->TagOpen:Lkx8;

    invoke-virtual {p1, p0}, Ljx8;->a(Lkx8;)V

    return-void

    :cond_2
    sget-object p0, Lkx8;->CharacterReferenceInData:Lkx8;

    invoke-virtual {p1, p0}, Ljx8;->a(Lkx8;)V

    return-void

    :cond_3
    invoke-virtual {p1, p0}, Ljx8;->m(Lkx8;)V

    invoke-virtual {p2}, Lea1;->p()C

    move-result p0

    invoke-virtual {p1, p0}, Ljx8;->f(C)V

    return-void
.end method
