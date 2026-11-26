.class public final Lyads/z3;
.super Lf02;
.source "SourceFile"


# instance fields
.field public b:Landroid/view/View;

.field public c:Lyads/ot3;

.field public d:Lyads/nk4;

.field public e:Lyads/ji4;

.field public synthetic f:Ljava/lang/Object;

.field public final synthetic g:Lyads/a4;

.field public h:I


# direct methods
.method public constructor <init>(Lyads/a4;Lf02;)V
    .locals 0

    iput-object p1, p0, Lyads/z3;->g:Lyads/a4;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iput-object p1, p0, Lyads/z3;->f:Ljava/lang/Object;

    iget p1, p0, Lyads/z3;->h:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lyads/z3;->h:I

    iget-object v0, p0, Lyads/z3;->g:Lyads/a4;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lyads/a4;->a(Landroid/view/View;Lyads/ot3;Lyads/d1;Lyads/nk4;Lyads/ji4;Lf02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
