.class public final Lyads/sg;
.super Lf02;
.source "SourceFile"


# instance fields
.field public synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lyads/vg;

.field public d:I


# direct methods
.method public constructor <init>(Lyads/vg;Lf02;)V
    .locals 0

    iput-object p1, p0, Lyads/sg;->c:Lyads/vg;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lyads/sg;->b:Ljava/lang/Object;

    iget p1, p0, Lyads/sg;->d:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lyads/sg;->d:I

    iget-object p1, p0, Lyads/sg;->c:Lyads/vg;

    invoke-virtual {p1, p0}, Lyads/vg;->a(Lf02;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, La32;->COROUTINE_SUSPENDED:La32;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    new-instance p1, Lk57;

    invoke-direct {p1, p0}, Lk57;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
