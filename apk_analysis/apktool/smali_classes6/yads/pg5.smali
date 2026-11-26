.class public final Lyads/pg5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/p03;


# instance fields
.field public final a:Lyads/bf5;

.field public final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/bf5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/pg5;->a:Lyads/bf5;

    invoke-static {p1}, Lyads/w60;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lyads/pg5;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(Lyads/dh;Lyads/dp;)Lyads/o03;
    .locals 2

    .line 10
    new-instance v0, Lyads/sg5;

    iget-object v1, p0, Lyads/pg5;->b:Landroid/content/Context;

    iget-object p0, p0, Lyads/pg5;->a:Lyads/bf5;

    invoke-direct {v0, v1, p1, p2, p0}, Lyads/sg5;-><init>(Landroid/content/Context;Lyads/s03;Lyads/dp;Lyads/bf5;)V

    return-object v0
.end method

.method public final a(Lyads/ea5;Lyads/dp;)Lyads/o03;
    .locals 2

    .line 11
    new-instance v0, Lyads/vg5;

    iget-object v1, p0, Lyads/pg5;->b:Landroid/content/Context;

    iget-object p0, p0, Lyads/pg5;->a:Lyads/bf5;

    invoke-direct {v0, v1, p1, p2, p0}, Lyads/vg5;-><init>(Landroid/content/Context;Lyads/ea5;Lyads/dp;Lyads/bf5;)V

    return-object v0
.end method

.method public final a(Lyads/ip3;Lyads/dp;)Lyads/o03;
    .locals 2

    new-instance v0, Lyads/sg5;

    iget-object v1, p0, Lyads/pg5;->b:Landroid/content/Context;

    iget-object p0, p0, Lyads/pg5;->a:Lyads/bf5;

    invoke-direct {v0, v1, p1, p2, p0}, Lyads/sg5;-><init>(Landroid/content/Context;Lyads/s03;Lyads/dp;Lyads/bf5;)V

    return-object v0
.end method
