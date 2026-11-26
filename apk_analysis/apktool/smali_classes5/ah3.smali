.class public final Lah3;
.super Lgg3;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lah3$a;
    }
.end annotation

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
.field public final c:Ltq5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltq5<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ltq5;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltq5<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lgg3;-><init>()V

    iput-object p1, p0, Lah3;->c:Ltq5;

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

    new-instance v0, Lah3$a;

    invoke-direct {v0, p1}, Lah3$a;-><init>(Lwb8;)V

    iget-object p0, p0, Lah3;->c:Ltq5;

    invoke-virtual {p0, v0}, Ltq5;->a(Lls5;)V

    return-void
.end method
