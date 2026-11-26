.class public final synthetic Lsp9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lll3;


# instance fields
.field public final synthetic b:Lyads/c32;

.field public final synthetic c:Lyads/k32;

.field public final synthetic d:Lyads/tt;

.field public final synthetic e:Lyads/fs2;

.field public final synthetic f:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lyads/c32;Lyads/k32;Lyads/tt;Lyads/fs2;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsp9;->b:Lyads/c32;

    iput-object p2, p0, Lsp9;->c:Lyads/k32;

    iput-object p3, p0, Lsp9;->d:Lyads/tt;

    iput-object p4, p0, Lsp9;->e:Lyads/fs2;

    iput-object p5, p0, Lsp9;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lsp9;->e:Lyads/fs2;

    iget-object v1, p0, Lsp9;->f:Ljava/util/List;

    iget-object v2, p0, Lsp9;->b:Lyads/c32;

    iget-object v3, p0, Lsp9;->c:Lyads/k32;

    iget-object p0, p0, Lsp9;->d:Lyads/tt;

    invoke-static {v2, v3, p0, v0, v1}, Lyads/c32;->a(Lyads/c32;Lyads/k32;Lyads/tt;Lyads/fs2;Ljava/util/List;)Lj59;

    move-result-object p0

    return-object p0
.end method
