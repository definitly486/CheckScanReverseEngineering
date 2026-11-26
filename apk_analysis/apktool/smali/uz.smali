.class public final Luz;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Lru/rustore/sdk/core/exception/RuStoreException;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:La08;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La08<",
            "La64;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic g:Lru6;

.field public final synthetic h:Lr07;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr07<",
            "Landroid/content/ServiceConnection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lr07;Lru6;La08;)V
    .locals 0

    iput-object p3, p0, Luz;->f:La08;

    iput-object p2, p0, Luz;->g:Lru6;

    iput-object p1, p0, Luz;->h:Lr07;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lru/rustore/sdk/core/exception/RuStoreException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Luz;->f:La08;

    invoke-interface {v0, p1}, La08;->b(Ljava/lang/Throwable;)V

    iget-object p1, p0, Luz;->g:Lru6;

    iget-object p1, p1, Lru6;->a:Landroid/content/Context;

    iget-object p0, p0, Luz;->h:Lr07;

    iget-object p0, p0, Lr07;->b:Ljava/lang/Object;

    check-cast p0, Landroid/content/ServiceConnection;

    invoke-static {p1, p0}, Lny1;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
