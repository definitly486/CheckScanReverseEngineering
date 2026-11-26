.class public final Lyads/o81;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lyads/j81;

.field public final synthetic c:Lyads/fs2;

.field public final synthetic d:Lyads/op1;


# direct methods
.method public constructor <init>(Lyads/j81;Lyads/fs2;Lyads/op1;)V
    .locals 0

    iput-object p1, p0, Lyads/o81;->b:Lyads/j81;

    iput-object p2, p0, Lyads/o81;->c:Lyads/fs2;

    iput-object p3, p0, Lyads/o81;->d:Lyads/op1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object p1, p0, Lyads/o81;->b:Lyads/j81;

    iget-object p1, p1, Lyads/j81;->o:Lyads/as2;

    iget-object v0, p0, Lyads/o81;->c:Lyads/fs2;

    invoke-virtual {p1, v0}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lyads/o81;->b:Lyads/j81;

    iget-object v0, v0, Lyads/j81;->p:Lyads/as2;

    iget-object v1, p0, Lyads/o81;->c:Lyads/fs2;

    invoke-virtual {v0, v1}, Lyads/as2;->a(Lyads/fs2;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyads/o91;

    check-cast p1, Lyads/m91;

    iget-object p0, p0, Lyads/o81;->d:Lyads/op1;

    invoke-static {p1, v0}, Lyads/jf2;->a(Lyads/m91;Lyads/o91;)I

    move-result p1

    invoke-virtual {p0, p1}, Lyads/yh2;->setGravity(I)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
