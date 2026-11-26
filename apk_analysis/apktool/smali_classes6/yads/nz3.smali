.class public final Lyads/nz3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/py3;
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final b:Landroid/os/Handler;

.field public final synthetic c:Lyads/oz3;


# direct methods
.method public constructor <init>(Lyads/oz3;Lyads/qy3;)V
    .locals 0

    iput-object p1, p0, Lyads/nz3;->c:Lyads/oz3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lyads/u56;->a(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lyads/nz3;->b:Landroid/os/Handler;

    invoke-interface {p2, p0, p1}, Lyads/qy3;->a(Lyads/nz3;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 6

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    sget v1, Lyads/u56;->a:I

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/16 v4, 0x20

    shl-long/2addr v0, v4

    int-to-long v4, p1

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object p1, p0, Lyads/nz3;->c:Lyads/oz3;

    iget-object v2, p1, Lyads/oz3;->n1:Lyads/nz3;

    const/4 v3, 0x1

    if-eq p0, v2, :cond_1

    goto :goto_2

    :cond_1
    const-wide v4, 0x7fffffffffffffffL

    cmp-long v2, v0, v4

    if-nez v2, :cond_2

    iput-boolean v3, p1, Lyads/zy3;->z0:Z

    goto :goto_2

    :cond_2
    :try_start_0
    invoke-virtual {p1, v0, v1}, Lyads/zy3;->b(J)V

    invoke-virtual {p1}, Lyads/oz3;->A()V

    iget-object v2, p1, Lyads/zy3;->B0:Lyads/ji0;

    iget v4, v2, Lyads/ji0;->e:I

    add-int/2addr v4, v3

    iput v4, v2, Lyads/ji0;->e:I

    iput-boolean v3, p1, Lyads/oz3;->V0:Z

    iget-boolean v2, p1, Lyads/oz3;->T0:Z

    if-nez v2, :cond_3

    iput-boolean v3, p1, Lyads/oz3;->T0:Z

    iget-object v2, p1, Lyads/oz3;->I0:Lyads/ne6;

    iget-object v4, p1, Lyads/oz3;->P0:Landroid/view/Surface;

    invoke-virtual {v2, v4}, Lyads/ne6;->a(Ljava/lang/Object;)V

    iput-boolean v3, p1, Lyads/oz3;->R0:Z

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {p1, v0, v1}, Lyads/oz3;->a(J)V
    :try_end_0
    .catch Lyads/up2; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    iget-object p0, p0, Lyads/nz3;->c:Lyads/oz3;

    iput-object p1, p0, Lyads/zy3;->A0:Lyads/up2;

    :goto_2
    return v3
.end method
