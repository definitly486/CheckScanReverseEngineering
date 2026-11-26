.class public final Lu75;
.super Lb1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu75$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lb1<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field public final c:Lxl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxl3<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Lx75<",
            "+TT;>;>;"
        }
    .end annotation
.end field

.field public final d:Z


# direct methods
.method public constructor <init>(La75;Lxl3;)V
    .locals 0

    invoke-direct {p0, p1}, Lb1;-><init>(La75;)V

    iput-object p2, p0, Lu75;->c:Lxl3;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lu75;->d:Z

    return-void
.end method


# virtual methods
.method public final d(Lt75;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt75<",
            "-TT;>;)V"
        }
    .end annotation

    new-instance v0, Lu75$a;

    iget-object v1, p0, Lu75;->c:Lxl3;

    iget-boolean v2, p0, Lu75;->d:Z

    invoke-direct {v0, p1, v1, v2}, Lu75$a;-><init>(Lt75;Lxl3;Z)V

    iget-object p0, p0, Lb1;->b:Lx75;

    invoke-interface {p0, v0}, Lx75;->a(Lt75;)V

    return-void
.end method
