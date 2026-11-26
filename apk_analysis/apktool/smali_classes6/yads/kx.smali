.class public final Lyads/kx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/w80;


# instance fields
.field public final a:Lyads/n8;

.field public final synthetic b:Lyads/ox;


# direct methods
.method public constructor <init>(Lyads/ox;Lyads/n8;)V
    .locals 0

    iput-object p1, p0, Lyads/kx;->b:Lyads/ox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/kx;->a:Lyads/n8;

    return-void
.end method

.method public static final a(Lyads/ox;Lyads/kx;Ljava/lang/Throwable;)Lj59;
    .locals 0

    .line 20
    iget-object p0, p0, Lyads/bq;->e:Lyads/cl0;

    .line 21
    iget-object p1, p1, Lyads/kx;->a:Lyads/n8;

    const/4 p2, 0x0

    .line 22
    iget-object p0, p0, Lyads/cl0;->a:Lyads/g1;

    .line 23
    invoke-virtual {p0, p1, p2}, Lyads/g1;->a(Lyads/n8;Ljava/lang/Object;)V

    .line 24
    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method


# virtual methods
.method public final a(Lyads/ja5;)V
    .locals 5

    iget-object v0, p0, Lyads/kx;->b:Lyads/ox;

    iget-object v1, v0, Lyads/bq;->f:Ly22;

    new-instance v2, Lag1;

    const/4 v3, 0x2

    invoke-direct {v2, v3, v0, p0}, Lag1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Lyads/jx;

    const/4 v4, 0x0

    invoke-direct {v3, v0, p0, p1, v4}, Lyads/jx;-><init>(Lyads/ox;Lyads/kx;Lyads/ja5;Le02;)V

    invoke-static {v1, v2, v3}, Lyads/h90;->a(Ly22;Lnl3;Lbm3;)V

    return-void
.end method

.method public final onAdFailedToLoad(Lyads/m4;)V
    .locals 1

    iget-object p1, p0, Lyads/kx;->b:Lyads/ox;

    iget-object p1, p1, Lyads/bq;->e:Lyads/cl0;

    iget-object p0, p0, Lyads/kx;->a:Lyads/n8;

    const/4 v0, 0x0

    iget-object p1, p1, Lyads/cl0;->a:Lyads/g1;

    invoke-virtual {p1, p0, v0}, Lyads/g1;->a(Lyads/n8;Ljava/lang/Object;)V

    return-void
.end method
