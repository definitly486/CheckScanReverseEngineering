.class public final Le39;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lws6;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lws6;"
    }
.end annotation


# instance fields
.field public final a:Lqi2;

.field public final b:Ls89;

.field public final c:Lkk9;


# direct methods
.method public constructor <init>(Lqi2;Ls89;Lkk9;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le39;->a:Lqi2;

    iput-object p2, p0, Le39;->b:Ls89;

    iput-object p3, p0, Le39;->c:Lkk9;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 6

    new-instance v1, Lvp2;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lc84;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Le39;->a:Lqi2;

    invoke-virtual {v0}, Lqi2;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lie7;

    iget-object v0, p0, Le39;->b:Ls89;

    invoke-virtual {v0}, Ls89;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lr89;

    iget-object p0, p0, Le39;->c:Lkk9;

    invoke-virtual {p0}, Lkk9;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Ljk9;

    new-instance v0, Ld39;

    invoke-direct/range {v0 .. v5}, Ld39;-><init>(Lhm1;Lhm1;Lie7;Lr89;Ljk9;)V

    return-object v0
.end method
