.class public final Ly48;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls82$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls82$a<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lnc5$a;

.field public final synthetic c:Lz48;


# direct methods
.method public constructor <init>(Lz48;Lnc5$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly48;->c:Lz48;

    iput-object p2, p0, Ly48;->b:Lnc5$a;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Ly48;->c:Lz48;

    iget-object v1, p0, Ly48;->b:Lnc5$a;

    iget-object v0, v0, Lz48;->g:Lnc5$a;

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Ly48;->c:Lz48;

    iget-object p0, p0, Ly48;->b:Lnc5$a;

    iget-object v1, v0, Lz48;->b:Lmd2;

    iget-object v1, v1, Lmd2;->p:Lsn2;

    if-eqz p1, :cond_0

    iget-object v2, p0, Lnc5$a;->c:Ls82;

    invoke-interface {v2}, Ls82;->c()Ly82;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsn2;->c(Ly82;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object p1, v0, Lz48;->f:Ljava/lang/Object;

    iget-object p0, v0, Lz48;->c:Lod2;

    sget-object p1, Lod2$f;->SWITCH_TO_SOURCE_SERVICE:Lod2$f;

    invoke-virtual {p0, p1}, Lod2;->n(Lod2$f;)V

    return-void

    :cond_0
    move-object v1, v0

    iget-object v0, v1, Lz48;->c:Lod2;

    move-object v2, v1

    iget-object v1, p0, Lnc5$a;->a:Lkf4;

    iget-object v3, p0, Lnc5$a;->c:Ls82;

    invoke-interface {v3}, Ls82;->c()Ly82;

    move-result-object v4

    iget-object v5, v2, Lz48;->h:Lp82;

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lod2;->c(Lkf4;Ljava/lang/Object;Ls82;Ly82;Lkf4;)V

    :cond_1
    return-void
.end method

.method public final e(Ljava/lang/Exception;)V
    .locals 3

    iget-object v0, p0, Ly48;->c:Lz48;

    iget-object v1, p0, Ly48;->b:Lnc5$a;

    iget-object v0, v0, Lz48;->g:Lnc5$a;

    if-eqz v0, :cond_0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ly48;->c:Lz48;

    iget-object p0, p0, Ly48;->b:Lnc5$a;

    iget-object v1, v0, Lz48;->c:Lod2;

    iget-object v0, v0, Lz48;->h:Lp82;

    iget-object p0, p0, Lnc5$a;->c:Ls82;

    invoke-interface {p0}, Ls82;->c()Ly82;

    move-result-object v2

    invoke-virtual {v1, v0, p1, p0, v2}, Lod2;->a(Lkf4;Ljava/lang/Exception;Ls82;Ly82;)V

    :cond_0
    return-void
.end method
