.class public final synthetic Lzp9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lyads/c62;

.field public final synthetic c:Lyads/m62;

.field public final synthetic d:Lyads/fs2;

.field public final synthetic e:Lyads/x52;


# direct methods
.method public synthetic constructor <init>(Lyads/c62;Lyads/m62;Lyads/fs2;Lyads/x52;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzp9;->b:Lyads/c62;

    iput-object p2, p0, Lzp9;->c:Lyads/m62;

    iput-object p3, p0, Lzp9;->d:Lyads/fs2;

    iput-object p4, p0, Lzp9;->e:Lyads/x52;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lzp9;->d:Lyads/fs2;

    iget-object v1, p0, Lzp9;->e:Lyads/x52;

    iget-object v2, p0, Lzp9;->b:Lyads/c62;

    iget-object p0, p0, Lzp9;->c:Lyads/m62;

    invoke-static {v2, p0, v0, v1, p1}, Lyads/c62;->a(Lyads/c62;Lyads/m62;Lyads/fs2;Lyads/x52;Ljava/lang/Object;)Lj59;

    move-result-object p0

    return-object p0
.end method
