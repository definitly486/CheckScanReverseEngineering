.class public final Lyads/ck4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ly22;

.field public final b:Lyads/xj4;

.field public final c:Lyads/rk4;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/bf5;Lyads/t5;Lyads/we4;Ly22;)V
    .locals 1

    new-instance v0, Lyads/xj4;

    invoke-direct {v0, p1, p5, p3, p4}, Lyads/xj4;-><init>(Landroid/content/Context;Ly22;Lyads/t5;Lyads/we4;)V

    new-instance p3, Lyads/rk4;

    check-cast p2, Lyads/do6;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lyads/ko6;

    invoke-direct {p2}, Lyads/ko6;-><init>()V

    invoke-direct {p3, p1, p2}, Lyads/rk4;-><init>(Landroid/content/Context;Lyads/ko6;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lyads/ck4;->a:Ly22;

    iput-object v0, p0, Lyads/ck4;->b:Lyads/xj4;

    iput-object p3, p0, Lyads/ck4;->c:Lyads/rk4;

    return-void
.end method
