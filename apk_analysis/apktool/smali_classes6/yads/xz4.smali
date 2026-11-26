.class public final Lyads/xz4;
.super Lf02;
.source "SourceFile"


# instance fields
.field public b:Lyads/a13;

.field public c:Lyg5;

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lyads/zz4;

.field public f:I


# direct methods
.method public constructor <init>(Lyads/zz4;Le02;)V
    .locals 0

    iput-object p1, p0, Lyads/xz4;->e:Lyads/zz4;

    invoke-direct {p0, p2}, Lf02;-><init>(Le02;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lyads/xz4;->d:Ljava/lang/Object;

    iget p1, p0, Lyads/xz4;->f:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lyads/xz4;->f:I

    iget-object p1, p0, Lyads/xz4;->e:Lyads/zz4;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lyads/zz4;->a(Lyads/a13;Le02;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
