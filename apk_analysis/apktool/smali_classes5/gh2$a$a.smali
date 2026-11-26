.class public final Lgh2$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsy0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgh2$a;->o(Lsy0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lsy0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lsy0;

.field public final synthetic b:Lgh2$a;


# direct methods
.method public constructor <init>(Lgh2$a;Lsy0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgh2$a$a;->b:Lgh2$a;

    iput-object p2, p0, Lgh2$a$a;->a:Lsy0;

    return-void
.end method


# virtual methods
.method public final a(Lfy0;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfy0<",
            "TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    iget-object p1, p0, Lgh2$a$a;->b:Lgh2$a;

    iget-object p1, p1, Lgh2$a;->b:Ljava/util/concurrent/Executor;

    new-instance v0, Lfh2;

    iget-object v1, p0, Lgh2$a$a;->a:Lsy0;

    invoke-direct {v0, p0, v1, p2}, Lfh2;-><init>(Lgh2$a$a;Lsy0;Ljava/lang/Throwable;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(Lfy0;La57;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfy0<",
            "TT;>;",
            "La57<",
            "TT;>;)V"
        }
    .end annotation

    iget-object p1, p0, Lgh2$a$a;->b:Lgh2$a;

    iget-object p1, p1, Lgh2$a;->b:Ljava/util/concurrent/Executor;

    new-instance v0, Leh2;

    iget-object v1, p0, Lgh2$a$a;->a:Lsy0;

    invoke-direct {v0, p0, v1, p2}, Leh2;-><init>(Lgh2$a$a;Lsy0;La57;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
