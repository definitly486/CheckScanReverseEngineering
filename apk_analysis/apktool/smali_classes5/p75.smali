.class public final Lp75;
.super Lmz7;
.source "SourceFile"

# interfaces
.implements Lum3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp75$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lmz7<",
        "Ljava/lang/Boolean;",
        ">;",
        "Lum3<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lh75;


# direct methods
.method public constructor <init>(Lh75;)V
    .locals 0

    invoke-direct {p0}, Lmz7;-><init>()V

    iput-object p1, p0, Lp75;->b:Lh75;

    return-void
.end method


# virtual methods
.method public final b()Lo75;
    .locals 1

    new-instance v0, Lo75;

    iget-object p0, p0, Lp75;->b:Lh75;

    invoke-direct {v0, p0}, Lb1;-><init>(La75;)V

    return-object v0
.end method

.method public final h(Lt08;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt08<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lp75$a;

    invoke-direct {v0, p1}, Lp75$a;-><init>(Lt08;)V

    iget-object p0, p0, Lp75;->b:Lh75;

    invoke-virtual {p0, v0}, La75;->a(Lt75;)V

    return-void
.end method
