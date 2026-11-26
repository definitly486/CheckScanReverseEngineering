.class public final Lpz7;
.super Llz7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Llz7<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Ll90;


# direct methods
.method public constructor <init>(Ll90;)V
    .locals 0

    invoke-direct {p0}, Llz7;-><init>()V

    iput-object p1, p0, Lpz7;->a:Ll90;

    return-void
.end method


# virtual methods
.method public final a(Ls08;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls08<",
            "TT;>;)V"
        }
    .end annotation

    new-instance v0, Lc08;

    invoke-direct {v0, p1}, Lc08;-><init>(Ls08;)V

    invoke-interface {p1, v0}, Ls08;->a(Ldp2;)V

    :try_start_0
    iget-object p0, p0, Lpz7;->a:Ll90;

    invoke-virtual {p0, v0}, Ll90;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0, p0}, Lc08;->b(Ljava/lang/Throwable;)V

    return-void
.end method
