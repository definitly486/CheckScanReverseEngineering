.class public final Lyads/xc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lyads/yc;


# direct methods
.method public constructor <init>(Lyads/yc;)V
    .locals 0

    iput-object p1, p0, Lyads/xc;->b:Lyads/yc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lyads/xc;->b:Lyads/yc;

    iget-object p0, p0, Lyads/yc;->e:Lyads/ad;

    if-eqz p0, :cond_1

    check-cast p0, Lyads/cc;

    iget-object p0, p0, Lyads/cc;->a:Lyads/ec;

    iget-object v0, p0, Lyads/ec;->f:Lmb4;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lmb4;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    iput-object v1, p0, Lyads/ec;->f:Lmb4;

    :cond_1
    return-void
.end method
