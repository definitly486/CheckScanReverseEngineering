.class public final Lyads/gy4;
.super Lf02;
.source "SourceFile"


# instance fields
.field public b:Landroid/content/Context;

.field public c:Ljava/util/Iterator;

.field public d:Lyads/by4;

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Lyads/hy4;

.field public g:I


# direct methods
.method public constructor <init>(Lyads/hy4;Lf02;)V
    .locals 0

    iput-object p1, p0, Lyads/gy4;->f:Lyads/hy4;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lyads/gy4;->e:Ljava/lang/Object;

    iget p1, p0, Lyads/gy4;->g:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lyads/gy4;->g:I

    iget-object p1, p0, Lyads/gy4;->f:Lyads/hy4;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, Lyads/hy4;->a(Landroid/content/Context;Ljava/util/List;Lf02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
