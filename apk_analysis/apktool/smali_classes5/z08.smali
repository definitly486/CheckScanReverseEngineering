.class public final Lz08;
.super Lmz7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz08$a;
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
.field public final b:Lmz7;

.field public final c:Lrm3$j;


# direct methods
.method public constructor <init>(Lmz7;Lrm3$j;)V
    .locals 0

    invoke-direct {p0}, Lmz7;-><init>()V

    iput-object p1, p0, Lz08;->b:Lmz7;

    iput-object p2, p0, Lz08;->c:Lrm3$j;

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

    new-instance v0, Lz08$a;

    iget-object v1, p0, Lz08;->c:Lrm3$j;

    invoke-direct {v0, p1, v1}, Lz08$a;-><init>(Lt08;Lrm3$j;)V

    iget-object p0, p0, Lz08;->b:Lmz7;

    invoke-virtual {p0, v0}, Lmz7;->d(Lt08;)V

    return-void
.end method
