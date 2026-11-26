.class public final Lyads/mx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/u03;


# instance fields
.field public final a:Lyads/n8;

.field public final synthetic b:Lyads/ox;


# direct methods
.method public constructor <init>(Lyads/ox;Lyads/n8;)V
    .locals 0

    iput-object p1, p0, Lyads/mx;->b:Lyads/ox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/mx;->a:Lyads/n8;

    return-void
.end method


# virtual methods
.method public final onAdShown()V
    .locals 5

    iget-object v0, p0, Lyads/mx;->b:Lyads/ox;

    iget-object p0, p0, Lyads/mx;->a:Lyads/n8;

    iget-object v1, v0, Lyads/bq;->f:Ly22;

    sget-object v2, Lqo2;->a:Loi2;

    sget-object v2, Luy4;->a:Lhu3;

    invoke-virtual {v2}, Lhu3;->k0()Lgu3;

    move-result-object v2

    new-instance v3, Lyads/zp;

    const/4 v4, 0x0

    invoke-direct {v3, v0, p0, v4}, Lyads/zp;-><init>(Lyads/bq;Lyads/n8;Le02;)V

    const/4 p0, 0x2

    invoke-static {v1, v2, v4, v3, p0}, Lav0;->c(Ly22;Lo22;Lc32;Lbm3;I)Ls68;

    return-void
.end method
