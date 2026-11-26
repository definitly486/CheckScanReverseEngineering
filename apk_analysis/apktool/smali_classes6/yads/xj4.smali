.class public final Lyads/xj4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/pj4;

.field public final b:Lyads/om4;

.field public final c:Lyads/il4;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ly22;Lyads/t5;Lyads/we4;)V
    .locals 1

    new-instance v0, Lyads/pj4;

    invoke-direct {v0, p1, p2, p3}, Lyads/pj4;-><init>(Landroid/content/Context;Ly22;Lyads/t5;)V

    new-instance p1, Lyads/om4;

    invoke-direct {p1, p3}, Lyads/om4;-><init>(Lyads/t5;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/xj4;->a:Lyads/pj4;

    iput-object p1, p0, Lyads/xj4;->b:Lyads/om4;

    iget-object p1, p4, Lyads/we4;->a:Lyads/il4;

    iput-object p1, p0, Lyads/xj4;->c:Lyads/il4;

    return-void
.end method
