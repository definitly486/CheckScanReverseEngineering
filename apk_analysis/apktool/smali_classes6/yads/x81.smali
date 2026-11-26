.class public final Lyads/x81;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lyads/i81;

.field public final synthetic c:Lyads/jj2;

.field public final synthetic d:Lyads/a91;

.field public final synthetic e:Lyads/fs2;


# direct methods
.method public constructor <init>(Lyads/i81;Lyads/fs2;Lyads/jj2;Lyads/a91;Lyads/fs2;)V
    .locals 0

    iput-object p1, p0, Lyads/x81;->b:Lyads/i81;

    iput-object p3, p0, Lyads/x81;->c:Lyads/jj2;

    iput-object p4, p0, Lyads/x81;->d:Lyads/a91;

    iput-object p5, p0, Lyads/x81;->e:Lyads/fs2;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object p1, p0, Lyads/x81;->b:Lyads/i81;

    iget-object v0, p0, Lyads/x81;->c:Lyads/jj2;

    iget-object v1, p0, Lyads/x81;->d:Lyads/a91;

    iget-object p0, p0, Lyads/x81;->e:Lyads/fs2;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p0}, Lyads/a91;->a(Lyads/i81;Lyads/fs2;)I

    move-result p0

    invoke-virtual {v0, p0}, Lyads/bl6;->setShowSeparators(I)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
