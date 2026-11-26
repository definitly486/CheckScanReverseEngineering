.class public final Lkr5;
.super Ltq5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkr5$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ltq5<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final b:Lmg3;


# direct methods
.method public constructor <init>(Lmg3;)V
    .locals 0

    invoke-direct {p0}, Ltq5;-><init>()V

    iput-object p1, p0, Lkr5;->b:Lmg3;

    return-void
.end method


# virtual methods
.method public final f(Lls5;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lls5<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, Lkr5$a;

    invoke-direct {v0, p1}, Lkr5$a;-><init>(Lls5;)V

    iget-object p0, p0, Lkr5;->b:Lmg3;

    invoke-virtual {p0, v0}, Lgg3;->a(Lwb8;)V

    return-void
.end method
