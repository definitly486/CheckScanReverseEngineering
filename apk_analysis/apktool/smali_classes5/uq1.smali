.class public final Luq1;
.super Lgg3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lgg3<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final c:Lqp1;


# direct methods
.method public constructor <init>(Lqp1;)V
    .locals 0

    invoke-direct {p0}, Lgg3;-><init>()V

    iput-object p1, p0, Luq1;->c:Lqp1;

    return-void
.end method


# virtual methods
.method public final g(Lwb8;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lwb8<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, Lxb8;

    invoke-direct {v0, p1}, Lxb8;-><init>(Lwb8;)V

    iget-object p0, p0, Luq1;->c:Lqp1;

    invoke-virtual {p0, v0}, Lqp1;->b(Lmq1;)V

    return-void
.end method
