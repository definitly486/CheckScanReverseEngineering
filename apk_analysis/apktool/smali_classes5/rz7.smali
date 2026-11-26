.class public final Lrz7;
.super Lmz7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrz7$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lmz7<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Lc18;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc18<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:Lqp1;


# direct methods
.method public constructor <init>(Lc18;Lqp1;)V
    .locals 0

    invoke-direct {p0}, Lmz7;-><init>()V

    iput-object p1, p0, Lrz7;->b:Lc18;

    iput-object p2, p0, Lrz7;->c:Lqp1;

    return-void
.end method


# virtual methods
.method public final h(Lt08;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt08<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, Lrz7$a;

    iget-object v1, p0, Lrz7;->b:Lc18;

    invoke-direct {v0, p1, v1}, Lrz7$a;-><init>(Lt08;Lc18;)V

    iget-object p0, p0, Lrz7;->c:Lqp1;

    invoke-virtual {p0, v0}, Lqp1;->b(Lmq1;)V

    return-void
.end method
