.class public final Li18;
.super Ltq5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li18$a;
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
.field public final b:Lp08;


# direct methods
.method public constructor <init>(Lp08;)V
    .locals 0

    invoke-direct {p0}, Ltq5;-><init>()V

    iput-object p1, p0, Li18;->b:Lp08;

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

    new-instance v0, Li18$a;

    invoke-direct {v0, p1}, Lqk2;-><init>(Lls5;)V

    iget-object p0, p0, Li18;->b:Lp08;

    invoke-virtual {p0, v0}, Lmz7;->d(Lt08;)V

    return-void
.end method
