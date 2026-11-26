.class public final Ls75;
.super Lb1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls75$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lb1<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final c:Lhe7;


# direct methods
.method public constructor <init>(La75;Lhe7;)V
    .locals 0

    invoke-direct {p0, p1}, Lb1;-><init>(La75;)V

    iput-object p2, p0, Ls75;->c:Lhe7;

    return-void
.end method


# virtual methods
.method public final d(Lt75;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt75<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, Ls75$a;

    iget-object v1, p0, Ls75;->c:Lhe7;

    invoke-direct {v0, p1, v1}, Ls75$a;-><init>(Lt75;Lhe7;)V

    iget-object p0, p0, Lb1;->b:Lx75;

    invoke-interface {p0, v0}, Lx75;->a(Lt75;)V

    return-void
.end method
