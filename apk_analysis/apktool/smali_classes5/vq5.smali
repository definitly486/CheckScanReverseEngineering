.class public final Lvq5;
.super Lmz7;
.source "SourceFile"

# interfaces
.implements Lvm3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvq5$a;
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
        "Lvm3<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lpr5;

.field public final c:Lrm3$g;


# direct methods
.method public constructor <init>(Lpr5;Lrm3$g;)V
    .locals 0

    invoke-direct {p0}, Lmz7;-><init>()V

    iput-object p1, p0, Lvq5;->b:Lpr5;

    iput-object p2, p0, Lvq5;->c:Lrm3$g;

    return-void
.end method


# virtual methods
.method public final a()Ltq5;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ltq5<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    new-instance v0, Luq5;

    iget-object v1, p0, Lvq5;->b:Lpr5;

    iget-object p0, p0, Lvq5;->c:Lrm3$g;

    invoke-direct {v0, v1, p0}, Luq5;-><init>(Lpr5;Lrm3$g;)V

    return-object v0
.end method

.method public final h(Lt08;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt08<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lvq5$a;

    iget-object v1, p0, Lvq5;->c:Lrm3$g;

    invoke-direct {v0, p1, v1}, Lvq5$a;-><init>(Lt08;Lrm3$g;)V

    iget-object p0, p0, Lvq5;->b:Lpr5;

    invoke-virtual {p0, v0}, Ltq5;->a(Lls5;)V

    return-void
.end method
