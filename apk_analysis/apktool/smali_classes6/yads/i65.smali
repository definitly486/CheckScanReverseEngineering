.class public final Lyads/i65;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/d9;

.field public final b:Lyads/e4;

.field public final c:Ljava/util/ArrayList;

.field public final d:Lyads/ea;

.field public final e:Lyads/h65;

.field public final f:Lyads/e40;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/d9;Lyads/e4;Lyads/bf5;Lyads/ba;Ljava/util/ArrayList;)V
    .locals 7

    new-instance v0, Lyads/ea;

    invoke-direct {v0, p1, p3, p4}, Lyads/ea;-><init>(Landroid/content/Context;Lyads/e4;Lyads/bf5;)V

    new-instance v1, Lyads/h65;

    move-object v2, p1

    move-object v5, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lyads/h65;-><init>(Landroid/content/Context;Lyads/e4;Lyads/bf5;Lyads/d9;Lyads/ba;)V

    new-instance p1, Lyads/e40;

    invoke-direct {p1}, Lyads/e40;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Lyads/i65;->a:Lyads/d9;

    iput-object v3, p0, Lyads/i65;->b:Lyads/e4;

    iput-object p6, p0, Lyads/i65;->c:Ljava/util/ArrayList;

    iput-object v0, p0, Lyads/i65;->d:Lyads/ea;

    iput-object v1, p0, Lyads/i65;->e:Lyads/h65;

    iput-object p1, p0, Lyads/i65;->f:Lyads/e40;

    return-void
.end method
