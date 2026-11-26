.class public final synthetic Lyp9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lyads/c62;

.field public final synthetic c:Lyads/m62;

.field public final synthetic d:Lyads/fs2;

.field public final synthetic e:Lyads/u52;

.field public final synthetic f:Lyads/tt;


# direct methods
.method public synthetic constructor <init>(Lyads/c62;Lyads/m62;Lyads/fs2;Lyads/u52;Lyads/tt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyp9;->b:Lyads/c62;

    iput-object p2, p0, Lyp9;->c:Lyads/m62;

    iput-object p3, p0, Lyp9;->d:Lyads/fs2;

    iput-object p4, p0, Lyp9;->e:Lyads/u52;

    iput-object p5, p0, Lyp9;->f:Lyads/tt;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v3, p0, Lyp9;->e:Lyads/u52;

    iget-object v4, p0, Lyp9;->f:Lyads/tt;

    iget-object v0, p0, Lyp9;->b:Lyads/c62;

    iget-object v1, p0, Lyp9;->c:Lyads/m62;

    iget-object v2, p0, Lyp9;->d:Lyads/fs2;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lyads/c62;->a(Lyads/c62;Lyads/m62;Lyads/fs2;Lyads/u52;Lyads/tt;Ljava/lang/Object;)Lj59;

    move-result-object p0

    return-object p0
.end method
