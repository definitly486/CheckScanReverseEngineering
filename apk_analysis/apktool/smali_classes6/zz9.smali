.class public final synthetic Lzz9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lyads/bn1;

.field public final synthetic c:Lyads/as2;

.field public final synthetic d:Lyads/fs2;


# direct methods
.method public synthetic constructor <init>(Lyads/bn1;Lyads/as2;Lyads/fs2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzz9;->b:Lyads/bn1;

    iput-object p2, p0, Lzz9;->c:Lyads/as2;

    iput-object p3, p0, Lzz9;->d:Lyads/fs2;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lzz9;->c:Lyads/as2;

    iget-object v1, p0, Lzz9;->d:Lyads/fs2;

    iget-object p0, p0, Lzz9;->b:Lyads/bn1;

    invoke-static {p0, v0, v1, p1}, Lyads/jk1;->c(Lyads/bn1;Lyads/as2;Lyads/fs2;Ljava/lang/Object;)Lj59;

    move-result-object p0

    return-object p0
.end method
