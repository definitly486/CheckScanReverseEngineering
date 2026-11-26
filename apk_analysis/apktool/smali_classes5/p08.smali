.class public final Lp08;
.super Lmz7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp08$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lmz7<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final b:Lmz7;

.field public final c:Lxl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxl3<",
            "-TT;+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmz7;Lxl3;)V
    .locals 0

    invoke-direct {p0}, Lmz7;-><init>()V

    iput-object p1, p0, Lp08;->b:Lmz7;

    iput-object p2, p0, Lp08;->c:Lxl3;

    return-void
.end method


# virtual methods
.method public final h(Lt08;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt08<",
            "-TR;>;)V"
        }
    .end annotation

    new-instance v0, Lp08$a;

    iget-object v1, p0, Lp08;->c:Lxl3;

    invoke-direct {v0, p1, v1}, Lp08$a;-><init>(Lt08;Lxl3;)V

    iget-object p0, p0, Lp08;->b:Lmz7;

    invoke-virtual {p0, v0}, Lmz7;->d(Lt08;)V

    return-void
.end method
