.class public final Le08;
.super Lmz7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le08$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lmz7<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final b:Lmz7;

.field public final c:Lxl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lxl3<",
            "-TT;+",
            "Lc18<",
            "+TR;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmz7;Lxl3;)V
    .locals 0

    invoke-direct {p0}, Lmz7;-><init>()V

    iput-object p2, p0, Le08;->c:Lxl3;

    iput-object p1, p0, Le08;->b:Lmz7;

    return-void
.end method


# virtual methods
.method public final h(Lt08;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt08<",
            "-TR;>;)V"
        }
    .end annotation

    new-instance v0, Le08$a;

    iget-object v1, p0, Le08;->c:Lxl3;

    invoke-direct {v0, p1, v1}, Le08$a;-><init>(Lt08;Lxl3;)V

    iget-object p0, p0, Le08;->b:Lmz7;

    invoke-virtual {p0, v0}, Lmz7;->d(Lt08;)V

    return-void
.end method
