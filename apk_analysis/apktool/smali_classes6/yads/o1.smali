.class public final Lyads/o1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/e4;

.field public final b:Lyads/bf5;

.field public final c:Lyads/d9;

.field public final d:Lyads/nf4;

.field public final e:Landroid/content/Context;

.field public f:Lyads/n1;

.field public g:Lyads/zh4;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/e4;Lyads/bf5;Lyads/d9;Lyads/nf4;)V
    .locals 7

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Lyads/n1;

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lyads/n1;-><init>(Landroid/content/Context;Lyads/e4;Lyads/bf5;Lyads/d9;Lyads/p1;Lyads/mt2;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lyads/o1;->a:Lyads/e4;

    iput-object v3, p0, Lyads/o1;->b:Lyads/bf5;

    iput-object v4, p0, Lyads/o1;->c:Lyads/d9;

    iput-object v5, p0, Lyads/o1;->d:Lyads/nf4;

    iput-object v1, p0, Lyads/o1;->e:Landroid/content/Context;

    iput-object v0, p0, Lyads/o1;->f:Lyads/n1;

    return-void
.end method
