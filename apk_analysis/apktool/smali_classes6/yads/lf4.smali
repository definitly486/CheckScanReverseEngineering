.class public final Lyads/lf4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/cp2;


# instance fields
.field public final a:Lyads/nf4;

.field public final b:Lyads/o1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/e4;Lyads/bf5;Lyads/d9;)V
    .locals 6

    new-instance v5, Lyads/nf4;

    invoke-direct {v5}, Lyads/nf4;-><init>()V

    new-instance v0, Lyads/o1;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lyads/o1;-><init>(Landroid/content/Context;Lyads/e4;Lyads/bf5;Lyads/d9;Lyads/nf4;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lyads/lf4;->a:Lyads/nf4;

    iput-object v0, p0, Lyads/lf4;->b:Lyads/o1;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    iget-object p0, p0, Lyads/lf4;->a:Lyads/nf4;

    invoke-virtual {p0}, Lyads/nf4;->a()V

    return-void
.end method
