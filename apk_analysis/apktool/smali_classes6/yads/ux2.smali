.class public final Lyads/ux2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lyads/vx2;

.field public final synthetic c:J

.field public final synthetic d:Lll3;


# direct methods
.method public constructor <init>(Lyads/vx2;JLll3;)V
    .locals 0

    iput-object p1, p0, Lyads/ux2;->b:Lyads/vx2;

    iput-wide p2, p0, Lyads/ux2;->c:J

    iput-object p4, p0, Lyads/ux2;->d:Lll3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lyads/ux2;->b:Lyads/vx2;

    iget-object v0, v0, Lyads/vx2;->a:Landroid/os/Handler;

    iget-wide v1, p0, Lyads/ux2;->c:J

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p0, p0, Lyads/ux2;->d:Lll3;

    invoke-interface {p0}, Lll3;->invoke()Ljava/lang/Object;

    return-void
.end method
