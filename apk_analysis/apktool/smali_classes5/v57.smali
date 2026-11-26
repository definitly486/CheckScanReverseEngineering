.class public final Lv57;
.super Ltq5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv57$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ltq5<",
        "Lm57;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Ltq5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltq5<",
            "La57<",
            "TT;>;>;"
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
            "La57<",
            "TT;>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ltq5;-><init>()V

    iput-object p1, p0, Lv57;->b:Ltq5;

    return-void
.end method


# virtual methods
.method public final f(Lls5;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lls5<",
            "-",
            "Lm57;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lv57$a;

    invoke-direct {v0, p1}, Lv57$a;-><init>(Lls5;)V

    iget-object p0, p0, Lv57;->b:Ltq5;

    invoke-virtual {p0, v0}, Ltq5;->a(Lls5;)V

    return-void
.end method
