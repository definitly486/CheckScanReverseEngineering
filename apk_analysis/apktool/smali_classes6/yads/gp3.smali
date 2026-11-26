.class public final Lyads/gp3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/y03;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lyads/bf5;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/bf5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/gp3;->a:Landroid/content/Context;

    iput-object p2, p0, Lyads/gp3;->b:Lyads/bf5;

    return-void
.end method


# virtual methods
.method public final a(Lyads/d9;Lyads/e4;Lyads/o03;)Lyads/d13;
    .locals 6

    new-instance v0, Lyads/fp3;

    iget-object v1, p0, Lyads/gp3;->a:Landroid/content/Context;

    iget-object v4, p0, Lyads/gp3;->b:Lyads/bf5;

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lyads/fp3;-><init>(Landroid/content/Context;Lyads/d9;Lyads/e4;Lyads/bf5;Lyads/o03;)V

    return-object v0
.end method
