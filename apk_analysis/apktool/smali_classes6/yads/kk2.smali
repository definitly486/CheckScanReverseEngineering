.class public final Lyads/kk2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/tk2;

.field public final b:I

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:I

.field public final g:I

.field public final h:Lyads/rk2;


# direct methods
.method public constructor <init>(Lyads/tk2;IJJJIILyads/rk2;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p10, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const/4 v3, 0x4

    if-eq p2, v3, :cond_1

    move v0, v1

    :cond_1
    const/4 v1, 0x0

    if-ne v2, v0, :cond_4

    if-eqz p9, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, Lmi2;->b()V

    throw v1

    :cond_3
    :goto_1
    iput-object p1, p0, Lyads/kk2;->a:Lyads/tk2;

    iput p2, p0, Lyads/kk2;->b:I

    iput-wide p3, p0, Lyads/kk2;->c:J

    iput-wide p5, p0, Lyads/kk2;->d:J

    iput-wide p7, p0, Lyads/kk2;->e:J

    iput p9, p0, Lyads/kk2;->f:I

    iput p10, p0, Lyads/kk2;->g:I

    iput-object p11, p0, Lyads/kk2;->h:Lyads/rk2;

    return-void

    :cond_4
    invoke-static {}, Lmi2;->b()V

    throw v1
.end method
