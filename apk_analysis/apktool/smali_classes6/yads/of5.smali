.class public final Lyads/of5;
.super Lf02;
.source "SourceFile"


# instance fields
.field public b:Lyads/t5;

.field public c:Lyads/s5;

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lyads/rf5;

.field public f:I


# direct methods
.method public constructor <init>(Lyads/rf5;Lf02;)V
    .locals 0

    iput-object p1, p0, Lyads/of5;->e:Lyads/rf5;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lyads/of5;->d:Ljava/lang/Object;

    iget p1, p0, Lyads/of5;->f:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lyads/of5;->f:I

    iget-object p1, p0, Lyads/of5;->e:Lyads/rf5;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lyads/rf5;->b(Lyads/kg3;Lf02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
