.class public final Lph3;
.super Lmz7;
.source "SourceFile"

# interfaces
.implements Ltm3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lph3$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lmz7<",
        "TT;>;",
        "Ltm3<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Lyg3;


# direct methods
.method public constructor <init>(Lyg3;)V
    .locals 0

    invoke-direct {p0}, Lmz7;-><init>()V

    iput-object p1, p0, Lph3;->b:Lyg3;

    return-void
.end method


# virtual methods
.method public final c()Lgg3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lgg3<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Loh3;

    iget-object p0, p0, Lph3;->b:Lyg3;

    invoke-direct {v0, p0}, Loh3;-><init>(Lyg3;)V

    return-object v0
.end method

.method public final h(Lt08;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt08<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, Lph3$a;

    invoke-direct {v0, p1}, Lph3$a;-><init>(Lt08;)V

    iget-object p0, p0, Lph3;->b:Lyg3;

    invoke-virtual {p0, v0}, Lgg3;->f(Lrh3;)V

    return-void
.end method
