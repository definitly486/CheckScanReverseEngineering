.class public final Lyads/nc6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lyads/ol6;

.field public final c:Lyads/lc6;

.field public final d:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/e4;Lyads/t5;Lyads/bf5;Lyads/j86;Lyads/ac6;)V
    .locals 7

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Lyads/ol6;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lyads/ol6;-><init>(Landroid/content/Context;Lyads/e4;Lyads/t5;Lyads/bf5;Lyads/j86;Lyads/ac6;)V

    new-instance p1, Lyads/lc6;

    invoke-direct {p1}, Lyads/lc6;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lyads/nc6;->a:Landroid/content/Context;

    iput-object v0, p0, Lyads/nc6;->b:Lyads/ol6;

    iput-object p1, p0, Lyads/nc6;->c:Lyads/lc6;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lyads/nc6;->d:Ljava/util/ArrayList;

    return-void
.end method
