.class public final Lvr5;
.super Lmz7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvr5$a;
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
.field public final b:Ltq5;


# direct methods
.method public constructor <init>(Ltq5;)V
    .locals 0

    invoke-direct {p0}, Lmz7;-><init>()V

    iput-object p1, p0, Lvr5;->b:Ltq5;

    return-void
.end method


# virtual methods
.method public final h(Lt08;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt08<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, Lvr5$a;

    invoke-direct {v0, p1}, Lvr5$a;-><init>(Lt08;)V

    iget-object p0, p0, Lvr5;->b:Ltq5;

    invoke-virtual {p0, v0}, Ltq5;->a(Lls5;)V

    return-void
.end method
