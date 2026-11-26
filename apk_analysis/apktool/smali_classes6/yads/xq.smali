.class public final Lyads/xq;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Lyads/s03;

.field public final synthetic c:Lyads/ar;

.field public final synthetic d:Lyads/n8;


# direct methods
.method public constructor <init>(Lyads/s03;Lyads/ar;Lyads/n8;)V
    .locals 0

    iput-object p1, p0, Lyads/xq;->b:Lyads/s03;

    iput-object p2, p0, Lyads/xq;->c:Lyads/ar;

    iput-object p3, p0, Lyads/xq;->d:Lyads/n8;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lyads/xq;->b:Lyads/s03;

    invoke-virtual {v0}, Lyads/s03;->c()V

    iget-object v0, p0, Lyads/xq;->c:Lyads/ar;

    iget-object v0, v0, Lyads/ar;->c:Lyads/g1;

    iget-object p0, p0, Lyads/xq;->d:Lyads/n8;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lyads/g1;->a(Lyads/n8;Ljava/lang/Object;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
