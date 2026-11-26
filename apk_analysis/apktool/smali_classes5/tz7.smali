.class public final Ltz7;
.super Lmz7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltz7$a;
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

.field public final c:Lfv;


# direct methods
.method public constructor <init>(Lmz7;Lfv;)V
    .locals 0

    invoke-direct {p0}, Lmz7;-><init>()V

    iput-object p1, p0, Ltz7;->b:Lmz7;

    iput-object p2, p0, Ltz7;->c:Lfv;

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

    new-instance v0, Ltz7$a;

    iget-object v1, p0, Ltz7;->c:Lfv;

    invoke-direct {v0, p1, v1}, Ltz7$a;-><init>(Lt08;Lfv;)V

    iget-object p0, p0, Ltz7;->b:Lmz7;

    invoke-virtual {p0, v0}, Lmz7;->d(Lt08;)V

    return-void
.end method
