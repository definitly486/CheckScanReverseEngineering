.class public final Lu08;
.super Lmz7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu08$a;
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

.field public final c:Lxl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxl3<",
            "-",
            "Ljava/lang/Throwable;",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmz7;Lxl3;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lmz7;-><init>()V

    iput-object p1, p0, Lu08;->b:Lmz7;

    iput-object p2, p0, Lu08;->c:Lxl3;

    iput-object p3, p0, Lu08;->d:Ljava/lang/Object;

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

    new-instance v0, Lu08$a;

    invoke-direct {v0, p0, p1}, Lu08$a;-><init>(Lu08;Lt08;)V

    iget-object p0, p0, Lu08;->b:Lmz7;

    invoke-virtual {p0, v0}, Lmz7;->d(Lt08;)V

    return-void
.end method
