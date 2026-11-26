.class public final Lyads/c1;
.super Lf02;
.source "SourceFile"


# instance fields
.field public b:Landroid/view/View;

.field public c:Lr07;

.field public d:Ljava/util/Iterator;

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Lyads/d1;

.field public g:I


# direct methods
.method public constructor <init>(Lyads/d1;Lf02;)V
    .locals 0

    iput-object p1, p0, Lyads/c1;->f:Lyads/d1;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lyads/c1;->e:Ljava/lang/Object;

    iget p1, p0, Lyads/c1;->g:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lyads/c1;->g:I

    iget-object p1, p0, Lyads/c1;->f:Lyads/d1;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, Lyads/d1;->a(Landroid/view/View;Ljava/util/ArrayList;Lf02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
