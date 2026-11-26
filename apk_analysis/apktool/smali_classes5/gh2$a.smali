.class public final Lgh2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfy0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgh2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lfy0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Lfy0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfy0<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lfy0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lfy0<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgh2$a;->b:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lgh2$a;->c:Lfy0;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 0

    iget-object p0, p0, Lgh2$a;->c:Lfy0;

    invoke-interface {p0}, Lfy0;->cancel()V

    return-void
.end method

.method public final clone()Lfy0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lfy0<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lgh2$a;

    iget-object v1, p0, Lgh2$a;->c:Lfy0;

    invoke-interface {v1}, Lfy0;->clone()Lfy0;

    move-result-object v1

    iget-object p0, p0, Lgh2$a;->b:Ljava/util/concurrent/Executor;

    invoke-direct {v0, p0, v1}, Lgh2$a;-><init>(Ljava/util/concurrent/Executor;Lfy0;)V

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0}, Lgh2$a;->clone()Lfy0;

    move-result-object p0

    return-object p0
.end method

.method public final m()Lb37;
    .locals 0

    iget-object p0, p0, Lgh2$a;->c:Lfy0;

    invoke-interface {p0}, Lfy0;->m()Lb37;

    move-result-object p0

    return-object p0
.end method

.method public final n()Z
    .locals 0

    iget-object p0, p0, Lgh2$a;->c:Lfy0;

    invoke-interface {p0}, Lfy0;->n()Z

    move-result p0

    return p0
.end method

.method public final o(Lsy0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsy0<",
            "TT;>;)V"
        }
    .end annotation

    new-instance v0, Lgh2$a$a;

    invoke-direct {v0, p0, p1}, Lgh2$a$a;-><init>(Lgh2$a;Lsy0;)V

    iget-object p0, p0, Lgh2$a;->c:Lfy0;

    invoke-interface {p0, v0}, Lfy0;->o(Lsy0;)V

    return-void
.end method
