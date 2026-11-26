.class public final Lyads/fl4;
.super Lf02;
.source "SourceFile"


# instance fields
.field public b:Z

.field public c:Ljava/lang/Object;

.field public d:Lyads/jd0;

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Lyads/il4;

.field public g:I


# direct methods
.method public constructor <init>(Lyads/il4;Lf02;)V
    .locals 0

    iput-object p1, p0, Lyads/fl4;->f:Lyads/il4;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iput-object p1, p0, Lyads/fl4;->e:Ljava/lang/Object;

    iget p1, p0, Lyads/fl4;->g:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lyads/fl4;->g:I

    iget-object v0, p0, Lyads/fl4;->f:Lyads/il4;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lyads/il4;->a(ZLandroid/content/Context;Lyads/ee4;Lyads/jd0;Lf02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
